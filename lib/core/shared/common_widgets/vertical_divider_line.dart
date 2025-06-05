import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';

class VerticalDividerLine extends StatelessWidget {
  final double height;
  final Sizer sizer;

  const VerticalDividerLine({super.key, required this.height, required this.sizer});
  @override
  Widget build(BuildContext context) {


    return Container(
      height: sizer.h(height),
      width: sizer.w(1),
      color: context.textMain, // Uses your dynamic color extension
    );
  }
}
