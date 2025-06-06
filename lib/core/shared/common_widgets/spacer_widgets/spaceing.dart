import 'package:flutter/material.dart';
import 'package:trip_task/core/shared/models/sizer_model.dart';

import '../../../managers/theme_manager/color_manager/dynamic_colors.dart';

/// A utility class to provide commonly used fixed-size SizedBox common_widgets for spacing.
class FixedSpacing {
  static const SizedBox smallVerticalSpace = SizedBox(height: 4.0);
  static const SizedBox mediumVerticalSpace = SizedBox(height: 8.0);
  static const SizedBox largeVerticalSpace = SizedBox(height: 16.0);
  static const SizedBox extraLargeVerticalSpace = SizedBox(height: 24.0);
  static const SizedBox extraExtraLargeVerticalSpace = SizedBox(height: 32.0);

  static const SizedBox smallHorizontalSpace = SizedBox(width: 4.0);
  static const SizedBox mediumHorizontalSpace = SizedBox(width: 8.0);
  static const SizedBox largeHorizontalSpace = SizedBox(width: 16.0);
  static const SizedBox extraLargeHorizontalSpace = SizedBox(width: 24.0);
  static const SizedBox extraExtraLargeHorizontalSpace = SizedBox(width: 32.0);

  static const SizedBox smallSpace = SizedBox(width: 4.0, height: 4.0);
  static const SizedBox mediumSpace = SizedBox(width: 8.0, height: 8.0);
  static const SizedBox largeSpace = SizedBox(width: 16.0, height: 16.0);
  static const SizedBox extraLargeSpace = SizedBox(width: 24.0, height: 24.0);
  static const SizedBox extraExtraLargeSpace = SizedBox(
    width: 32.0,
    height: 32.0,
  );
}

class DynamicSpacing extends AppSizer {
  DynamicSpacing.of(super.sizer) : super.of();

  // Dynamic vertical spacing
  SizedBox smallVerticalSpace() => SizedBox(height: sizer.h(4.0));

  SizedBox midSmallVerticalSpace() => SizedBox(width: sizer.h(6.0));

  SizedBox mediumVerticalSpace() => SizedBox(height: sizer.h(8.0));

  SizedBox semiLargeVerticalSpace() => SizedBox(height: sizer.h(12.0));
  SizedBox midLargeVerticalSpace() => SizedBox(height: sizer.h(16.0));

  SizedBox largeVerticalSpace() => SizedBox(height: sizer.h(18.0));

  SizedBox extraLargeVerticalSpace() => SizedBox(height: sizer.h(24.0));

  SizedBox extraExtraLargeVerticalSpace() => SizedBox(height: sizer.h(32.0));

  SizedBox verticalSpace40() => SizedBox(height: sizer.h(40.0));

  SizedBox verticalSpace80() => SizedBox(height: sizer.h(80.0));

  // Dynamic horizontal spacing
  SizedBox smallHorizontalSpace() => SizedBox(width: sizer.w(4.0));

  SizedBox midSmallHorizontalSpace() => SizedBox(width: sizer.w(6.0));

  SizedBox mediumHorizontalSpace() => SizedBox(width: sizer.w(8.0));

  SizedBox semiLargeHorizontalSpace() => SizedBox(width: sizer.w(12.0));

  SizedBox midLargeHorizontalSpace() => SizedBox(width: sizer.w(16.0));

  SizedBox largeHorizontalSpace() => SizedBox(width: sizer.w(14.0));

  SizedBox extraLargeHorizontalSpace() => SizedBox(width: sizer.w(24.0));

  SizedBox extraExtraLargeHorizontalSpace() => SizedBox(width: sizer.w(32.0));

  // Dynamic uniform spacing
  SizedBox smallSpace() => SizedBox(width: sizer.w(4.0), height: sizer.h(4.0));

  SizedBox mediumSpace() => SizedBox(width: sizer.w(8.0), height: sizer.h(8.0));

  SizedBox largeSpace() =>
      SizedBox(width: sizer.w(16.0), height: sizer.h(16.0));

  SizedBox extraLargeSpace() =>
      SizedBox(width: sizer.w(24.0), height: sizer.h(24.0));

  SizedBox extraExtraLargeSpace() =>
      SizedBox(width: sizer.w(32.0), height: sizer.h(32.0));

  // Custom dynamic spacing
  SizedBox customSpace(double width, double height) =>
      SizedBox(width: sizer.w(width), height: sizer.h(height));
}

class DynamicDivider extends AppSizer {
  DynamicDivider.of(super.sizer) : super.of();

  Divider greyDivider05() => Divider(
    height: sizer.h(0.5),
    thickness: sizer.h(1),
    color: DynamicColors.colors.textMain,
  );
}

class CommonBorderRadius extends AppSizer {
  CommonBorderRadius.of(super.sizer) : super.of();

  BorderRadius all4() => sizer.circularBorderRadius(4.0);
}
