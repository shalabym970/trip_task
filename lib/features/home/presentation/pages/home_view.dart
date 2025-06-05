import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';

import 'desktop_home_view.dart';
import 'mobile_home_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: DesktopHomeView(),
      mobile: MobileHomeView(),
      defaultWidget: MobileHomeView(), // fallback
    );
  }
}