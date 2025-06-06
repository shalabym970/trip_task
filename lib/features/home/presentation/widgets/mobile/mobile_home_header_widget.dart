import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/common_widgets/trips_logo.dart';
import 'package:trip_task/core/shared/common_widgets/vertical_divider_line.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/features/home/presentation/managers/home_bloc.dart';
import 'package:trip_task/generated/keys.g.dart';

class MobileHomeHeaderWidget extends StatefulWidget {
  const MobileHomeHeaderWidget({super.key, required this.sizer});

  final Sizer sizer;

  @override
  State<MobileHomeHeaderWidget> createState() => _MobileHomeHeaderWidgetState();
}

class _MobileHomeHeaderWidgetState extends State<MobileHomeHeaderWidget> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.sizer.paddingSymmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AssetsManager.icons.menu.path,
                width: widget.sizer.h(24),
                height: widget.sizer.h(24),
              ),
              DynamicSpacing.of(widget.sizer).midLargeHorizontalSpace(),
              TripsLogo(
                logoHeight: widget.sizer.h(40),
                logoWidth: widget.sizer.w(82),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AssetsManager.icons.setting.path,
                width: widget.sizer.h(24),
                height: widget.sizer.h(24),
              ),
              DynamicSpacing.of(widget.sizer).semiLargeHorizontalSpace(),
              SvgPicture.asset(
                AssetsManager.icons.bell.path,
                width: widget.sizer.h(24),
                height: widget.sizer.h(24),
              ),
              DynamicSpacing.of(widget.sizer).semiLargeHorizontalSpace(),
              VerticalDividerLine(
                height: widget.sizer.h(22),
                sizer: widget.sizer,
              ),
              DynamicSpacing.of(widget.sizer).semiLargeHorizontalSpace(),
              ClipRRect(
                borderRadius: BorderRadius.circular(widget.sizer.radius(50)),
                child: Image.asset(
                  AssetsManager.images.johnPng.path,
                  height: widget.sizer.h(32),
                  width: widget.sizer.w(32),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
