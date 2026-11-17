import 'package:flutter/material.dart';

/// 読み込み中の表示の見た目。`ThemeData.extensions` に入れて差し替える。
///
/// このライブラリは `theme_lib` を知らない。テーマの側(`theme_lib` またはアプリ)が、テーマの色・形から
/// この値を作って `ThemeData.extensions` に入れる(依存の注入)。入れなければ、[fallback] の既定になる。
///
/// パターン: Strategy(見た目の決め方を、テーマの側が差し替える)
@immutable
class LoadingTheme extends ThemeExtension<LoadingTheme> {
  const LoadingTheme({
    this.color,
    this.strokeWidth = 4,
    this.size = 36,
    this.barHeight = 4,
    this.labelStyle,
  });

  /// 既定。色は null(円・バーの既定の色 = テーマの主色)。
  static const fallback = LoadingTheme();

  /// 円・バーの色。null のときはテーマの主色。
  final Color? color;

  /// 円の線の太さ。
  final double strokeWidth;

  /// 円の大きさ(縦横)。
  final double size;

  /// バーの高さ。
  final double barHeight;

  /// 文言の文字の様式。null のときはテーマの本文。
  final TextStyle? labelStyle;

  /// 現在のテーマの [LoadingTheme](無ければ [fallback])。
  static LoadingTheme of(BuildContext context) =>
      Theme.of(context).extension<LoadingTheme>() ?? fallback;

  @override
  LoadingTheme copyWith({
    Color? color,
    double? strokeWidth,
    double? size,
    double? barHeight,
    TextStyle? labelStyle,
  }) => LoadingTheme(
    color: color ?? this.color,
    strokeWidth: strokeWidth ?? this.strokeWidth,
    size: size ?? this.size,
    barHeight: barHeight ?? this.barHeight,
    labelStyle: labelStyle ?? this.labelStyle,
  );

  @override
  LoadingTheme lerp(ThemeExtension<LoadingTheme>? other, double t) {
    if (other is! LoadingTheme) return this;
    return LoadingTheme(
      color: Color.lerp(color, other.color, t),
      strokeWidth: strokeWidth + (other.strokeWidth - strokeWidth) * t,
      size: size + (other.size - size) * t,
      barHeight: barHeight + (other.barHeight - barHeight) * t,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t),
    );
  }

  /// エラー追跡用。
  Map<String, Object?> toJson() => {
    'color': color?.toARGB32(),
    'strokeWidth': strokeWidth,
    'size': size,
    'barHeight': barHeight,
  };
}
