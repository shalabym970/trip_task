import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/enums/enums.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/extension/enum_extension.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key, required this.sizer, required this.status});

  final Sizer sizer;
  final TripStatus status;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: sizer.paddingSymmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color:
                status == TripStatus.readyForTravel
                    ? DynamicColors.colors.info
                    : status == TripStatus.pendingApproval
                    ? DynamicColors.colors.error
                    : DynamicColors.colors.warning,
            width: sizer.w(0.5),
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Text(status.toNamed(), style: FontManager.interLargeLabel400),
            if (status == TripStatus.pendingApproval ||
                status == TripStatus.proposalSent)
              Row(
                children: [
                  DynamicSpacing.of(sizer).midSmallHorizontalSpace(),

                  SvgPicture.asset(
                    AssetsManager.icons.chevronDown.path,
                    width: sizer.h(16),
                    height: sizer.h(16),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
