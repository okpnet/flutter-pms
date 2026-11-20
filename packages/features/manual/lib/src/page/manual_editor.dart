import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/manual_providers.dart';
import '../data/manual_repository.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_md_edit.dart';
import '../model/manual_page_record.dart';
import 'manual_content.dart';
import 'manual_dialogs.dart';

/// ページの編集(管理者だけ)。「ビジュアル」と「Markdown」を切り替えて書く。同じ Markdown を正本に、相互に変換する。
///
/// - **Markdown**: 本文の入力欄(等幅)。広い画面では右に、その場のプレビューを出す。
/// - **ビジュアル**: 本文を、出来上がりの見た目のブロック(段落・表・リスト…)で出し、ブロックを選んで直す。
///   ブロックの追加・並べ替え・削除ができる。
/// - どちらも、道具バーから H2・H3・太字・斜体・箇条書き・番号付き・引用・コード・表・区切り線・リンクを入れる。
///   リンクは、既存のページを検索して選ぶか、新しいページ名を入れて作成してリンクする(書きながら文書が育つ)。
/// - 保存すると、直前の版を履歴に残して改訂を 1 つ上げる。変更があるまま戻るときは確認する。
class ManualEditor extends ConsumerStatefulWidget {
  const ManualEditor({
    super.key,
    required this.page,
    required this.onDone,
  });

  final ManualPageRecord page;

  /// 保存または取り消しで編集を終えたとき。保存したときは、その結果を渡す。
  final void Function(ManualPageRecord? saved) onDone;

  @override
  ConsumerState<ManualEditor> createState() => _ManualEditorState();
}

enum _Tool { h2, h3, bold, italic, bullets, numbered, quote, code, table, rule, link }

class _ManualEditorState extends ConsumerState<ManualEditor> {
  late final TextEditingController _title;
  late final TextEditingController _md; // Markdown 側
  final _chunk = TextEditingController(); // ビジュアル側の、編集中のブロック
  final _chunkFocus = FocusNode();
  final _mdFocus = FocusNode();
  var _visual = true;
  late List<String> _chunks;
  int? _editing;
  ManualError? _error;
  var _saving = false;

  @override
  void initState() {
    super.initState();
    _title = TextEditingController(text: widget.page.title);
    _md = TextEditingController(text: widget.page.md);
    _chunks = ManualMdEdit.chunks(widget.page.md);
  }

  @override
  void dispose() {
    _title.dispose();
    _md.dispose();
    _chunk.dispose();
    _chunkFocus.dispose();
    _mdFocus.dispose();
    super.dispose();
  }

  // ---- 状態 ----

  String _norm(String s) => ManualMdEdit.join(ManualMdEdit.chunks(s));

  /// 編集中のブロックを、ブロックの一覧に反映する。
  void _commitChunk() {
    final i = _editing;
    if (i == null) return;
    _chunks[i] = _chunk.text;
    _chunks = ManualMdEdit.chunks(ManualMdEdit.join(_chunks));
    _editing = null;
  }

  String _currentMd() {
    if (!_visual) return _md.text;
    final list = List.of(_chunks);
    final i = _editing;
    if (i != null) list[i] = _chunk.text;
    return ManualMdEdit.join(list);
  }

  bool get _dirty =>
      _title.text.trim() != widget.page.title ||
      _norm(_currentMd()) != _norm(widget.page.md);

  void _setMode(bool visual) {
    if (visual == _visual) return;
    setState(() {
      if (visual) {
        _chunks = ManualMdEdit.chunks(_md.text);
        _editing = null;
      } else {
        _md.text = _currentMd();
        _commitChunkSilently();
      }
      _visual = visual;
    });
  }

  void _commitChunkSilently() {
    _editing = null;
  }

  // ---- 道具バー ----

  TextEditingController? get _active =>
      !_visual ? _md : (_editing != null ? _chunk : null);

  String _template(_Tool t) => switch (t) {
    _Tool.h2 => '## 見出し',
    _Tool.h3 => '### 見出し',
    _Tool.bullets => '- 項目',
    _Tool.numbered => '1. 項目',
    _Tool.quote => '> 引用',
    _Tool.code => ManualMdEdit.codeTemplate,
    _Tool.table => ManualMdEdit.tableTemplate,
    _Tool.rule => ManualMdEdit.ruleTemplate,
    _ => '',
  };

