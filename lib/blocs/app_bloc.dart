import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class AppBloc {
  static final businessCubit = BusinessCubit();
  static final applicationBloc = ApplicationBloc();
  // static final languageBloc = LanguageBloc();
  // static final themeBloc = ThemeBloc();
  static final authBloc = AuthBloc();
  static final loginBloc = LoginBloc();
  // static final searchBloc = SearchBloc();

  static final List<BlocProvider> providers = [
    BlocProvider<BusinessCubit>(
      create: (context) => businessCubit,
    ),
    BlocProvider<ApplicationBloc>(
      create: (context) => applicationBloc,
    ),
    // BlocProvider<LanguageBloc>(
    //   create: (context) => languageBloc,
    // ),
    // BlocProvider<ThemeBloc>(
    //   create: (context) => themeBloc,
    // ),
    BlocProvider<AuthBloc>(
      create: (context) => authBloc,
    ),
    BlocProvider<LoginBloc>(
      create: (context) => loginBloc,
    ),
    // BlocProvider<SearchBloc>(
    //   create: (context) => searchBloc,
    // ),
  ];

  static void dispose() {
    businessCubit.close();
    applicationBloc.close();
    // languageBloc.close();
    // themeBloc.close();
    authBloc.close();
    loginBloc.close();
    // searchBloc.close();
  }

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  AppBloc._internal();
}
