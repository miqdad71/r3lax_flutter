import 'package:flutter/material.dart';
import '../configs/config.dart';
import '../models/model.dart';

enum DarkOption { dynamic, alwaysOn, alwaysOff }

class AppTheme {
  ///Optional Color
  static Color blueColor = const Color.fromRGBO(93, 173, 226, 1);
  static Color pinkColor = const Color.fromRGBO(165, 105, 189, 1);
  static Color greenColor = const Color.fromRGBO(88, 214, 141, 1);
  static Color yellowColor = const Color.fromRGBO(253, 198, 10, 1);
  static Color kashmirColor = const Color.fromRGBO(93, 109, 126, 1);

  ///Default font
  static String currentFont = "Raleway";

  ///List Font support
  static List<String> fontSupport = [
    "ProximaNova",
    "Raleway",
    "Roboto",
    "Merriweather"
  ];

  ///Default Theme
  static ThemeModel currentTheme = ThemeModel.fromJson({
    "name": "default",
    "color": const Color(0xffe5634d),
    "light": "primaryLight",
    "dark": "primaryDark",
  });

  ///List Theme Support in Application
  static List themeSupport = [
    {
      "name": "default",
      "color": const Color(0xffe5634d),
      "light": "primaryLight",
      "dark": "primaryDark",
    },
    {
      "name": "green",
      "color": const Color(0xff82B541),
      "light": "greenLight",
      "dark": "greenDark",
    },
    {
      "name": "orange",
      "color": const Color(0xfff4a261),
      "light": "orangeLight",
      "dark": "orangeDark",
    },
  ].map((item) => ThemeModel.fromJson(item)).toList();

  ///Dark Theme option
  static DarkOption darkThemeOption = DarkOption.dynamic;

  static ThemeData lightTheme = CollectionTheme.getCollectionTheme(
    theme: currentTheme.lightTheme,
  );

  static ThemeData darkTheme = CollectionTheme.getCollectionTheme(
    theme: currentTheme.darkTheme,
  );

  ///Singleton factory
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();
}