  void _tool(_Tool t) {
    var ctl = _active;
    if (ctl == null) {
      // ビジュアルで、どのブロックも編集していない: 新しいブロックを末尾に足して編集する
      setState(() {
        _commitChunk();
        _chunks.add(_template(t));
        _editing = _chunks.length - 1;
        _chunk.text = _chunks.last;
      });
      if (t == _Tool.link) _pickLink();
      return;
    }
    final v = ctl.value;
    final next = switch (t) {
      _Tool.h2 => ManualMdEdit.prefixLines(v, '## '),
      _Tool.h3 => ManualMdEdit.prefixLines(v, '### '),
      _Tool.bullets => ManualMdEdit.prefixLines(v, '- '),
      _Tool.numbered => ManualMdEdit.prefixLines(v, '', numbered: true),
      _Tool.quote => ManualMdEdit.prefixLines(v, '> '),
      _Tool.bold => ManualMdEdit.wrap(v, '**', '**', placeholder: '太字'),
      _Tool.italic => ManualMdEdit.wrap(v, '*', '*', placeholder: '斜体'),
      _Tool.code => ManualMdEdit.insertBlock(v, ManualMdEdit.codeTemplate),
      _Tool.table => ManualMdEdit.insertBlock(v, ManualMdEdit.tableTemplate),
      _Tool.rule => ManualMdEdit.insertBlock(v, ManualMdEdit.ruleTemplate),
      _Tool.link => null,
    };
    if (t == _Tool.link) {
      _pickLink();
      return;
    }
    setState(() => ctl.value = next!);
    (_visual ? _chunkFocus : _mdFocus).requestFocus();
  }

  Future<void> _pickLink() async {
    final ctl = _active;
    if (ctl == null) return;
    final value = ctl.value; // ダイアログの前の選択を覚えておく
    final title = await showManualLinkDialog(
      context,
      pageId: widget.page.id,
      initial: value.selection.isValid
          ? value.text.substring(value.selection.start, value.selection.end)
          : '',
    );
    if (title == null || !mounted) return;
    setState(() => ctl.value = ManualMdEdit.insertPageLink(value, title));
  }

  // ---- 保存・取り消し ----

