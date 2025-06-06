import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_s/responsive_s.dart';
import 'package:trip_task/core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'package:trip_task/core/shared/extension/context_extension.dart';
import '../../../generated/keys.g.dart';
import '../common_widgets/spacer_widgets/spaceing.dart';
import '../common_widgets/trips_logo.dart';
import 'dialog_title.dart';

class NotSuitableScreenDialog extends StatelessWidget {
  const NotSuitableScreenDialog({
    super.key,
    required this.sizer,
  });
  final Sizer sizer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: DynamicColors.colors.white,
          body: Center(
            child: Card(
              child: Container(
                height: sizer.height / 2,
                width: sizer.width / 2.5,
                padding: EdgeInsets.all(sizer.w(10)),
                decoration: BoxDecoration(
                    color: context.background,
                    borderRadius: BorderRadius.circular(sizer.radius(4))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DialogTitle(
                      title: LocaleKeys.comingSoon.tr(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: sizer.fontSize(14),
                        color: context.white
                          ), sizer: sizer,
                    ),
                    DynamicSpacing.of(sizer).largeSpace(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TripsLogo(
                            logoHeight: sizer.height / 5,
                            logoWidth: sizer.width / 6,
                          ),
                          DynamicDivider.of(sizer).greyDivider05(),
                          Text(
                            LocaleKeys.tabletSupportPhrase.tr(),
                            style: context.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: sizer.fontSize(12),
                                color: context.white

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    DynamicSpacing.of(sizer).largeSpace(),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
