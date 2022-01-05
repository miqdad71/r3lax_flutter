class Preferences {
  static String reviewIntro = 'onboarding';
  static String business = 'business';
  static String user = 'user';
  static String language = 'language';
  static String notification = 'notification';
  static String theme = 'theme';
  static String darkOption = 'darkOption';
  static String font = 'font';
  static String keyboardHeight = 'keyboardHeight';

  ///Singleton factory
  static final Preferences _instance = Preferences._internal();

  factory Preferences() {
    return _instance;
  }

  Preferences._internal();
}
