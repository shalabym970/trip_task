import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/features/home/presentation/widgets/mobile/mobile_home_header_widget.dart';
import 'package:trip_task/features/home/presentation/widgets/mobile/mobile_items_tab_view.dart';


class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (sizer) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MobileHomeHeaderWidget(sizer: sizer),
              DynamicDivider.of(sizer).greyDivider05(),
              MobileItemsTabView(sizer: sizer),
            ],
          ),
        );
      },
    );
  }
}
