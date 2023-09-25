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

  /// File path: assets/icons/ic_appbar_menu.svg
  String get icAppbarMenu => 'assets/icons/ic_appbar_menu.svg';

  /// File path: assets/icons/ic_apple.svg
  String get icApple => 'assets/icons/ic_apple.svg';

  /// File path: assets/icons/ic_back.svg
  String get icBack => 'assets/icons/ic_back.svg';

  /// File path: assets/icons/ic_cart.svg
  String get icCart => 'assets/icons/ic_cart.svg';

  /// File path: assets/icons/ic_email.svg
  String get icEmail => 'assets/icons/ic_email.svg';

  /// File path: assets/icons/ic_fb.svg
  String get icFb => 'assets/icons/ic_fb.svg';

  /// File path: assets/icons/ic_google.svg
  String get icGoogle => 'assets/icons/ic_google.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_profile.svg
  String get icProfile => 'assets/icons/ic_profile.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// List of all assets
  List<String> get values => [
        icAppbarMenu,
        icApple,
        icBack,
        icCart,
        icEmail,
        icFb,
        icGoogle,
        icHome,
        icProfile,
        icSearch
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
