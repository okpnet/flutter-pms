import 'package:flutter/material.dart';
import 'package:markdown_ast/markdown_ast.dart';
import 'package:markdown_to_wysiwyg/markdown_to_wysiwyg.dart';
import 'package:markdown_view/markdown_view.dart';
import 'package:wysiwyg_to_markdown/wysiwyg_to_markdown.dart';

import 'md_text_ops.dart';
import 'wysiwyg_editor_controller.dart';
import 'wysiwyg_editor_labels.dart';

/// リンクを入れる操作。選択している文字([selectedText])を渡し、入れる Markdown(`[[ページ]]` など)を返す(取り消しは null)。
typedef LinkPicker = Future<String?> Function(BuildContext context, String selectedText);

enum _Tool { h2, h3, bold, italic, bullets, numbered, quote, code, table, rule, link }

/// 本文の編集。「ビジュアル」と「Markdown」を切り替えて書く。同じ Markdown を正本に、相互に変換する
/// (`markdown_to_wysiwyg`・`wysiwyg_to_markdown`)。
///
/// - **Markdown**: 本文の入力欄(等幅)。広い画面では右に、その場のプレビュー(`markdown_view`)。
/// - **ビジュアル**: 本文を、出来上がりの見た目のブロックで出し、ブロックを選んで直す(完了・上へ・下へ・削除)。
/// - どちらも、道具バーから H2・H3・太字・斜体・箇条書き・番号付き・引用・コード・表・区切り線・リンクを入れる。
///   リンクは [pickLink] が行き先を選ぶ(無いときはリンクの道具を出さない)。
///
/// 本文は [controller] で読む(保存の画面が使う)。タイトル・保存・取り消しは持たない(呼び出し側の責務)。
class WysiwygEditor extends StatefulWidget {
  const WysiwygEditor({
    super.key,
    required this.controller,
    this.labels = const WysiwygEditorLabels.ja(),
    this.viewTheme,
    this.wikiLinkResolver,
    this.pickLink,
    this.onChanged,
    this.keyPrefix = 'wysiwyg',
    this.wideBreakpoint = 900,
  });

  final WysiwygEditorController controller;
  final WysiwygEditorLabels labels;

  /// プレビュー・ブロックの表示の見た目(省略はアプリのテーマ)。
  final MarkdownViewTheme? viewTheme;
  final WikiLinkResolver? wikiLinkResolver;
  final LinkPicker? pickLink;

  /// 本文が変わったとき(入力・道具バー・ブロックの操作・切り替え)。
  final void Function(String markdown)? onChanged;

  /// 部品の Key の接頭辞(`<接頭辞>-edit-mode`・`<接頭辞>-edit-md`・`<接頭辞>-tool-<名前>`・`<接頭辞>-chunk-…`)。
  final String keyPrefix;

  /// Markdown の入力欄の右にプレビューを出す幅。
  final double wideBreakpoint;

  @override
  State<WysiwygEditor> createState() => _WysiwygEditorState();
}

class _WysiwygEditorState extends State<WysiwygEditor> {
  late final TextEditingController _md; // Markdown 側
  final _chunk = TextEditingController(); // ビジュアル側の、編集中のブロック
  final _chunkFocus = FocusNode();
  final _mdFocus = FocusNode();
  var _visual = true;
  late WysiwygDocument _doc;
  int? _editing;

  String get _p => widget.keyPrefix;
  WysiwygEditorLabels get _l => widget.labels;

  @override
  void initState() {
    super.initState();
    _md = TextEditingController(text: widget.controller.initialMarkdown);
    _doc = MarkdownToWysiwyg.convert(widget.controller.initialMarkdown);
    widget.controller.attach(_currentMd);
  }

  @override
  void didUpdateWidget(WysiwygEditor old) {
    super.didUpdateWidget(old);
    if (old.controller != widget.controller) {
      // 別の本文(別の controller)に替わったら、入力欄・ブロックも入れ替える
      old.controller.detach();
      _md.text = widget.controller.initialMarkdown;
      _doc = MarkdownToWysiwyg.convert(widget.controller.initialMarkdown);
      _editing = null;
      widget.controller.attach(_currentMd);
    }
  }

  @override
  void dispose() {
    widget.controller.detach();
    _md.dispose();
    _chunk.dispose();
    _chunkFocus.dispose();
    _mdFocus.dispose();
    super.dispose();
  }

  // ---- 状態 ----

  void _changed() => widget.onChanged?.call(_currentMd());

  /// 編集中のブロックを、文書に反映する(空行を入れたブロックは、分け直す)。
  void _commitChunk() {
    final i = _editing;
    if (i == null) return;
    final next = _doc.replaceAt(i, WysiwygBlock(_chunk.text));
    _doc = MarkdownToWysiwyg.convert(WysiwygToMarkdown.convert(next));
    _editing = null;
  }

