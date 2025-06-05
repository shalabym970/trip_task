import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'core/managers/localization/localization_config.dart';
import 'core/managers/service_locator/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init dependencies
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: LocalizationConfig.supportedLocales,
      path: LocalizationConfig.translationFilePath,
      fallbackLocale: LocalizationConfig.defaultLocale,
      child: const App(),
    ),
  );
}
