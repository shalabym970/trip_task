import 'package:flutter/material.dart';

class DynamicColors {
  DynamicColors._internal();

  static DynamicColors colors = DynamicColors._internal();


  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF000000);
  final Color black60 = const Color(0x99000000); // 60% opacity
  final Color gray = const Color(0xFF999999);
  final Color grayDark = const Color(0xFF484848);
  final Color grayBorder = const Color(0xFFD9D9D9);
  final Color background = const Color(0xFF171717);
  final Color textMain = const Color(0xFF262626);
  final Color warning = const Color(0xFFFFC268);
  final Color warning10 = const Color(0x1AFFC268); // 10% opacity
  final Color error = const Color(0xFFC25F30);
  final Color info = const Color(0xFF33BFED);
  final Color info10 = const Color(0x1A33BFED); // 10% opacity

  // Text Styles Colors
  final Color heading = const Color(0xFF000000);
  final Color subText = const Color(0xFF999999);
  final Color link = const Color(0xFF000000);
}
