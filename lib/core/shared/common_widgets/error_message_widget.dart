import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';

class ErrorMessageWidget extends StatelessWidget {
  final Sizer sizer;
  final String message;

  const ErrorMessageWidget({
    super.key,
    required this.sizer,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizer.height * 0.5,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            message,
            style: const TextStyle(color: Colors.red, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
