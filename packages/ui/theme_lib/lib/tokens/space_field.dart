import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

/// 余白の標準値を [ThemeData] に載せる拡張。
class SpaceField extends ThemeExtension<SpaceField> {
  const SpaceField({
    this.formFieldPd = 4,
    this.menuFieldPd = 8,
    this.spacing = 4,
  });

  /// [ThemeData] から取得する。登録されていなければ [FlutterError]。
  static SpaceField of(ThemeData theme) {
    final field = theme.extension<SpaceField>();
    if (field == null) {
      throw FlutterError(
        'SpaceField is not registered in the ThemeData. '
        'Build the theme with ThemeBuilder or add SpaceField to extensions.',
      );
    }
    return field;
  }

  /// フォームのパディング
  final double formFieldPd;

  /// メニューのパディング
  final double menuFieldPd;

  /// Wrap,Row,Columnのギャップ
  final double spacing;

  EdgeInsets get all => EdgeInsets.all(spacing);
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: spacing);
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: spacing);

  @override
  SpaceField copyWith({
    double? formFieldPd,
    double? menuFieldPd,
    double? spacing,
  }) => SpaceField(
    formFieldPd: formFieldPd ?? this.formFieldPd,
    menuFieldPd: menuFieldPd ?? this.menuFieldPd,
    spacing: spacing ?? this.spacing,
  );

  @override
  SpaceField lerp(SpaceField? other, double t) {
    if (other == null) return this;
    return SpaceField(
      formFieldPd: lerpDouble(formFieldPd, other.formFieldPd, t)!,
      menuFieldPd: lerpDouble(menuFieldPd, other.menuFieldPd, t)!,
      spacing: lerpDouble(spacing, other.spacing, t)!,
    );
  }

  Map<String, Object?> toJson() => {
    'formFieldPd': formFieldPd,
    'menuFieldPd': menuFieldPd,
    'spacing': spacing,
  };
}
