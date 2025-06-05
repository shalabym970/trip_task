import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (sizer) {
        return Scaffold(body: Text('hello'));
      },
    );
  }
}
