import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';

import '../../managers/assets_managers/assets.gen.dart';

class TripsLogo extends StatelessWidget {
  const TripsLogo({
    super.key,
    this.logoHeight,
    this.logoWidth,
  });

  final double? logoWidth;
  final double? logoHeight;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(builder: (sizer) {
      return SvgPicture.asset(
        AssetsManager.images.logo.path,
        width: logoWidth ?? sizer.w(200),
        height: logoHeight ?? sizer.h(37),
      );
    });
  }
}
