import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trip_task/core/managers/theme_manager/text_theme/font_family.dart';
import 'package:responsive_s/src/enums/enums.dart';
import 'color_manager/dynamic_colors.dart';
import 'customizable_theme/custom_text_theme.dart';

part 'fonts.dart';

class ThemeManager {
  static ThemeData themeData(CustomTextTheme customTheme) {
    final colors = DynamicColors.colors;

    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        iconTheme: IconThemeData(color: colors.white),
        titleTextStyle: TextStyle(
          color: colors.white,
          fontFamily: FontFamily.interFamily,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      scaffoldBackgroundColor: colors.black,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: colors.black,
        onPrimary: colors.white,
        secondary: colors.warning,
        onSecondary: colors.black,
        error: colors.error,
        onError: colors.white,
        surface: colors.grayBorder,
        onSurface: colors.textMain,
      ),

      fontFamily: FontFamily.interFamily,
      textTheme: getTextTheme(customTheme, colors),
      dialogTheme: DialogThemeData(backgroundColor: colors.background),
    );
  }

  static TextTheme getTextTheme(
    CustomTextTheme customTheme,
    DynamicColors colors,
  ) => TextTheme(
    bodyLarge: customTheme.bodyLarge().copyWith(color: colors.white),
    bodyMedium: customTheme.bodyMedium().copyWith(color: colors.white),
    bodySmall: customTheme.bodySmall().copyWith(color: colors.white),
    labelSmall: customTheme.smallLabel().copyWith(color: colors.white),
    labelMedium: customTheme.labelMedium().copyWith(color: colors.white),
    labelLarge: customTheme.labelLarge().copyWith(color: colors.white),
    titleMedium: customTheme.mediumTitle().copyWith(color: colors.white),
    titleLarge: customTheme.largeTitle().copyWith(color: colors.white),
    headlineMedium: customTheme.bigTitle().copyWith(color: colors.white),
  );
}
