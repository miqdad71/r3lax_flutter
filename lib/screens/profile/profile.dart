import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../api/api.dart';
import '../../blocs/bloc.dart';
import '../../configs/config.dart';
import '../../models/model.dart';
// import '../../models/screen_models/screen_models.dart';
import '../../utils/util.dart';
import '../../widgets/widget.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  // final _bannerAd = BannerAd(
  //   adUnitId: Ads.bannerAdUnitId,
  //   size: AdSize.mediumRectangle,
  //   request: AdRequest(),
  //   listener: AdListener(
  //     onAdLoaded: (Ad ad) {},
  //     onAdFailedToLoad: (ad, error) {},
  //     onAdOpened: (Ad ad) => UtilLogger.log("DEBUGGGGG", 3),
  //     onAdClosed: (Ad ad) => UtilLogger.log("DEBUGGGGG", 4),
  //     onApplicationExit: (Ad ad) => UtilLogger.log("DEBUGGGGG", 5),
  //   ),
  // );

  // ProfilePageModel _profilePage;

  @override
  void initState() {
    super.initState();
    // _loadData();
    // _bannerAd?.load();
  }

  @override
  void dispose() {
    super.dispose();
    // _bannerAd?.dispose();
  }

  ///Fetch API
  // Future<void> _loadData() async {
  //   final ResultApiModel result = await Api.getProfile();
  //   if (result.success) {
  //     setState(() {
  //       _profilePage = ProfilePageModel.fromJson(result.data);
  //     });
  //   }
  // }

  ///On logout
  Future<void> _logout() async {
    AppBloc.loginBloc.add(OnLogout());
  }

  //Build profile UI
  Widget _buildProfile() {
    String? userstr = UtilPreferences.getString(Preferences.user);
    UserModel user = UserModel.fromJson(jsonDecode(userstr!));

    return AppUserInfo(
      // user: _profilePage?.user,
      user: user,
      onPressed: () {},
      type: AppUserType.information,
    );
  }

  ///Build value
  // Widget _buildValue() {
  //   return AppProfilePerformance(
  //     data: _profilePage?.value,
  //     onPressed: (item) {},
  //   );
  // }

  ///On navigation
  void _onNavigate(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Translate.of(context)!.translate('profile'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(
                  top: 16,
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Column(
                      children: <Widget>[
                        _buildProfile(),
                        // _buildValue(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: <Widget>[
                        AppListTitle(
                          title: Translate.of(context)!.translate(
                            'edit_profile',
                          ),
                          // trailing: RotatedBox(
                          //   quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                          //   child: Icon(
                          //     Icons.keyboard_arrow_right,
                          //     textDirection: TextDirection.ltr,
                          //   ),
                          // ),
                          // onPressed: () {
                          //   _onNavigate(Routes.editProfile);
                          // },
                        ),
                        Divider(),
                        AppListTitle(
                          title: Translate.of(context)!.translate(
                            'change_password',
                          ),
                          // trailing: RotatedBox(
                          //   quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                          //   child: Icon(
                          //     Icons.keyboard_arrow_right,
                          //     textDirection: TextDirection.ltr,
                          //   ),
                          // ),
                          // onPressed: () {
                          //   _onNavigate(Routes.changePassword);
                          // },
                        ),
                        // Divider(),
                        // AppListTitle(
                        //   title: Translate.of(context)!.translate('contact_us'),
                        //   onPressed: () {
                        //     _onNavigate(Routes.contactUs);
                        //   },
                        //   trailing: RotatedBox(
                        //     quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                        //     child: Icon(
                        //       Icons.keyboard_arrow_right,
                        //       textDirection: TextDirection.ltr,
                        //     ),
                        //   ),
                        // ),
                        // Divider(),
                        // AppListTitle(
                        //   title: Translate.of(context).translate(
                        //     'about_us',
                        //   ),
                        //   onPressed: () {
                        //     _onNavigate(Routes.aboutUs);
                        //   },
                        //   trailing: RotatedBox(
                        //     quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                        //     child: Icon(
                        //       Icons.keyboard_arrow_right,
                        //       textDirection: TextDirection.ltr,
                        //     ),
                        //   ),
                        // ),
                        // Divider(),
                        // AppListTitle(
                        //   title: Translate.of(context).translate('setting'),
                        //   onPressed: () {
                        //     _onNavigate(Routes.setting);
                        //   },
                        //   trailing: RotatedBox(
                        //     quarterTurns: UtilLanguage.isRTL() ? 2 : 0,
                        //     child: Icon(
                        //       Icons.keyboard_arrow_right,
                        //       textDirection: TextDirection.ltr,
                        //     ),
                        //   ),
                        // ),
                        // Divider(),
                        // Container(
                        //   width: _bannerAd.size.width.toDouble(),
                        //   height: _bannerAd.size.height.toDouble(),
                        //   child: AdWidget(ad: _bannerAd),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: AppButton(
                Translate.of(context)!.translate('sign_out'),
                onPressed: _logout,
              ),
            )
          ],
        ),
      ),
    );
  }
}