  String _currentMd() {
    if (!_visual) return _md.text;
    var doc = _doc;
    final i = _editing;
    if (i != null && i < doc.length) doc = doc.replaceAt(i, WysiwygBlock(_chunk.text));
    return WysiwygToMarkdown.convert(doc);
  }

  void _setMode(bool visual) {
    if (visual == _visual) return;
    setState(() {
      if (visual) {
        _doc = MarkdownToWysiwyg.convert(_md.text);
        _editing = null;
      } else {
        _md.text = _currentMd();
        _editing = null;
      }
      _visual = visual;
    });
    _changed();
  }

  // ---- 道具バー ----

  TextEditingController? get _active => !_visual ? _md : (_editing != null ? _chunk : null);

  String _template(_Tool t) => switch (t) {
    _Tool.h2 => '## ${_l.headingTemplate}',
    _Tool.h3 => '### ${_l.headingTemplate}',
    _Tool.bullets => '- ${_l.itemTemplate}',
    _Tool.numbered => '1. ${_l.itemTemplate}',
    _Tool.quote => '> ${_l.quoteTemplate}',
    _Tool.code => MdTextOps.codeTemplate,
    _Tool.table => _l.tableTemplate,
    _Tool.rule => MdTextOps.ruleTemplate,
    _ => '',
  };

  void _tool(_Tool t) {
    final ctl = _active;
    if (ctl == null) {
      // ビジュアルで、どのブロックも編集していない: 新しいブロックを末尾に足して編集する
      setState(() {
        _commitChunk();
        _doc = _doc.add(WysiwygBlock(_template(t)));
        _editing = _doc.length - 1;
        _chunk.text = _doc.blocks.last.markdown;
      });
      if (t == _Tool.link) _pickLink();
      _changed();
      return;
    }
    if (t == _Tool.link) {
      _pickLink();
      return;
    }
    final v = ctl.value;
    final next = switch (t) {
      _Tool.h2 => MdTextOps.prefixLines(v, '## '),
      _Tool.h3 => MdTextOps.prefixLines(v, '### '),
      _Tool.bullets => MdTextOps.prefixLines(v, '- '),
      _Tool.numbered => MdTextOps.prefixLines(v, '', numbered: true),
      _Tool.quote => MdTextOps.prefixLines(v, '> '),
      _Tool.bold => MdTextOps.wrap(v, '**', '**', placeholder: _l.boldPlaceholder),
      _Tool.italic => MdTextOps.wrap(v, '*', '*', placeholder: _l.italicPlaceholder),
      _Tool.code => MdTextOps.insertBlock(v, MdTextOps.codeTemplate),
      _Tool.table => MdTextOps.insertBlock(v, _l.tableTemplate),
      _Tool.rule => MdTextOps.insertBlock(v, MdTextOps.ruleTemplate),
      _Tool.link => v,
    };
    setState(() => ctl.value = next);
    (_visual ? _chunkFocus : _mdFocus).requestFocus();
    _changed();
  }

  Future<void> _pickLink() async {
    final ctl = _active;
    final picker = widget.pickLink;
    if (ctl == null || picker == null) return;
    final value = ctl.value; // 選択画面の前の選択を覚えておく
    final link = await picker(context, MdTextOps.selectedText(value));
    if (link == null || !mounted) return;
    setState(() => ctl.value = MdTextOps.insertText(value, link));
    _changed();
  }

