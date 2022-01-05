import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../bloc.dart';
import '../../configs/config.dart';
import '../../models/model.dart';
import '../../utils/util.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final application = Application();

  ApplicationBloc() : super(InitialApplicationState()) {
    on<OnSetupApplication>((event, emit) async {
      emit(ApplicationWaiting());

      ///Firebase init
      // await Firebase.initializeApp();

      ///Ads init
      // await MobileAds.instance.initialize();

      ///Setup SharedPreferences
      Application.preferences = await SharedPreferences.getInstance();

      ///Authentication begin check
      AppBloc.authBloc.add(AuthenticationCheck());

      ///Dummy delay
      await Future.delayed(const Duration(milliseconds: 2500));

      ///First or After upgrade version show onboarding page
      final hasOnboard = UtilPreferences.containsKey(
            '${Preferences.reviewIntro}.${Application.version}',
          ) ??
          false;

      if (hasOnboard) {
        ///Show app
        emit(ApplicationSetupCompleted());
      } else {
        ///Show onboarding
        emit(ApplicationIntroView());
      }
    });

    on<OnCompletedIntro>((event, emit) async {
      await UtilPreferences.setBool(
        '${Preferences.reviewIntro}.${Application.version}',
        true,
      );
      emit(ApplicationSetupCompleted());
    });
  }

  @override
  Stream<ApplicationState> mapEventToState(event) async* {
    if (event is OnSetupApplication) {
      ///Firebase init
      // await Firebase.initializeApp();

      ///Ads init
      // await MobileAds.instance.initialize();

      ///Pending loading to UI
      yield ApplicationWaiting();

      ///Setup SharedPreferences
      Application.preferences = await SharedPreferences.getInstance();

      ///Get old Theme & Font & Language
      final oldTheme = UtilPreferences.getString(Preferences.theme);
      final oldFont = UtilPreferences.getString(Preferences.font);
      final oldLanguage = UtilPreferences.getString(Preferences.language);
      final oldDarkOption = UtilPreferences.getString(Preferences.darkOption);
      final oldBusiness = UtilPreferences.getString(Preferences.business);

      DarkOption darkOption;

      ///Setup Language
      // if (oldLanguage != null) {
      //   AppBloc.languageBloc.add(
      //     OnChangeLanguage(Locale(oldLanguage)),
      //   );
      // }

      ///Find font support available
      // final String font = AppTheme.fontSupport.firstWhere((item) {
      //   return item == oldFont;
      // }, orElse: () {
      //   return null;
      // });

      ///Find theme support available
      final ThemeModel theme = AppTheme.themeSupport.firstWhere((item) {
        return item.name == oldTheme;
      }, orElse: () {
        return null;
      });

      ///check old dark option
      // if (oldDarkOption != null) {
      //   switch (oldDarkOption) {
      //     case DARK_ALWAYS_OFF:
      //       darkOption = DarkOption.alwaysOff;
      //       break;
      //     case DARK_ALWAYS_ON:
      //       darkOption = DarkOption.alwaysOn;
      //       break;
      //     default:
      //       darkOption = DarkOption.dynamic;
      //   }
      // }

      ///Setup Theme & Font with dark Option
      // AppBloc.themeBloc.add(
      //   OnChangeTheme(
      //     theme: theme ?? AppTheme.currentTheme,
      //     font: font ?? AppTheme.currentFont,
      //     darkOption: darkOption ?? AppTheme.darkThemeOption,
      //   ),
      // );

      ///Setup Your Business
      switch (oldBusiness) {
        case 'approvalCenter':
          await AppBloc.businessCubit.onChangeBusiness(
            BusinessState.approvalCenter,
          );
          break;
        case 'attendance':
          await AppBloc.businessCubit.onChangeBusiness(
            BusinessState.attendance,
          );
          break;
        case 'dashboard':
          await AppBloc.businessCubit.onChangeBusiness(
            BusinessState.dashboard,
          );
          break;
        default:
          await AppBloc.businessCubit.onChangeBusiness(BusinessState.basic);
      }

      ///Authentication begin check
      AppBloc.authBloc.add(AuthenticationCheck());

      ///First or After upgrade version show intro preview app
      //   final hasReview = UtilPreferences.containsKey(
      //     '${Preferences.reviewIntro}.${Application.version}',
      //   );
      //   if (hasReview) {
      //     ///Become app
      //     yield ApplicationSetupCompleted();
      //   } else {
      //     ///Pending preview intro
      //     yield ApplicationIntroView();
      //   }
      // }
    }

    ///Event Completed IntroView
    if (event is OnCompletedIntro) {
      await UtilPreferences.setBool(
        '${Preferences.reviewIntro}.${Application.version}',
        true,
      );

      ///Become app
      yield ApplicationSetupCompleted();
    }
  }
}
