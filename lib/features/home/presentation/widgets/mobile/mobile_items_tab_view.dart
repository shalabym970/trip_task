import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/assets_managers/assets.gen.dart';
import 'package:trip_task/core/managers/theme_manager/theme_manager.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import 'package:trip_task/features/home/presentation/widgets/items_list/items_list_view.dart'
    show ItemsListView;
import 'package:trip_task/generated/keys.g.dart';

class MobileItemsTabView extends StatelessWidget {
  const MobileItemsTabView({super.key, required this.sizer});

  final Sizer sizer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: sizer.paddingSymmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DynamicSpacing.of(sizer).extraLargeVerticalSpace(),
          Padding(
            padding: sizer.paddingSymmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.items.tr(),
                  style: FontManager.interRegularTitle,
                ),
                Container(
                  height: sizer.h(40),
                  width: sizer.w(40),
                  decoration: BoxDecoration(
                    color: context.background,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AssetsManager.icons.sliders.path,
                      width: sizer.h(20),
                      height: sizer.h(20),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          DynamicSpacing.of(sizer).extraLargeVerticalSpace(),
          ItemsListView(sizer: sizer),
        ],
      ),
    );
  }
}
