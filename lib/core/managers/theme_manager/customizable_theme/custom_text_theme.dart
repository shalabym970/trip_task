import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';

import '../text_theme/font_family.dart';
import '../theme_manager.dart';

class CustomTextTheme {
  CustomTextTheme({required this.sizer, required this.locale}) {
    FontFamily.switchToEnglishFont();
  }

  final Sizer sizer;
  final Locale locale;

  TextStyle largeTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.largeTitle),
  );

  TextStyle bigTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.bigTitle),
  );

  TextStyle regularTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.regularTitle),
  );

  TextStyle title() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.title),
  );

  TextStyle mediumTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.mediumTitle),
  );

  TextStyle smallTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    height: FontSize.smaleTitleHight,
    fontSize: sizer.fontSize(FontSize.smallTitle),
  );

  TextStyle tinyTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.tinyTitle),
  );

  // body
  TextStyle bodyLarge() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: sizer.fontSize(FontSize.largeBody),
  );

  TextStyle boldBodyLarge() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.largeBody),
  );

  TextStyle bodySmall() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: sizer.fontSize(FontSize.smallBody),
  );

  TextStyle bodyMedium() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: sizer.fontSize(FontSize.mediumBody),
  );

  TextStyle boldBodyMedium() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.mediumBody),
  );

  TextStyle tinyBody() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: sizer.fontSize(FontSize.tinyBody),
  );

  TextStyle labelMedium() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w400,
    fontSize: sizer.fontSize(FontSize.mediumLabel),
  );

  TextStyle labelLarge() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w500,
    fontSize: sizer.fontSize(FontSize.largeLabel),
  );

  TextStyle smallLabel() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.tiny),
  );

  TextStyle interFamilyMediumTitle() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.mediumTitle),
    letterSpacing: -0.02,
  );

  TextStyle caption1() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.inputTextField),
    letterSpacing: -0.015,
  );

  TextStyle button2() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.inputTextField),
    letterSpacing: -0.015,
  );

  TextStyle caption2() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w700,
    fontSize: sizer.fontSize(FontSize.tinyBody),
    letterSpacing: -0.015,
  );

  TextStyle semiBoldBody1() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w600,
    fontSize: sizer.fontSize(FontSize.baseSize),
  );

  TextStyle body1MediumInterFamily() => TextStyle(
    fontFamily: FontFamily.interFamily,
    fontWeight: FontWeight.w500,
    fontSize: sizer.fontSize(FontSize.baseSize),
    letterSpacing: -0.015,
    height: 1.5,
  );
}
