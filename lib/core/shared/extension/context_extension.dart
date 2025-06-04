import 'package:flutter/material.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/managers/theme_manager/text_theme/font_family.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';

extension ContextExtension on BuildContext {
  // Text Styles
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get buttonContent => Theme.of(this).textTheme.labelLarge;

  TextStyle? get titleBig => Theme.of(this).textTheme.titleLarge?.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get regularTitle => Theme.of(this).textTheme.titleLarge?.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: dynamicColors.heading,
  );

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get horizontalTabBarTitleActiveItem =>
      Theme.of(this).textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: dynamicColors.white,
      );

  TextStyle? get horizontalTabBarTitleInactiveItem =>
      Theme.of(this).textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.normal,
        color: dynamicColors.gray,
      );

  // Colors
  DynamicColors get dynamicColors => DynamicColors.colors;

  Color get primary => dynamicColors.black;
  Color get secondary => dynamicColors.warning;
  Color get background => dynamicColors.background;
  Color get error => dynamicColors.error;
  Color get info => dynamicColors.info;
  Color get white => dynamicColors.white;
  Color get black => dynamicColors.black;
  Color get gray => dynamicColors.gray;
  Color get grayDark => dynamicColors.grayDark;
  Color get grayBorder => dynamicColors.grayBorder;
  Color get warning => dynamicColors.warning;
  Color get warning10 => dynamicColors.warning10;
  Color get info10 => dynamicColors.info10;
  Color get heading => dynamicColors.heading;
  Color get subText => dynamicColors.subText;
  Color get link => dynamicColors.link;
}
