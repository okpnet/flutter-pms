# 生産管理アプリ テーマ仕様（Flutter）

このプロジェクトのデザイントークンの正本。`styles.css`（Web プロトタイプ）と `flutter/app_theme.dart`（Flutter 実装）は同じ値を使う。新しい画面を作るときは、この値を参照し、色を直接書かない。

- ライトテーマ: ステップ1で生成した現行の配色
- ダークテーマ: ライトを基準に、コントラストを独立に調整した配色（`styles.css` の `prefers-color-scheme: dark` と同値）
- Flutter ファイル: [`flutter/app_theme.dart`](../flutter/app_theme.dart)

## カラーパレット

| トークン | 用途 | ライト | ダーク |
|---|---|---|---|
| background (`--bg`) | 画面の地 | `#F2F5F6` | `#0E171D` |
| surface (`--surface`) | カード・ナビ・シート | `#FFFFFF` | `#16232B` |
| surface2 | ホバー・進捗の背景 | `#EAF0F1` | `#1E2F39` |
| ink (`--ink`) | 本文 | `#12202A` | `#E8EFF2` |
| muted | 補助テキスト | `#4F5E69` | `#A5B4BD` |
| line | 罫線・枠 | `#D3DCE1` | `#2D4250` |
| accent (primary) | 主アクション・選択中 | `#0B6B6F` | `#5CC3C6` |
| onAccent | accent 上の文字 | `#FFFFFF` | `#062A2C` |
| accentSoft | チップ・選択中ナビの背景 | `#DCEFEF` | `#1B3F43` |
| danger | エラー・破壊的操作 | `#B3261E` | `#FF8A80` |
| seg1 | 従業員区分: 社員 | `#0B6B6F` | `#5CC3C6` |
| seg2 | 従業員区分: パート | `#3B78A8` | `#7DB4E0` |
| seg3 | 従業員区分: 派遣 | `#7B8895` | `#98A6B2` |
| focus | フォーカスリング | `#1A5FD0` | `#8AB4FF` |

## その他のトークン

| 項目 | 値 |
|---|---|
| 余白 | 4 / 8 / 12 / 16 / 24 / 32 / 48 px |
| 角丸 | 8px（ボタン・入力）、12px（カード・シート） |
| 文字サイズ | 12 / 14 / 16 / 20 / 28 px（本文は 16px 以上を基本、行高 1.6） |
| フォント | Noto Sans JP → Hiragino Sans → Yu Gothic UI → Meiryo |
| タップ領域 | 最小 44×44 |
| 動き | 180ms（小）/ 260ms（シート）。reduced-motion では無効化 |

## 設計メモ

- 区分や状態は色だけで伝えない。必ずラベルや数値を併記する（従業員バーは凡例の数値つき）。
- Flutter では、`ColorScheme` に収まらない値（surface2、muted、line、accentSoft、seg1〜3、focus）を `ThemeExtension<AppColors>` として持つ。
- 本文とその背景のコントラストは 4.5:1 以上を意図した配色。ダークは独立に調整している。
- 搭載画面: 会社情報（概要・サマリ・事業所・提供サービス／製品）、ログアウト。

## 使い方

```dart
MaterialApp(
  theme: AppTheme.light,
  darkTheme: AppTheme.dark,
  themeMode: ThemeMode.system,
);

// 独自トークン
final c = Theme.of(context).extension<AppColors>()!;
Container(color: c.accentSoft);
```

## ソース（`flutter/app_theme.dart` と同一）

