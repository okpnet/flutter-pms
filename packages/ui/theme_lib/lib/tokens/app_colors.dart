import 'package:flutter/material.dart';

/// `ColorScheme` に収まらない、画面案(`tools/open-design`)の独自の色。
///
/// `Theme.of(context).extension<AppColors>()!`(または [AppColors.of])で参照する。
/// [ThemeBuilder] が `ColorScheme` から作る(各色の対応は [AppColors.fromScheme])ので、
/// どのテーマでも使える。フォーカスリングだけは、テーマの色の個別指定 `focus` で変えられる。
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.surface2,
    required this.muted,
    required this.line,
    required this.accentSoft,
    required this.seg1,
    required this.seg2,
    required this.seg3,
    required this.focus,
  });

  /// [scheme] から作る。対応は、画面案のトークン名と `ColorScheme` の色。
  /// `--surface-2` = surfaceContainerHighest、`--muted` = onSurfaceVariant、`--line` = outlineVariant、
  /// `--accent-soft` = primaryContainer、`--seg-1/2/3` = primary / secondary / tertiary。
  factory AppColors.fromScheme(ColorScheme scheme, {Color? focus}) => AppColors(
    surface2: scheme.surfaceContainerHighest,
    muted: scheme.onSurfaceVariant,
    line: scheme.outlineVariant,
    accentSoft: scheme.primaryContainer,
    seg1: scheme.primary,
    seg2: scheme.secondary,
    seg3: scheme.tertiary,
    focus: focus ?? scheme.primary,
  );

  /// [ThemeData] から取得する。登録されていなければ [FlutterError]。
  static AppColors of(ThemeData theme) {
    final colors = theme.extension<AppColors>();
    if (colors == null) {
      throw FlutterError(
        'AppColors is not registered in the ThemeData. '
        'Build the theme with ThemeBuilder or add AppColors to extensions.',
      );
    }
    return colors;
  }

  /// 面の二段目(ホバー・進捗の背景)。
  final Color surface2;

  /// 補助テキスト。
  final Color muted;

  /// 罫線・枠線。
  final Color line;

  /// アクセントの淡色(チップ・選択中のナビ)。
  final Color accentSoft;

  /// 区分の色 1〜3(画面案では従業員区分: 社員・パート・派遣)。区分は色だけで伝えず、ラベルや数値を併記すること。
  final Color seg1;
  final Color seg2;
  final Color seg3;

  /// フォーカスリング。
  final Color focus;

  @override
  AppColors copyWith({
    Color? surface2,
    Color? muted,
    Color? line,
    Color? accentSoft,
    Color? seg1,
    Color? seg2,
    Color? seg3,
    Color? focus,
  }) => AppColors(
    surface2: surface2 ?? this.surface2,
    muted: muted ?? this.muted,
    line: line ?? this.line,
    accentSoft: accentSoft ?? this.accentSoft,
    seg1: seg1 ?? this.seg1,
    seg2: seg2 ?? this.seg2,
    seg3: seg3 ?? this.seg3,
    focus: focus ?? this.focus,
  );

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      surface2: Color.lerp(surface2, other.surface2, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      line: Color.lerp(line, other.line, t)!,
      accentSoft: Color.lerp(accentSoft, other.accentSoft, t)!,
      seg1: Color.lerp(seg1, other.seg1, t)!,
      seg2: Color.lerp(seg2, other.seg2, t)!,
      seg3: Color.lerp(seg3, other.seg3, t)!,
      focus: Color.lerp(focus, other.focus, t)!,
    );
  }
}
