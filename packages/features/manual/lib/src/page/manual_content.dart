import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../model/manual_markdown.dart';
import '../model/manual_wiki.dart';

/// Markdown(本文)を画面の部品にして出す。HTML は解釈しない(文字として出す)。
///
/// - ページへのリンク(`[[ページ名]]`)は、あるページなら押して開き、無いページは赤い破線で示す
///   ([onMissing] があれば、押して作成へ進む。無ければ押せない)。
/// - 外部リンクは文字だけを出し([onExternal] があれば押せる)、アプリからは開かない。
/// - [headingKeys] を渡すと、H2・H3 の見出しに GlobalKey を付ける(このページの目次からのスクロール用)。
///
/// パターン: Interpreter(構文木 → 部品)
class ManualContent extends StatefulWidget {
  const ManualContent({
    super.key,
    required this.md,
    required this.wiki,
    this.onOpen,
    this.onMissing,
    this.onExternal,
    this.headingKeys,
    this.emptyText = '',
  });

  final String md;
  final ManualWiki wiki;
  final void Function(String pageId)? onOpen;
  final void Function(String title)? onMissing;
  final void Function(String url)? onExternal;
  final Map<int, GlobalKey>? headingKeys;
  final String emptyText;

  @override
  State<ManualContent> createState() => _ManualContentState();
}

class _ManualContentState extends State<ManualContent> {
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

  List<InlineSpan> _spans(
    BuildContext context,
    String text,
    TextStyle base, {
    bool bold = false,
    bool italic = false,
  }) {
    final scheme = Theme.of(context).colorScheme;
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
                  fontFamily: 'Consolas',
                  fontFamilyFallback: const ['monospace'],
                  backgroundColor: scheme.surfaceContainerHighest,
                ),
              ),
            );
          case MdExternalLink(:final url, :final label):
            out.add(
              TextSpan(
                text: label,
                style: style.copyWith(
                  color: scheme.primary,
                  decoration: TextDecoration.underline,
                ),
                recognizer: widget.onExternal == null
                    ? null
                    : _tap(() => widget.onExternal!(url)),
              ),
            );
          case MdWikiLink(:final target, :final label):
            final page = widget.wiki.byTitle(target);
            if (page != null) {
              out.add(
                TextSpan(
                  text: label,
                  style: style.copyWith(
                    color: scheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: widget.onOpen == null
                      ? null
                      : _tap(() => widget.onOpen!(page.id)),
                ),
              );
            } else {
              // 未作成のページ: 赤い破線
              out.add(
                TextSpan(
                  text: label,
                  style: style.copyWith(
                    color: scheme.error,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationColor: scheme.error,
                  ),
                  recognizer: widget.onMissing == null
                      ? null
                      : _tap(() => widget.onMissing!(target)),
                ),
              );
            }
        }
      }
    }

    walk(
      ManualMarkdown.inlines(text),
      base.copyWith(
        fontWeight: bold ? FontWeight.w700 : null,
        fontStyle: italic ? FontStyle.italic : null,
      ),
    );
    return out;
  }

  @override
  Widget build(BuildContext context) {
    _disposeRecognizers(); // 再構築のたびに作り直す
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final body = theme.textTheme.bodyLarge!.copyWith(height: 1.7);
    final blocks = ManualMarkdown.parse(widget.md);
    if (blocks.isEmpty) {
      return Text(
        widget.emptyText,
        style: body.copyWith(color: scheme.onSurfaceVariant),
      );
    }
    var headingIndex = 0;
    final children = <Widget>[];
    for (final b in blocks) {
      switch (b) {
        case MdHeading(:final level, :final text):
          final index = headingIndex++;
          final style = switch (level) {
            1 || 2 => theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
            ),
            3 => theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
            _ => theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          };
          children.add(
            Padding(
              key: widget.headingKeys?[index],
              padding: EdgeInsets.only(top: level <= 2 ? 20 : 12, bottom: 6),
              child: Text.rich(TextSpan(children: _spans(context, text, style))),
            ),
          );
        case MdParagraph(:final text):
          children.add(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text.rich(TextSpan(children: _spans(context, text, body))),
            ),
          );
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
                          SizedBox(
                            width: 28,
                            child: Text(ordered ? '${i + 1}.' : '•', style: body),
                          ),
                          Expanded(
                            child: Text.rich(
                              TextSpan(children: _spans(context, items[i], body)),
                            ),
                          ),
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
                color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
                border: Border(
                  left: BorderSide(color: scheme.primary, width: 3),
                ),
              ),
              child: Text.rich(TextSpan(children: _spans(context, text, body))),
            ),
          );
        case MdCode(:final text):
          children.add(
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(6),
              ),
              child: SelectableText(
                text,
                style: body.copyWith(
                  fontFamily: 'Consolas',
                  fontFamilyFallback: const ['monospace'],
                  height: 1.4,
                ),
              ),
            ),
          );
        case MdTable(:final header, :final rows):
          children.add(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Table(
                  defaultColumnWidth: const IntrinsicColumnWidth(),
                  border: TableBorder.all(color: scheme.outlineVariant),
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: scheme.surfaceContainerHighest,
                      ),
                      children: [
                        for (final h in header)
                          _cell(context, h, body, bold: true),
                      ],
                    ),
                    for (final r in rows)
                      TableRow(
                        children: [
                          for (var c = 0; c < header.length; c++)
                            _cell(context, c < r.length ? r[c] : '', body),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          );
        case MdRule():
          children.add(const Divider(height: 24));
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }

  Widget _cell(BuildContext context, String text, TextStyle body, {bool bold = false}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Text.rich(
          TextSpan(children: _spans(context, text, body, bold: bold)),
        ),
      );
}
