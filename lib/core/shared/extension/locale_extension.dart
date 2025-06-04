import 'dart:ui';

extension LocaleExtension on Locale {
  TextDirection get textDirection => TextDirection.ltr;

  bool get isRTL => textDirection == TextDirection.rtl;
}
