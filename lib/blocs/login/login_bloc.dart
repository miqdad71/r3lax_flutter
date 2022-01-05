import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:relaxf/utils/util.dart';
import '../bloc.dart';
import '../../repository/repository.dart';
// import 'package:listar_flutter/blocs/bloc.dart';
// import 'package:listar_flutter/repository/repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final userRepository = UserRepository();

  LoginBloc() : super(InitialLoginState()) {
    on<OnLogin>((event, emit) async {
      ///Notify loading to UI
      emit(LoginLoading());

      ///Fetch login
      final user = await userRepository.login(
        username: event.username,
        password: event.password,
      );

      ///Case API fail but not have token
      UtilLogger.log("LOGIN", user);

      if (user != null) {
        ///Begin start AuthBloc Event AuthenticationSave
        AppBloc.authBloc.add(AuthenticationSave(user));

        ///Notify loading to UI
        emit(LoginSuccess());
      } else {
        ///Notify loading to UI
        emit(LoginFail('login_fail'));
      }
    });
    on<OnLogout>((event, emit) async {
      AppBloc.authBloc.add(OnClear());
    });
  }

  @override
  Stream<LoginState> mapEventToState(event) async* {
    ///Event for login
    if (event is OnLogin) {
      ///Notify loading to UI
      yield LoginLoading();

      ///Fetch login
      final user = await userRepository.login(
        username: event.username,
        password: event.password,
      );

      ///Case API fail but not have token
      if (user != null) {
        ///Begin start AuthBloc Event AuthenticationSave
        AppBloc.authBloc.add(AuthenticationSave(user));

        ///Notify loading to UI
        yield LoginSuccess();
      } else {
        ///Notify loading to UI
        yield LoginFail('login_fail');
      }
    }

    ///Event for logout
    if (event is OnLogout) {
      AppBloc.authBloc.add(OnClear());
    }
  }
}
