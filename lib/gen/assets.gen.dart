/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage appleLoginPng =
      AssetGenImage('assets/apple_login.png');
  static const String appleLoginSvg = 'assets/apple_login.svg';
  static const AssetGenImage bookings = AssetGenImage('assets/bookings.png');
  static const AssetGenImage bookingsHeaderPng =
      AssetGenImage('assets/bookings_header.png');
  static const String bookingsHeaderSvg = 'assets/bookings_header.svg';
  static const AssetGenImage event = AssetGenImage('assets/event.png');
  static const AssetGenImage events = AssetGenImage('assets/events.png');
  static const AssetGenImage googleLoginPng =
      AssetGenImage('assets/google_login.png');
  static const String googleLoginSvg = 'assets/google_login.svg';
  static const AssetGenImage home = AssetGenImage('assets/home.png');
  static const String logoBlue = 'assets/logo_blue.svg';
  static const AssetGenImage messages = AssetGenImage('assets/messages.png');
  static const AssetGenImage profile = AssetGenImage('assets/profile.jpg');
  static const String unithubYellow = 'assets/unithub_yellow.svg';

  /// List of all assets
  static List<dynamic> get values => [
        appleLoginPng,
        appleLoginSvg,
        bookings,
        bookingsHeaderPng,
        bookingsHeaderSvg,
        event,
        events,
        googleLoginPng,
        googleLoginSvg,
        home,
        logoBlue,
        messages,
        profile,
        unithubYellow
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

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