  Future<void> _save() async {
    final s = ref.read(manualStringsProvider);
    final md = _currentMd();
    if (_title.text.trim() == widget.page.title &&
        _norm(md) == _norm(widget.page.md)) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(s.edit.nothingChanged)));
      widget.onDone(null);
      return;
    }
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      final saved = await ref
          .read(manualProvider.notifier)
          .save(widget.page.id, title: _title.text, md: md);
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(s.edit.saved(rev: saved.rev))));
      widget.onDone(saved);
    } on ManualException catch (e) {
      if (mounted) setState(() => _error = e.error);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _cancel() async {
    final s = ref.read(manualStringsProvider);
    if (_dirty) {
      final ok = await showConfirmDialog(
        context,
        title: s.edit.discardTitle,
        message: s.edit.discardMessage,
        confirmLabel: s.edit.discard,
        cancelLabel: s.edit.keepEditing,
        destructive: true,
      );
      if (!ok || !mounted) return;
    }
    widget.onDone(null);
  }

  // ---- 画面 ----

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, c) {
        final wide = c.maxWidth >= 900;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              key: const Key('manual-edit-title'),
              controller: _title,
              onChanged: (_) => setState(() => _error = null),
              decoration: InputDecoration(
                labelText: s.edit.nameLabel,
                border: const OutlineInputBorder(),
                suffix: Chip(
                  label: Text(s.edit.required),
                  visualDensity: VisualDensity.compact,
                ),
                errorText: switch (_error) {
                  ManualError.titleRequired => s.errors.titleRequired,
                  ManualError.titleDuplicate => s.errors.titleDuplicate,
                  ManualError.notFound => s.errors.notFound,
                  ManualError.notAdmin => s.errors.notAdmin,
                  null => null,
                },
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SegmentedButton<bool>(
                  key: const Key('manual-edit-mode'),
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: true, label: Text(s.edit.modeVisual)),
                    ButtonSegment(value: false, label: Text(s.edit.modeMarkdown)),
                  ],
                  selected: {_visual},
                  onSelectionChanged: (v) => _setMode(v.first),
                ),
                ..._toolbar(s),
              ],
            ),
            const SizedBox(height: 8),
            if (_visual)
              _visualBody(s, scheme)
            else if (wide)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _markdownField()),
                  const SizedBox(width: 12),
                  Expanded(child: _preview(s, scheme)),
                ],
              )
            else
              _markdownField(),
            const SizedBox(height: 16),
            ActionButtons(
              primaryLabel: s.edit.save,
              primaryKey: const Key('manual-edit-save'),
              onPrimary: _saving ? null : _save,
              secondaryLabel: s.edit.cancel,
              secondaryKey: const Key('manual-edit-cancel'),
              onSecondary: _saving ? null : _cancel,
            ),
          ],
        );
      },
    );
  }

  List<Widget> _toolbar(ManualStrings s) {
    final t = s.edit.toolbar;
    Widget b(_Tool tool, IconData icon, String tip, {String? key}) =>
        IconButton(
          key: Key('manual-tool-${tool.name}'),
          tooltip: tip,
          icon: Icon(icon),
          onPressed: () => _tool(tool),
        );
    return [
      b(_Tool.h2, Icons.title, t.h2),
      b(_Tool.h3, Icons.text_fields, t.h3),
      b(_Tool.bold, Icons.format_bold, t.bold),
      b(_Tool.italic, Icons.format_italic, t.italic),
      b(_Tool.bullets, Icons.format_list_bulleted, t.bullets),
      b(_Tool.numbered, Icons.format_list_numbered, t.numbered),
      b(_Tool.quote, Icons.format_quote, t.quote),
      b(_Tool.code, Icons.code, t.code),
      b(_Tool.table, Icons.table_chart_outlined, t.table),
      b(_Tool.rule, Icons.horizontal_rule, t.rule),
      b(_Tool.link, Icons.link, t.link),
    ];
  }

  Widget _markdownField() => TextField(
    key: const Key('manual-edit-md'),
    controller: _md,
    focusNode: _mdFocus,
    minLines: 14,
    maxLines: null,
    onChanged: (_) => setState(() {}),
    style: const TextStyle(
      fontFamily: 'Consolas',
      fontFamilyFallback: ['monospace'],
      height: 1.5,
    ),
    decoration: const InputDecoration(border: OutlineInputBorder()),
  );

  Widget _preview(ManualStrings s, ColorScheme scheme) => Container(
    padding: const EdgeInsets.all(12),
    constraints: const BoxConstraints(minHeight: 200),
    decoration: BoxDecoration(
      border: Border.all(color: scheme.outlineVariant),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          s.edit.preview,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        ManualContent(
          md: _md.text,
          wiki: ref.watch(manualProvider).wiki,
          emptyText: s.view.noBody,
        ),
      ],
    ),
  );

  Widget _visualBody(ManualStrings s, ColorScheme scheme) {
    final wiki = ref.watch(manualProvider).wiki;
    final children = <Widget>[];
    for (var i = 0; i < _chunks.length; i++) {
      if (_editing == i) {
        children.add(_chunkEditor(i, s, scheme));
      } else {
        children.add(
          InkWell(
            key: Key('manual-chunk-$i'),
            onTap: () => setState(() {
              _commitChunk();
              // 反映で番号が変わりうるため、同じ内容の位置を取り直す
              final target = i.clamp(0, _chunks.length - 1);
              _editing = target;
              _chunk.text = _chunks[target];
            }),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(4),
              ),
              child: IgnorePointer(
                child: ManualContent(md: _chunks[i], wiki: wiki),
              ),
            ),
          ),
        );
      }
    }
    if (_chunks.isEmpty) {
      children.add(
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            s.view.noBody,
            style: TextStyle(color: scheme.onSurfaceVariant),
          ),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(minHeight: 200),
      decoration: BoxDecoration(
        border: Border.all(color: scheme.outlineVariant),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }

  Widget _chunkEditor(int i, ManualStrings s, ColorScheme scheme) => Container(
    margin: const EdgeInsets.only(bottom: 4),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(color: scheme.primary, width: 1.5),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          key: const Key('manual-chunk-field'),
          controller: _chunk,
          focusNode: _chunkFocus,
          autofocus: true,
          minLines: 2,
          maxLines: null,
          style: const TextStyle(
            fontFamily: 'Consolas',
            fontFamilyFallback: ['monospace'],
            height: 1.5,
          ),
          decoration: const InputDecoration(border: InputBorder.none),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              key: const Key('manual-chunk-up'),
              icon: const Icon(Icons.arrow_upward),
              onPressed: i == 0 ? null : () => _moveChunk(i, -1),
            ),
            IconButton(
              key: const Key('manual-chunk-down'),
              icon: const Icon(Icons.arrow_downward),
              onPressed: i == _chunks.length - 1 ? null : () => _moveChunk(i, 1),
            ),
            IconButton(
              key: const Key('manual-chunk-delete'),
              icon: const Icon(Icons.delete_outline),
              onPressed: () => setState(() {
                _chunks.removeAt(i);
                _editing = null;
              }),
            ),
            FilledButton.tonal(
              key: const Key('manual-chunk-done'),
              onPressed: () => setState(_commitChunk),
              child: const Icon(Icons.check),
            ),
          ],
        ),
      ],
    ),
  );

  void _moveChunk(int i, int delta) => setState(() {
    _chunks[i] = _chunk.text;
    final item = _chunks.removeAt(i);
    _chunks.insert(i + delta, item);
    _editing = i + delta;
    _chunk.text = _chunks[i + delta];
  });
}
