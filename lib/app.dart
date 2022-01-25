import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../blocs/bloc.dart';
import '../configs/config.dart';
import '../screens/screen.dart';
import '../utils/util.dart';

// import 'bottom_navigation.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final route = Routes();

  @override
  void initState() {
    super.initState();
    AppBloc.applicationBloc.add(OnSetupApplication());
  }

  @override
  void dispose() {
    AppBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: route.generateRoute,
        locale: AppLanguage.defaultLanguage,
        localizationsDelegates: const [
          Translate.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLanguage.supportLanguage,
        home: BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (context, app) {
            if (app is ApplicationSetupCompleted) {
              return BlocBuilder<AuthBloc, AuthenticationState>(
                builder: (context, auth) {
                  return auth is AuthenticationSuccess ? Home() : SignIn();
                },
              );
            }
            if (app is ApplicationIntroView) {
              return IntroPreview();
            }
            return SplashScreen();
          },
        ),
      ),
    );

    // return MultiBlocProvider(
    //   providers: AppBloc.providers,
    //   child: BlocBuilder<LanguageBloc, LanguageState>(
    //     builder: (context, lang) {
    //       return BlocBuilder<ThemeBloc, ThemeState>(
    //         builder: (context, theme) {
    //           return MaterialApp(
    //             debugShowCheckedModeBanner: false,
    //             theme: AppTheme.lightTheme,
    //             darkTheme: AppTheme.darkTheme,
    //             onGenerateRoute: route.generateRoute,
    //             locale: AppLanguage.defaultLanguage,
    //             localizationsDelegates: const [
    //               Translate.delegate,
    //               GlobalMaterialLocalizations.delegate,
    //               GlobalWidgetsLocalizations.delegate,
    //             ],
    //             supportedLocales: AppLanguage.supportLanguage,
    //             home: BlocBuilder<ApplicationBloc, ApplicationState>(
    //               builder: (context, app) {
    //                 if (app is ApplicationSetupCompleted) {
    //                   return BottomNavigation();
    //                 }
    //                 if (app is ApplicationIntroView) {
    //                   return IntroPreview();
    //                 }
    //                 return SplashScreen();
    //               },
    //             ),
    //           );
    //         },
    //       );
    //     },
    //   ),
    // );
  }
}
