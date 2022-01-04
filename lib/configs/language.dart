import 'package:flutter/material.dart';

class AppLanguage {
  ///Default Language
  static Locale defaultLanguage = const Locale("id");

  ///List Language support in Application
  static List<Locale> supportLanguage = [
    const Locale("id"),
    const Locale("en"),
  ];

  ///Singleton factory
  static final AppLanguage _instance = AppLanguage._internal();

  factory AppLanguage() {
    return _instance;
  }

  AppLanguage._internal();
}
