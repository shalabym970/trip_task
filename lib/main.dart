import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/managers/localization/localization_config.dart';
import 'core/managers/router/router_config.dart';
import 'core/managers/service_locator/injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Init dependencies
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  runApp(EasyLocalization(
    supportedLocales: LocalizationConfig.supportedLocales,
    path: LocalizationConfig.translationFilePath,
    fallbackLocale: LocalizationConfig.defaultLocale,
    child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: routerConfig,
    );
  }
}
