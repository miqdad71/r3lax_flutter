import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/bloc.dart';
import '../../configs/config.dart';
import '../../utils/util.dart';
import '../../widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  final _textIDController = TextEditingController();
  final _textPassController = TextEditingController();
  final _focusID = FocusNode();
  final _focusPass = FocusNode();

  bool _showPassword = false;
  String? _validID;
  String? _validPass;

  @override
  void initState() {
    super.initState();
    _textIDController.text = "";
    _textPassController.text = "";
  }

  ///On navigate forgot password
  void _forgotPassword() {
    Navigator.pushNamed(context, Routes.forgotPassword);
  }

  ///On login
  void _login() {
    UtilOther.hiddenKeyboard(context);
    setState(() {
      _validID = UtilValidator.validate(data: _textIDController.text);
      _validPass = UtilValidator.validate(data: _textPassController.text);
    });
    if (_validID == null && _validPass == null) {
      AppBloc.loginBloc.add(OnLogin(
        username: _textIDController.text,
        password: _textPassController.text,
      ));
    }
  }

  ///On show message fail
  Future<void> _showMessage(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Translate.of(context)!.translate('sign_in')),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message, style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
          actions: <Widget>[
            AppButton(
              Translate.of(context)!.translate('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
              type: ButtonType.text,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Translate.of(context)!.translate('sign_in'),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AppTextInput(
                  hintText: Translate.of(context)!.translate('account'),
                  errorText: _validID != null
                      ? Translate.of(context)!.translate(_validID!)
                      : _validID,
                  icon: const Icon(Icons.clear),
                  controller: _textIDController,
                  focusNode: _focusID,
                  textInputAction: TextInputAction.next,
                  onChanged: (text) {
                    setState(() {
                      _validID = UtilValidator.validate(
                        data: _textIDController.text,
                      );
                    });
                  },
                  onSubmitted: (text) {
                    UtilOther.fieldFocusChange(context, _focusID, _focusPass);
                  },
                  onTapIcon: () {
                    _textIDController.clear();
                  },
                ),
                const SizedBox(height: 8),
                AppTextInput(
                  hintText: Translate.of(context)!.translate('password'),
                  errorText: _validPass != null
                      ? Translate.of(context)!.translate(_validPass!)
                      : _validPass,
                  textInputAction: TextInputAction.done,
                  onChanged: (text) {
                    setState(() {
                      _validPass = UtilValidator.validate(
                        data: _textPassController.text,
                      );
                    });
                  },
                  onSubmitted: (text) {
                    _login();
                  },
                  onTapIcon: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  obscureText: !_showPassword,
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  controller: _textPassController,
                  focusNode: _focusPass,
                ),
                const SizedBox(height: 16),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, login) {
                    return BlocListener<LoginBloc, LoginState>(
                      listener: (context, loginListener) {
                        if (loginListener is LoginFail) {
                          _showMessage(loginListener.message);
                        }
                      },
                      child: AppButton(
                        Translate.of(context)!.translate('sign_in'),
                        onPressed: _login,
                        loading: login is LoginLoading,
                        disabled: login is LoginLoading,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AppButton(
                      Translate.of(context)!.translate('forgot_password'),
                      onPressed: _forgotPassword,
                      type: ButtonType.text,
                    ),
                    // AppButton(
                    //   Translate.of(context)!.translate('sign_up'),
                    //   onPressed: _signUp,
                    //   type: ButtonType.text,
                    // )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
