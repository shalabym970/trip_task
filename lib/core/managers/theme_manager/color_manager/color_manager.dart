
import 'package:flutter/cupertino.dart';
import 'dynamic_colors.dart';

class ColorManager extends InheritedWidget {
  ColorManager({super.key, required super.child});
  final DynamicColors dynamicColors = DynamicColors.colors;

  factory ColorManager.of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<ColorManager>(
          aspect: ColorManager) as ColorManager);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget != this;
}
