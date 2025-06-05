import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/common_widgets/trips_logo.dart';
import 'package:trip_task/core/shared/common_widgets/vertical_divider_line.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/generated/keys.g.dart';

class DesktopHomeHeaderWidget extends StatefulWidget {
  const DesktopHomeHeaderWidget({
    super.key,
    required this.sizer,
    required this.tabController,
  });

  final Sizer sizer;
  final TabController tabController;

  @override
  State<DesktopHomeHeaderWidget> createState() =>
      _DesktopHomeHeaderWidgetState();
}

class _DesktopHomeHeaderWidgetState extends State<DesktopHomeHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.sizer.paddingSymmetric(horizontal: 80, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TripsLogo(
            logoHeight: widget.sizer.h(40),
            logoWidth: widget.sizer.w(52),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: widget.sizer.w(325),
                child: TabBar(
                  controller: widget.tabController,
                  isScrollable: true,
                  labelColor: context.white,
                  unselectedLabelColor: context.gray,
                  indicatorColor: Colors.transparent,
                  indicatorWeight: 0,
                  dividerColor: context.black,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: widget.sizer.h(2),
                      color: DynamicColors.colors.warning,
                    ),
                    insets: EdgeInsets.zero,
                  ),
                  indicatorPadding: EdgeInsets.only(
                    bottom: widget.sizer.h(-16),
                  ),
                  labelStyle: FontManager.interLargeLabel,
                  tabs: [
                    Tab(text: LocaleKeys.items.tr()),
                    Tab(text: LocaleKeys.pricing.tr()),
                    Tab(text: LocaleKeys.info.tr()),
                    Tab(text: LocaleKeys.tasks.tr()),
                    Tab(text: LocaleKeys.analytics.tr()),
                  ],
                ),
              ),
              VerticalDividerLine(
                height: widget.sizer.h(22),
                sizer: widget.sizer,
              ),
              DynamicSpacing.of(widget.sizer).extraLargeHorizontalSpace(),
              SvgPicture.asset(
                AssetsManager.icons.setting.path,
                width: widget.sizer.h(24),
                height: widget.sizer.h(24),
              ),
              DynamicSpacing.of(widget.sizer).extraLargeHorizontalSpace(),
              SvgPicture.asset(
                AssetsManager.icons.bell.path,
                width: widget.sizer.h(24),
                height: widget.sizer.h(24),
              ),
              DynamicSpacing.of(widget.sizer).extraLargeHorizontalSpace(),
              VerticalDividerLine(
                height: widget.sizer.h(22),
                sizer: widget.sizer,
              ),
              DynamicSpacing.of(widget.sizer).extraLargeHorizontalSpace(),
              ClipRRect(
                borderRadius: BorderRadius.circular(widget.sizer.radius(50)),
                child: Image.asset(
                  AssetsManager.images.johnPng.path,
                  height: widget.sizer.h(32),
                  width: widget.sizer.w(32),
                ),
              ),
              DynamicSpacing.of(widget.sizer).semiLargeHorizontalSpace(),
              Text(
                "John Doe",
                style: FontManager.interbodySmall.copyWith(
                  color: context.white,
                ),
              ),
              DynamicSpacing.of(widget.sizer).smallHorizontalSpace(),
              SvgPicture.asset(
                AssetsManager.icons.chevronDown.path,
                width: widget.sizer.h(16),
                height: widget.sizer.h(16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
