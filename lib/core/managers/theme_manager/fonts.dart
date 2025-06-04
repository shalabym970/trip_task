part of 'theme_manager.dart';

class FontManager {
  FontManager._();


  static TextStyle tiny = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.tiny,
  );

  static TextStyle interTitle = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.title,
  );

  static TextStyle interBodyMedium = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.largeBody,
  );
  static TextStyle interbodySmall = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.smallBody,
  );

  static TextStyle interMediumLabel = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.mediumLabel,
  );
  static TextStyle interLargeLabel = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.largeLabel,
  );
  static TextStyle interTiny = TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.tiny,
  );
}

class FontSize {
  FontSize(this.platformType) {
    switch (platformType) {
      case ScreenType.desktop:
      case ScreenType.television:
      case ScreenType.tabletLandScape:
      case ScreenType.tabletPortrait:
        _assignTabletValues();
      case ScreenType.mobileLandscape:
      case ScreenType.mobilePortrait:
      case ScreenType.unresolvedBoundaries:
      case ScreenType.smartWatch:
        _assignMobileValues();
    }
  }

// 1
  static double largeTitle = 42;
  static double bigTitle = 32;
  static double title = 28;
  static double regularTitle = 24;
  static double mediumTitle = 20;
  static double smallTitle = 16;
  static double tinyTitle = 14;
  static double baseSize = 15;

  static double largeBody = 18;
  static double mediumBody = 16;
  static double smallBody = 14;
  static double tinyBody = 12;

  static double smallLabel = 12;
  static double mediumLabel = 12;
  static double largeLabel = 14;
  static double tiny = 10;

  static double inputTextField = 13;
  static double smaleTitleHight = 1.5;
  final ScreenType platformType;

  static void _assignMobileValues() {
    largeTitle = 20;
    bigTitle = 18;
    title = 16;
    mediumTitle = 14;
    smallTitle = 12;
    tinyTitle = 10;

    largeBody = 16;
    mediumBody = 14;
    smallBody = 12;
    tinyBody = 10;

    smallLabel = 12;
    mediumLabel = 12;
    largeLabel = 14;
    tiny = 10;

    inputTextField = 13;
  }

  static void _assignTabletValues() {
    largeTitle = 42;
    bigTitle = 32;
    title = 28;
    mediumTitle = 20;
    smallTitle = 16;
    tinyTitle = 14;

    largeBody = 18;
    mediumBody = 16;
    smallBody = 14;
    tinyBody = 12;

    smallLabel = 12;
    mediumLabel = 12;
    largeLabel = 14;
    tiny = 10;

    inputTextField = 13;
  }
}
