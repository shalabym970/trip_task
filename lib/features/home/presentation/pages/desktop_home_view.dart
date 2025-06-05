import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/shared/common_widgets/spacer_widgets/spaceing.dart';
import 'package:trip_task/features/home/presentation/widgets/desktop/desktop_home_header_widget.dart';


class DesktopHomeView extends StatefulWidget {
  const DesktopHomeView({super.key});

  @override
  State<DesktopHomeView> createState() => _DesktopHomeViewState();
}

class _DesktopHomeViewState extends State<DesktopHomeView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (sizer) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DesktopHomeHeaderWidget(
                sizer: sizer,
                tabController: tabController,
              ),
              DynamicDivider.of(sizer).greyDivider05(),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Center(
                      child: Text(
                        "Items",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox.shrink(),
                    SizedBox.shrink(),
                    SizedBox.shrink(),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
