// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "tabletSupportPhrase": "Tablet & Mobile version will be coming soon please access from your laptop or desktop",
  "comingSoon": "Coming soon",
  "items": "Items",
  "pricing": "Pricing",
  "info": "Info",
  "tasks": "Tasks",
  "analytics": "Analytics",
  "addNewItem": "Add a New Item",
  "unfinishedTasks": "unfinished tasks",
  "unknownError": "An unknown error occurred. Please try again."
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en};
}
