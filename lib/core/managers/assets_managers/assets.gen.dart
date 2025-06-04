/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Icons.svg
  SvgGenImage get icons => const SvgGenImage('assets/icons/Icons.svg');

  /// File path: assets/icons/chevron-down.svg
  SvgGenImage get chevronDown =>
      const SvgGenImage('assets/icons/chevron-down.svg');

  /// File path: assets/icons/more-Horizontal.svg
  SvgGenImage get moreHorizontal =>
      const SvgGenImage('assets/icons/more-Horizontal.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/setting-2.svg
  SvgGenImage get setting2 => const SvgGenImage('assets/icons/setting-2.svg');

  /// File path: assets/icons/sliders.svg
  SvgGenImage get sliders => const SvgGenImage('assets/icons/sliders.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    icons,
    chevronDown,
    moreHorizontal,
    plus,
    setting2,
    sliders,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Header.svg
  SvgGenImage get header => const SvgGenImage('assets/images/Header.svg');

  /// List of all assets
  List<SvgGenImage> get values => [header];
}

class $AssetsMockDataGen {
  const $AssetsMockDataGen();

  /// File path: assets/mock_data/trips_mock.json
  String get tripsMock => 'assets/mock_data/trips_mock.json';

  /// List of all assets
  List<String> get values => [tripsMock];
}

class $AssetsTranslationGen {
  const $AssetsTranslationGen();

  /// File path: assets/translation/en.json
  String get english => 'assets/translation/en.json';

  /// List of all assets
  List<String> get values => [english];
}

class AssetsManager {
  const AssetsManager._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMockDataGen mockData = $AssetsMockDataGen();
  static const $AssetsTranslationGen translation = $AssetsTranslationGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
