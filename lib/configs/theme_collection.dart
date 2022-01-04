import 'package:flutter/material.dart';

class CollectionTheme {
  ///Get collection theme
  /// primaryLight/primaryDark...
  static ThemeData getCollectionTheme({
    String theme = "primaryLight",
    String font = "Raleway",
  }) {
    ColorScheme colorScheme;
    switch (theme) {
      case "primaryLight":
        colorScheme = ColorScheme.light(
          primary: Color(0xffe5634d),
          primaryVariant: Color(0xffad3324),
          secondary: Color(0xff4a91a4),
          secondaryVariant: Color(0xff0d6375),
          surface: Color(0xfff2f2f2),
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        );
        break;
      case "primaryDark":
        colorScheme = ColorScheme.dark(
          primary: Color(0xffe5634d),
          primaryVariant: Color(0xffad3324),
          secondary: Color(0xff4a91a4),
          secondaryVariant: Color(0xff0d6375),
          surface: Color(0xff121212),
          background: Color(0xff010101),
          error: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
          brightness: Brightness.dark,
        );
        break;
      case "greenLight":
        colorScheme = ColorScheme.light(
          primary: Color(0xff82B541),
          primaryVariant: Color(0xff51850a),
          secondary: Color(0xffff8a65),
          secondaryVariant: Color(0xffc75b39),
          surface: Color(0xfff2f2f2),
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        );
        break;
      case "greenDark":
        colorScheme = ColorScheme.dark(
          primary: Color(0xff82B541),
          primaryVariant: Color(0xff51850a),
          secondary: Color(0xffff8a65),
          secondaryVariant: Color(0xffc75b39),
          surface: Color(0xff121212),
          background: Color(0xff010101),
          error: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
          brightness: Brightness.dark,
        );
        break;
      case "orangeLight":
        colorScheme = ColorScheme.light(
          primary: Color(0xfff4a261),
          primaryVariant: Color(0xffe76f51),
          secondary: Color(0xff2A9D8F),
          secondaryVariant: Color(0xff264653),
          surface: Color(0xfff2f2f2),
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        );
        break;
      case "orangeDark":
        colorScheme = ColorScheme.dark(
          primary: Color(0xfff4a261),
          primaryVariant: Color(0xffe76f51),
          secondary: Color(0xff2A9D8F),
          secondaryVariant: Color(0xff264653),
          surface: Color(0xff121212),
          background: Color(0xff010101),
          error: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
          brightness: Brightness.dark,
        );
        break;
      default:
        colorScheme = ColorScheme.light(
          primary: Color(0xffe5634d),
          primaryVariant: Color(0xffad3324),
          secondary: Color(0xff4a91a4),
          secondaryVariant: Color(0xff0d6375),
          surface: Color(0xfff2f2f2),
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        );
        break;
    }

    final dark = colorScheme.brightness == Brightness.dark;
    final primaryColor = dark ? colorScheme.surface : colorScheme.primary;
    final indicatorColor = dark ? colorScheme.onSurface : colorScheme.onPrimary;

    return ThemeData(
      brightness: colorScheme.brightness,
      primaryColor: colorScheme.primary,
      primaryColorBrightness: ThemeData.estimateBrightnessForColor(
        primaryColor,
      ),
      appBarTheme: AppBarTheme(color: primaryColor),
      canvasColor: colorScheme.background,
      accentColor: colorScheme.secondary,
      accentColorBrightness: ThemeData.estimateBrightnessForColor(
        colorScheme.secondary,
      ),
      scaffoldBackgroundColor: colorScheme.background,
      bottomAppBarColor: colorScheme.surface,
      cardColor: colorScheme.surface,
      dividerColor: colorScheme.onSurface.withOpacity(0.12),
      backgroundColor: colorScheme.background,
      dialogBackgroundColor: colorScheme.background,
      errorColor: colorScheme.error,
      indicatorColor: indicatorColor,
      applyElevationOverlayColor: dark,
      colorScheme: colorScheme,

      ///Custom
      fontFamily: font,
      dialogTheme: DialogTheme(backgroundColor: colorScheme.surface),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.surface,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
          bottom: 8,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: colorScheme.primary,
        showUnselectedLabels: true,
      ),
      dividerTheme: DividerThemeData(
        space: 0,
        thickness: 0.75,
      ),
    );
  }

  ///Singleton factory
  static final CollectionTheme _instance = CollectionTheme._internal();

  factory CollectionTheme() {
    return _instance;
  }

  CollectionTheme._internal();
}
