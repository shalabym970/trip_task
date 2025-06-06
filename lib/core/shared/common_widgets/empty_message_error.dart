import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';

class EmptyMessageWidget extends StatelessWidget {
  final Sizer sizer;

  const EmptyMessageWidget({super.key, required this.sizer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizer.height * 0.5,
      child: Center(
        child: Text(
          'No trips available.',
          style: FontManager.interRegularTitle,
        ),
      ),
    );
  }
}