```dart
// 生産管理アプリ Flutter テーマ。styles.css のデザイントークンと対応。
// 使い方: MaterialApp(theme: AppTheme.light, darkTheme: AppTheme.dark, themeMode: ThemeMode.system)
// 拡張トークンは Theme.of(context).extension<AppColors>()! で参照する。
import 'package:flutter/material.dart';

/// ColorScheme に収まらない独自トークン。
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

  final Color surface2; // 面の二段目（ホバー・進捗の背景）
  final Color muted; // 補助テキスト
  final Color line; // 罫線・枠線
  final Color accentSoft; // アクセントの淡色（チップ・選択中ナビ）
  final Color seg1; // 従業員区分: 社員
  final Color seg2; // 従業員区分: パート
  final Color seg3; // 従業員区分: 派遣
  final Color focus; // フォーカスリング

  static const light = AppColors(
    surface2: Color(0xFFEAF0F1),
    muted: Color(0xFF4F5E69),
    line: Color(0xFFD3DCE1),
    accentSoft: Color(0xFFDCEFEF),
    seg1: Color(0xFF0B6B6F),
    seg2: Color(0xFF3B78A8),
    seg3: Color(0xFF7B8895),
    focus: Color(0xFF1A5FD0),
  );

  static const dark = AppColors(
    surface2: Color(0xFF1E2F39),
    muted: Color(0xFFA5B4BD),
    line: Color(0xFF2D4250),
    accentSoft: Color(0xFF1B3F43),
    seg1: Color(0xFF5CC3C6),
    seg2: Color(0xFF7DB4E0),
    seg3: Color(0xFF98A6B2),
    focus: Color(0xFF8AB4FF),
  );

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
  }) =>
      AppColors(
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

/// 余白・角丸（styles.css の --sp-* / --radius と同値）
class AppSpacing {
  static const double s1 = 4, s2 = 8, s3 = 12, s4 = 16, s5 = 24, s6 = 32, s7 = 48;
  static const double radius = 8, radiusLg = 12;
}

class AppTheme {
  static final ThemeData light = _build(
    brightness: Brightness.light,
    background: const Color(0xFFF2F5F6),
    surface: const Color(0xFFFFFFFF),
    ink: const Color(0xFF12202A),
    accent: const Color(0xFF0B6B6F),
    onAccent: const Color(0xFFFFFFFF),
    danger: const Color(0xFFB3261E),
    colors: AppColors.light,
  );

  static final ThemeData dark = _build(
    brightness: Brightness.dark,
    background: const Color(0xFF0E171D),
    surface: const Color(0xFF16232B),
    ink: const Color(0xFFE8EFF2),
    accent: const Color(0xFF5CC3C6),
    onAccent: const Color(0xFF062A2C),
    danger: const Color(0xFFFF8A80),
    colors: AppColors.dark,
  );

  static ThemeData _build({
    required Brightness brightness,
    required Color background,
    required Color surface,
    required Color ink,
    required Color accent,
    required Color onAccent,
    required Color danger,
    required AppColors colors,
  }) {
    final scheme = ColorScheme(
      brightness: brightness,
      primary: accent,
      onPrimary: onAccent,
      primaryContainer: colors.accentSoft,
      onPrimaryContainer: accent,
      secondary: colors.seg2,
      onSecondary: onAccent,
      error: danger,
      onError: onAccent,
      surface: surface,
      onSurface: ink,
      surfaceContainerHighest: colors.surface2,
      onSurfaceVariant: colors.muted,
      outline: colors.line,
      outlineVariant: colors.line,
    );

    // 日本語優先のフォールバック。pubspec で Noto Sans JP を同梱する場合は fontFamily を指定。
    const fontFallback = ['Noto Sans JP', 'Hiragino Sans', 'Yu Gothic UI', 'Meiryo'];
    final base = Typography.material2021(platform: TargetPlatform.android)
        .black
        .apply(fontFamilyFallback: fontFallback, bodyColor: ink, displayColor: ink);

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSpacing.radius),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: background,
      extensions: [colors],
      textTheme: base.copyWith(
        headlineMedium: base.headlineMedium?.copyWith(fontSize: 28, fontWeight: FontWeight.w700, height: 1.3),
        titleLarge: base.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w700, height: 1.4),
        titleMedium: base.titleMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
        bodyLarge: base.bodyLarge?.copyWith(fontSize: 16, height: 1.6),
        bodyMedium: base.bodyMedium?.copyWith(fontSize: 14, height: 1.6),
        labelSmall: base.labelSmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w700),
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          side: BorderSide(color: colors.line),
        ),
      ),
      dividerTheme: DividerThemeData(color: colors.line, space: 1, thickness: 1),
      appBarTheme: AppBarTheme(
        backgroundColor: surface,
        foregroundColor: ink,
        elevation: 0,
        scrolledUnderElevation: 0,
        shape: Border(bottom: BorderSide(color: colors.line)),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surface,
        indicatorColor: colors.accentSoft,
        height: 64,
        iconTheme: WidgetStateProperty.resolveWith((s) =>
            IconThemeData(color: s.contains(WidgetState.selected) ? accent : colors.muted)),
        labelTextStyle: WidgetStateProperty.resolveWith((s) => TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: s.contains(WidgetState.selected) ? accent : colors.muted)),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: surface,
        indicatorColor: colors.accentSoft,
        selectedIconTheme: IconThemeData(color: accent),
        unselectedIconTheme: IconThemeData(color: colors.muted),
        selectedLabelTextStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: accent),
        unselectedLabelTextStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: colors.muted),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: colors.accentSoft,
        labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: accent),
        side: BorderSide.none,
        shape: const StadiumBorder(),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: accent,
          foregroundColor: onAccent,
          minimumSize: const Size(44, 44),
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          shape: shape,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ink,
          minimumSize: const Size(44, 44),
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          side: BorderSide(color: colors.line),
          shape: shape,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.radiusLg)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.radiusLg)),
      ),
      focusColor: colors.focus,
    );
  }
}
```
