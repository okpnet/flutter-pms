import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown_ast/markdown_ast.dart';

import 'markdown_view_theme.dart';

/// ページへのリンク(`[[ページ名]]`)の行き先の状態。画面(アプリ)が、ページ名から決めて返す。
class WikiLinkTarget {
  /// あるページ。[onTap] があれば、押して開く。
  const WikiLinkTarget.found({this.onTap}) : exists = true;

  /// 無いページ(赤い破線で示す)。[onTap] があれば、押して作成へ進む。無ければ押せない。
  const WikiLinkTarget.missing({this.onTap}) : exists = false;

  final bool exists;
  final VoidCallback? onTap;
}

typedef WikiLinkResolver = WikiLinkTarget Function(String target);

/// Markdown(本文)を、テーマに沿った画面の部品にして出す(閲覧)。HTML は解釈しない(文字として出す)。
///
/// - ページへのリンクは、[wikiLinkResolver] が行き先を返す(無いときは、すべて「あるページ」で押せない)。
/// - 外部リンクは文字だけを出し([onExternalLink] があれば押せる)、この部品からは開かない。
/// - [headingKeys] を渡すと、見出し(通し番号)に GlobalKey を付ける(ページの目次からのスクロール用)。
/// - 見た目は [theme](省略はアプリのテーマから)。
///
/// パターン: Interpreter(構文木 → 部品)
class MarkdownView extends StatefulWidget {
  const MarkdownView({
    super.key,
    required this.markdown,
    this.theme,
    this.wikiLinkResolver,
    this.onExternalLink,
    this.headingKeys,
    this.emptyText = '',
  });

  final String markdown;
  final MarkdownViewTheme? theme;
  final WikiLinkResolver? wikiLinkResolver;
  final void Function(String url)? onExternalLink;
  final Map<int, GlobalKey>? headingKeys;
  final String emptyText;

  @override
  State<MarkdownView> createState() => _MarkdownViewState();
}

class _MarkdownViewState extends State<MarkdownView> {
  final _recognizers = <TapGestureRecognizer>[];

  void _disposeRecognizers() {
    for (final r in _recognizers) {
      r.dispose();
    }
    _recognizers.clear();
  }

  @override
  void dispose() {
    _disposeRecognizers();
    super.dispose();
  }

  TapGestureRecognizer _tap(VoidCallback f) {
    final r = TapGestureRecognizer()..onTap = f;
    _recognizers.add(r);
    return r;
  }

  List<InlineSpan> _spans(MarkdownViewTheme t, String text, TextStyle base, {bool bold = false}) {
    final out = <InlineSpan>[];
    void walk(List<MdInline> list, TextStyle style) {
      for (final n in list) {
        switch (n) {
          case MdText(:final text):
            out.add(TextSpan(text: text, style: style));
          case MdBold(:final children):
            walk(children, style.copyWith(fontWeight: FontWeight.w700));
          case MdItalic(:final children):
            walk(children, style.copyWith(fontStyle: FontStyle.italic));
          case MdInlineCode(:final text):
            out.add(
              TextSpan(
                text: text,
                style: style.copyWith(
                  fontFamily: t.codeFontFamily,
                  fontFamilyFallback: const ['monospace'],
                  backgroundColor: t.codeBackground,
                ),
              ),
            );
          case MdExternalLink(:final url, :final label):
            out.add(
              TextSpan(
                text: label,
                style: style.copyWith(color: t.linkColor, decoration: TextDecoration.underline),
                recognizer: widget.onExternalLink == null ? null : _tap(() => widget.onExternalLink!(url)),
              ),
            );
          case MdWikiLink(:final target, :final label):
            final resolved = widget.wikiLinkResolver?.call(target) ?? const WikiLinkTarget.found();
            if (resolved.exists) {
              out.add(
                TextSpan(
                  text: label,
                  style: style.copyWith(color: t.linkColor, decoration: TextDecoration.underline),
                  recognizer: resolved.onTap == null ? null : _tap(resolved.onTap!),
                ),
              );
            } else {
              // 未作成のページ: 破線
              out.add(
                TextSpan(
                  text: label,
                  style: style.copyWith(
                    color: t.missingLinkColor,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationColor: t.missingLinkColor,
                  ),
                  recognizer: resolved.onTap == null ? null : _tap(resolved.onTap!),
                ),
              );
            }
        }
      }
    }

    walk(MarkdownParser.inlines(text), bold ? base.copyWith(fontWeight: FontWeight.w700) : base);
    return out;
  }

  @override
  Widget build(BuildContext context) {
    _disposeRecognizers(); // 再構築のたびに作り直す
    final t = widget.theme ?? MarkdownViewTheme.of(context);
    final body = t.body;
    final blocks = MarkdownParser.parse(widget.markdown);
    if (blocks.isEmpty) {
      return Text(widget.emptyText, style: body.copyWith(color: t.mutedColor));
    }
    Widget rich(String text, TextStyle style, {bool bold = false}) =>
        Text.rich(TextSpan(children: _spans(t, text, style, bold: bold)));

    var headingIndex = 0;
    final children = <Widget>[];
    for (final b in blocks) {
      switch (b) {
        case MdHeading(:final level, :final text):
          final index = headingIndex++;
          final style = switch (level) {
            1 || 2 => t.h2,
            3 => t.h3,
            _ => t.h4,
          };
          children.add(
            Padding(
              key: widget.headingKeys?[index],
              padding: EdgeInsets.only(top: level <= 2 ? 20 : 12, bottom: 6),
              child: rich(text, style),
            ),
          );
        case MdParagraph(:final text):
          children.add(Padding(padding: const EdgeInsets.symmetric(vertical: 6), child: rich(text, body)));
        case MdList(:final items, :final ordered):
          children.add(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < items.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 28, child: Text(ordered ? '${i + 1}.' : '•', style: body)),
                          Expanded(child: rich(items[i], body)),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        case MdQuote(:final text):
          children.add(
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.fromLTRB(14, 8, 12, 8),
              decoration: BoxDecoration(
                color: t.quoteBackground,
                border: Border(left: BorderSide(color: t.quoteBarColor, width: 3)),
              ),
              child: rich(text, body),
            ),
          );
        case MdCode(:final text):
          children.add(
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: t.codeBackground, borderRadius: BorderRadius.circular(6)),
              child: SelectableText(
                text,
                style: body.copyWith(fontFamily: t.codeFontFamily, fontFamilyFallback: const ['monospace'], height: 1.4),
              ),
            ),
          );
        case MdTable(:final header, :final rows):
          Widget cell(String text, {bool bold = false}) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: rich(text, body, bold: bold),
          );
          children.add(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Table(
                  defaultColumnWidth: const IntrinsicColumnWidth(),
                  border: TableBorder.all(color: t.tableBorderColor),
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: t.tableHeaderBackground),
                      children: [for (final h in header) cell(h, bold: true)],
                    ),
                    for (final r in rows)
                      TableRow(children: [for (var c = 0; c < header.length; c++) cell(c < r.length ? r[c] : '')]),
                  ],
                ),
              ),
            ),
          );
        case MdRule():
          children.add(const Divider(height: 24));
      }
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: children);
  }
}
