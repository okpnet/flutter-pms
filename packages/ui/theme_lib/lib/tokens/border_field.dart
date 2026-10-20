import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

/// 角丸と線幅の標準値を [ThemeData] に載せる拡張。
class BorderField extends ThemeExtension<BorderField> {
  const BorderField({
    this.radius = 3,
    this.fullRadius = 32,
    this.borderWidth = 0.8,
    this.activeBorderWidth = 1,
  });

  /// [ThemeData] から取得する。登録されていなければ [FlutterError]。
  static BorderField of(ThemeData theme) {
    final field = theme.extension<BorderField>();
    if (field == null) {
      throw FlutterError(
        'BorderField is not registered in the ThemeData. '
        'Build the theme with ThemeBuilder or add BorderField to extensions.',
      );
    }
    return field;
  }

  /// 標準の角丸
  final double radius;

  /// 検索窓などの完全に丸い角丸
  final double fullRadius;

  /// 通常時の線幅
  final double borderWidth;

  /// フォーカス時などの線幅
  final double activeBorderWidth;

  BorderRadius get edgeBorderRadius => BorderRadius.circular(radius);
  BorderRadius get fullBorderRadius => BorderRadius.circular(fullRadius);

  @override
  BorderField copyWith({
    double? radius,
    double? fullRadius,
    double? borderWidth,
    double? activeBorderWidth,
  }) => BorderField(
    radius: radius ?? this.radius,
    fullRadius: fullRadius ?? this.fullRadius,
    borderWidth: borderWidth ?? this.borderWidth,
    activeBorderWidth: activeBorderWidth ?? this.activeBorderWidth,
  );

  @override
  BorderField lerp(BorderField? other, double t) {
    if (other == null) return this;
    return BorderField(
      radius: lerpDouble(radius, other.radius, t)!,
      fullRadius: lerpDouble(fullRadius, other.fullRadius, t)!,
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t)!,
      activeBorderWidth: lerpDouble(
        activeBorderWidth,
        other.activeBorderWidth,
        t,
      )!,
    );
  }

  Map<String, Object?> toJson() => {
    'radius': radius,
    'fullRadius': fullRadius,
    'borderWidth': borderWidth,
    'activeBorderWidth': activeBorderWidth,
  };
}
