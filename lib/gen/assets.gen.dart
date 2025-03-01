/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/box_icon.svg
  AssetGenImage get boxIcon => const AssetGenImage('../assets/icons/box_icon.png');

  AssetGenImage get warningIcon =>
      const AssetGenImage('../assets/icons/warning_icon.png');

      AssetGenImage get clockIcon =>
      const AssetGenImage('../assets/icons/clock.png');

  /// File path: assets/icons/diog_icon.svg
  AssetGenImage get diogIcon =>
      const AssetGenImage('../assets/icons/diog_icon.png');

  /// File path: assets/icons/graph_icon.svg
  AssetGenImage get graphIcon =>
      const AssetGenImage('../assets/icons/graph_icon.png');

  /// File path: assets/icons/home_icon.svg
  AssetGenImage get homeIcon =>
      const AssetGenImage('../assets/icons/home_icon.png');

  /// File path: assets/icons/tab_icon.svg
  AssetGenImage get tabIcon => const AssetGenImage('../assets/icons/tab_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    boxIcon,
    diogIcon,
    graphIcon,
    homeIcon,
    tabIcon,
  ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/it4gaz_logo.jpg
  AssetGenImage get it4gazLogo =>
      const AssetGenImage('assets/logo/it4gaz_logo.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [it4gazLogo];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
