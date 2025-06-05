import 'dart:ui';

class LocalizationConfig {
  static List<String> supportedLanguages = ['en'];
  static  List<Locale> supportedLocales =
      supportedLanguages.map((lang) => Locale(lang)).toList();


  static String translationFilePath = 'assets/translation';

  static Locale defaultLocale = supportedLocales[0];
}
