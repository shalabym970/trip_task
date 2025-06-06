import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';

class LoadingIndicator extends StatelessWidget {
  final Sizer sizer;

  const LoadingIndicator({super.key, required this.sizer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizer.height * 0.5,
      child: Center(
        child: CircularProgressIndicator(color: context.warning),
      ),
    );
  }
}
