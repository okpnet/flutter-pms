import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wysiwyg_editor/wysiwyg_editor.dart';

import '../data/manual_providers.dart';
import '../data/manual_repository.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';
import 'manual_content.dart';
import 'manual_dialogs.dart';

/// ページの編集(管理者だけ)。ページ名・保存・取り消しを持ち、本文の編集は `wysiwyg_editor`(「ビジュアル」と「Markdown」の切り替え)に任せる。
///
/// - リンクは、既存のページを検索して選ぶか、新しいページ名を入れて作成してリンクする(書きながら文書が育つ)。
/// - 保存すると、直前の版を履歴に残して改訂を 1 つ上げる。変更があるまま戻るときは確認する。
class ManualEditor extends ConsumerStatefulWidget {
  const ManualEditor({super.key, required this.page, required this.onDone});

  final ManualPageRecord page;

  /// 保存または取り消しで編集を終えたとき。保存したときは、その結果を渡す。
  final void Function(ManualPageRecord? saved) onDone;

  @override
  ConsumerState<ManualEditor> createState() => _ManualEditorState();
}

class _ManualEditorState extends ConsumerState<ManualEditor> {
  late final TextEditingController _title;
  late final WysiwygEditorController _body;
  ManualError? _error;
  var _saving = false;

  @override
  void initState() {
    super.initState();
    _title = TextEditingController(text: widget.page.title);
    _body = WysiwygEditorController(widget.page.md);
  }

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  bool get _dirty => _title.text.trim() != widget.page.title || _body.isDirty;

  /// 道具バーの「リンク」: 既存のページを選ぶか、新しいページ名を入れる。`[[ページ名]]`(選択した文字は表示文字)を返す。
  Future<String?> _pickLink(BuildContext context, String selected) async {
    final title = await showManualLinkDialog(context, pageId: widget.page.id, initial: selected);
    if (title == null) return null;
    final shown = selected.trim();
    return shown.isEmpty || shown == title ? '[[$title]]' : '[[$title|$shown]]';
  }

  WysiwygEditorLabels _labels(ManualStrings s) {
    final t = s.edit.toolbar;
    const ja = WysiwygEditorLabels.ja();
    return WysiwygEditorLabels(
      modeVisual: s.edit.modeVisual,
      modeMarkdown: s.edit.modeMarkdown,
      preview: s.edit.preview,
      emptyText: s.view.noBody,
      toolH2: t.h2,
      toolH3: t.h3,
      toolBold: t.bold,
      toolItalic: t.italic,
      toolBullets: t.bullets,
      toolNumbered: t.numbered,
      toolQuote: t.quote,
      toolCode: t.code,
      toolTable: t.table,
      toolRule: t.rule,
      toolLink: t.link,
      headingTemplate: ja.headingTemplate,
      boldPlaceholder: ja.boldPlaceholder,
      italicPlaceholder: ja.italicPlaceholder,
      itemTemplate: ja.itemTemplate,
      quoteTemplate: ja.quoteTemplate,
      tableTemplate: ja.tableTemplate,
    );
  }

  // ---- 保存・取り消し ----

  Future<void> _save() async {
    final s = ref.read(manualStringsProvider);
    final md = _body.markdown;
    if (_title.text.trim() == widget.page.title &&
        WysiwygEditorController.normalize(md) == WysiwygEditorController.normalize(widget.page.md)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s.edit.nothingChanged)));
      widget.onDone(null);
      return;
    }
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      final saved = await ref.read(manualProvider.notifier).save(widget.page.id, title: _title.text, md: md);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s.edit.saved(rev: saved.rev))));
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
    final wiki = ref.watch(manualProvider).wiki;
    // 本文を持たないルート(DB の文書)は、ページ名だけを編集する(本文は子のページが持つ)
    final hasBody = !widget.page.isRoot || ref.watch(manualRepositoryProvider).rootHasBody;
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
            suffix: Chip(label: Text(s.edit.required), visualDensity: VisualDensity.compact),
            errorText: switch (_error) {
              ManualError.titleRequired => s.errors.titleRequired,
              ManualError.titleDuplicate => s.errors.titleDuplicate,
              ManualError.notFound => s.errors.notFound,
              ManualError.notEditor => s.errors.notEditor,
              ManualError.controlNumberRequired => s.errors.controlNumberRequired,
              ManualError.rootTierMissing => s.errors.rootTierMissing,
              ManualError.approvalPatternMissing => s.errors.approvalPatternMissing,
              ManualError.requestUnavailable => s.errors.requestUnavailable,
              null => null,
            },
          ),
        ),
        const SizedBox(height: 12),
        if (hasBody)
          WysiwygEditor(
            controller: _body,
            keyPrefix: 'manual',
            labels: _labels(s),
            wikiLinkResolver: ManualContent.resolverOf(wiki),
            pickLink: _pickLink,
          )
        else
          Text(s.edit.rootNoBody, key: const Key('manual-edit-root-no-body')),
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
  }
}
