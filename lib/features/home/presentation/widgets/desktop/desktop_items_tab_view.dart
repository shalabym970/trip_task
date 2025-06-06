import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/common_widgets/vertical_divider_line.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/features/home/presentation/widgets/items_list/items_list_view.dart'
    show ItemsListView;
import 'package:trip_task/generated/keys.g.dart';

class DesktopItemsTabView extends StatelessWidget {
  const DesktopItemsTabView({super.key, required this.sizer});

  final Sizer sizer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: sizer.paddingSymmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DynamicSpacing.of(sizer).verticalSpace40(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.items.tr(), style: FontManager.interBigTitle),
              Row(
                children: [
                  Container(
                    height: sizer.h(48),
                    width: sizer.w(48),
                    decoration: BoxDecoration(
                      color: context.background,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AssetsManager.icons.sliders.path,
                        width: sizer.h(24),
                        height: sizer.h(24),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  DynamicSpacing.of(sizer).largeHorizontalSpace(),
                  VerticalDividerLine(height: sizer.h(48), sizer: sizer),
                  DynamicSpacing.of(sizer).largeHorizontalSpace(),
                  Container(
                    height: sizer.h(48),
                    width: sizer.w(177),
                    decoration: BoxDecoration(
                      color: context.warning,
                      borderRadius: BorderRadius.circular(sizer.radius(100)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AssetsManager.icons.plus.path,
                            width: sizer.h(20),
                            height: sizer.h(20),
                            fit: BoxFit.contain,
                          ),
                          DynamicSpacing.of(sizer).mediumHorizontalSpace(),
                          Text(
                            LocaleKeys.addNewItem.tr(),
                            style: FontManager.interLargeLabel.copyWith(
                              color: context.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          DynamicSpacing.of(sizer).verticalSpace40(),
          ItemsListView(sizer: sizer),
        ],
      ),
    );
  }
}