  // ---- 画面 ----

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, c) {
        final wide = c.maxWidth >= widget.wideBreakpoint;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SegmentedButton<bool>(
                  key: Key('$_p-edit-mode'),
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: true, label: Text(_l.modeVisual)),
                    ButtonSegment(value: false, label: Text(_l.modeMarkdown)),
                  ],
                  selected: {_visual},
                  onSelectionChanged: (v) => _setMode(v.first),
                ),
                ..._toolbar(),
              ],
            ),
            const SizedBox(height: 8),
            if (_visual)
              _visualBody(scheme)
            else if (wide)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _markdownField()),
                  const SizedBox(width: 12),
                  Expanded(child: _preview(scheme)),
                ],
              )
            else
              _markdownField(),
          ],
        );
      },
    );
  }

  List<Widget> _toolbar() {
    Widget b(_Tool tool, IconData icon, String tip) =>
        IconButton(key: Key('$_p-tool-${tool.name}'), tooltip: tip, icon: Icon(icon), onPressed: () => _tool(tool));
    return [
      b(_Tool.h2, Icons.title, _l.toolH2),
      b(_Tool.h3, Icons.text_fields, _l.toolH3),
      b(_Tool.bold, Icons.format_bold, _l.toolBold),
      b(_Tool.italic, Icons.format_italic, _l.toolItalic),
      b(_Tool.bullets, Icons.format_list_bulleted, _l.toolBullets),
      b(_Tool.numbered, Icons.format_list_numbered, _l.toolNumbered),
      b(_Tool.quote, Icons.format_quote, _l.toolQuote),
      b(_Tool.code, Icons.code, _l.toolCode),
      b(_Tool.table, Icons.table_chart_outlined, _l.toolTable),
      b(_Tool.rule, Icons.horizontal_rule, _l.toolRule),
      if (widget.pickLink != null) b(_Tool.link, Icons.link, _l.toolLink),
    ];
  }

  Widget _markdownField() => TextField(
    key: Key('$_p-edit-md'),
    controller: _md,
    focusNode: _mdFocus,
    minLines: 14,
    maxLines: null,
    onChanged: (_) {
      setState(() {});
      _changed();
    },
    style: const TextStyle(fontFamily: 'Consolas', fontFamilyFallback: ['monospace'], height: 1.5),
    decoration: const InputDecoration(border: OutlineInputBorder()),
  );

  Widget _view(String md) => MarkdownView(
    markdown: md,
    theme: widget.viewTheme,
    wikiLinkResolver: widget.wikiLinkResolver,
    emptyText: _l.emptyText,
  );

  Widget _preview(ColorScheme scheme) => Container(
    padding: const EdgeInsets.all(12),
    constraints: const BoxConstraints(minHeight: 200),
    decoration: BoxDecoration(
      border: Border.all(color: scheme.outlineVariant),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_l.preview, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: scheme.onSurfaceVariant)),
        const SizedBox(height: 8),
        _view(_md.text),
      ],
    ),
  );

  Widget _visualBody(ColorScheme scheme) {
    final children = <Widget>[];
    for (var i = 0; i < _doc.length; i++) {
      if (_editing == i) {
        children.add(_chunkEditor(i, scheme));
      } else {
        children.add(
          InkWell(
            key: Key('$_p-chunk-$i'),
            onTap: () => setState(() {
              _commitChunk();
              // 反映で番号が変わりうるため、同じ内容の位置を取り直す
              final target = i.clamp(0, _doc.length - 1);
              _editing = target;
              _chunk.text = _doc[target].markdown;
            }),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(border: Border.all(color: Colors.transparent), borderRadius: BorderRadius.circular(4)),
              child: IgnorePointer(child: _view(_doc[i].markdown)),
            ),
          ),
        );
      }
    }
    if (_doc.isEmpty) {
      children.add(Padding(padding: const EdgeInsets.all(12), child: Text(_l.emptyText, style: TextStyle(color: scheme.onSurfaceVariant))));
    }
    return Container(
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(minHeight: 200),
      decoration: BoxDecoration(border: Border.all(color: scheme.outlineVariant), borderRadius: BorderRadius.circular(4)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children),
    );
  }

  Widget _chunkEditor(int i, ColorScheme scheme) => Container(
    margin: const EdgeInsets.only(bottom: 4),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(border: Border.all(color: scheme.primary, width: 1.5), borderRadius: BorderRadius.circular(4)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          key: Key('$_p-chunk-field'),
          controller: _chunk,
          focusNode: _chunkFocus,
          autofocus: true,
          minLines: 2,
          maxLines: null,
          onChanged: (_) => _changed(),
          style: const TextStyle(fontFamily: 'Consolas', fontFamilyFallback: ['monospace'], height: 1.5),
          decoration: const InputDecoration(border: InputBorder.none),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(key: Key('$_p-chunk-up'), icon: const Icon(Icons.arrow_upward), onPressed: i == 0 ? null : () => _moveChunk(i, -1)),
            IconButton(key: Key('$_p-chunk-down'), icon: const Icon(Icons.arrow_downward), onPressed: i == _doc.length - 1 ? null : () => _moveChunk(i, 1)),
            IconButton(
              key: Key('$_p-chunk-delete'),
              icon: const Icon(Icons.delete_outline),
              onPressed: () {
                setState(() {
                  _doc = _doc.removeAt(i);
                  _editing = null;
                });
                _changed();
              },
            ),
            FilledButton.tonal(
              key: Key('$_p-chunk-done'),
              onPressed: () {
                setState(_commitChunk);
                _changed();
              },
              child: const Icon(Icons.check),
            ),
          ],
        ),
      ],
    ),
  );

  void _moveChunk(int i, int delta) {
    setState(() {
      _doc = _doc.replaceAt(i, WysiwygBlock(_chunk.text)).move(i, delta);
      _editing = i + delta;
      _chunk.text = _doc[i + delta].markdown;
    });
    _changed();
  }
}
