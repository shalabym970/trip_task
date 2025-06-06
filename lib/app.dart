import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:responsive_s/responsive_s.dart';
import 'config/design/frame_constant.dart';
import 'core/managers/router/router_config.dart';
import 'core/managers/service_locator/injection.dart';
import 'core/managers/theme_manager/color_manager/color_manager.dart';
import 'core/managers/theme_manager/color_manager/dynamic_colors.dart';
import 'core/managers/theme_manager/customizable_theme/custom_text_theme.dart';
import 'core/managers/theme_manager/theme_manager.dart';
import 'core/shared/dialogs/not_suitable_screen_dialog.dart';
import 'features/home/presentation/managers/home_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorManager(
      child: ResponsiveWrapper(
        frame: const Frame(
          desktopFrame: AppFrameConstant.desktop,
          tabletPortraitFrame: AppFrameConstant.tablet,
          mobilePortraitFrame: AppFrameConstant.mobile,
        ),
        child: ResponsiveWidget(
          builder: (sizer) {
            final screenSize = window.physicalSize / window.devicePixelRatio;

            final isDesktopLike = screenSize.width >= AppFrameConstant.desktop.width;
            final isMobileLike = screenSize.width <= AppFrameConstant.mobile.width;


            return MultiBlocProvider(
              providers: [BlocProvider(create: (context) => getIt<HomeBloc>())],
              child: Builder(
                builder: (context) {
                  if (!isDesktopLike && !isMobileLike) {
                    return NotSuitableScreenDialog(sizer: sizer);
                  }
                  return GlobalLoaderOverlay(
                    useDefaultLoading: false,
                    overlayWidgetBuilder: (_) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: DynamicColors.colors.warning,
                        ),
                      );
                    },
                    child: MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      title: 'Trips',
                      theme: ThemeManager.themeData(
                        CustomTextTheme(sizer: sizer),
                      ),
                      routerConfig: routerConfig,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

//&& !sizer.isMobile
