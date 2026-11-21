import 'package:flutter/material.dart';

/// Markdown の閲覧の見た目(文字の大きさ・色・余白の元)。
///
/// 既定は、アプリのテーマ([Theme])の文字と配色([ColorScheme])から作る([MarkdownViewTheme.of])。
/// 画面ごとに変えたい項目は [copyWith] で上書きする(色の値を直接書かず、テーマに従う)。
@immutable
class MarkdownViewTheme {
  const MarkdownViewTheme({
    required this.body,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.linkColor,
    required this.missingLinkColor,
    required this.quoteBarColor,
    required this.quoteBackground,
    required this.codeBackground,
    required this.codeFontFamily,
    required this.tableBorderColor,
    required this.tableHeaderBackground,
    required this.mutedColor,
  });

  /// 本文の文字。
  final TextStyle body;

  /// 見出し(H1・H2 は [h2]、H3 は [h3]、それ以降は [h4])。
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;

  /// リンク(あるページ・外部)の色。
  final Color linkColor;

  /// 未作成のページへのリンクの色(破線で出す)。
  final Color missingLinkColor;
  final Color quoteBarColor;
  final Color quoteBackground;
  final Color codeBackground;
  final String codeFontFamily;
  final Color tableBorderColor;
  final Color tableHeaderBackground;

  /// 空のときの文字などの控えめな色。
  final Color mutedColor;

  /// アプリのテーマから作る。
  factory MarkdownViewTheme.of(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return MarkdownViewTheme(
      body: theme.textTheme.bodyLarge!.copyWith(height: 1.7),
      h2: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
      h3: theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700),
      h4: theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700),
      linkColor: scheme.primary,
      missingLinkColor: scheme.error,
      quoteBarColor: scheme.primary,
      quoteBackground: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
      codeBackground: scheme.surfaceContainerHighest,
      codeFontFamily: 'Consolas',
      tableBorderColor: scheme.outlineVariant,
      tableHeaderBackground: scheme.surfaceContainerHighest,
      mutedColor: scheme.onSurfaceVariant,
    );
  }

  MarkdownViewTheme copyWith({
    TextStyle? body,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    Color? linkColor,
    Color? missingLinkColor,
    Color? quoteBarColor,
    Color? quoteBackground,
    Color? codeBackground,
    String? codeFontFamily,
    Color? tableBorderColor,
    Color? tableHeaderBackground,
    Color? mutedColor,
  }) => MarkdownViewTheme(
    body: body ?? this.body,
    h2: h2 ?? this.h2,
    h3: h3 ?? this.h3,
    h4: h4 ?? this.h4,
    linkColor: linkColor ?? this.linkColor,
    missingLinkColor: missingLinkColor ?? this.missingLinkColor,
    quoteBarColor: quoteBarColor ?? this.quoteBarColor,
    quoteBackground: quoteBackground ?? this.quoteBackground,
    codeBackground: codeBackground ?? this.codeBackground,
    codeFontFamily: codeFontFamily ?? this.codeFontFamily,
    tableBorderColor: tableBorderColor ?? this.tableBorderColor,
    tableHeaderBackground: tableHeaderBackground ?? this.tableHeaderBackground,
    mutedColor: mutedColor ?? this.mutedColor,
  );
}
