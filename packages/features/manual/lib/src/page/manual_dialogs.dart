import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/manual_providers.dart';
import '../data/manual_repository.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';
import 'manual_format.dart';

String manualErrorText(ManualStrings s, ManualError e) => switch (e) {
  ManualError.titleRequired => s.errors.titleRequired,
  ManualError.titleDuplicate => s.errors.titleDuplicate,
  ManualError.notFound => s.errors.notFound,
  ManualError.notEditor => s.errors.notEditor,
  ManualError.controlNumberRequired => s.errors.controlNumberRequired,
  ManualError.rootTierMissing => s.errors.rootTierMissing,
  ManualError.approvalPatternMissing => s.errors.approvalPatternMissing,
  ManualError.requestUnavailable => s.errors.requestUnavailable,
};

/// 新しいページ名を入れて作成する。作成したページを返す(取り消しは null)。
///
/// [parentId] の下(null ならルート)に作る。ページ名の重複・空は、その場で示して閉じない。
Future<ManualPageRecord?> showManualCreateDialog(
  BuildContext context, {
  required String? parentId,
  required String dialogTitle,
  String initialName = '',
}) => showDialog<ManualPageRecord>(
  context: context,
  builder: (_) => _CreateDialog(
    parentId: parentId,
    dialogTitle: dialogTitle,
    initialName: initialName,
  ),
);

class _CreateDialog extends ConsumerStatefulWidget {
  const _CreateDialog({
    required this.parentId,
    required this.dialogTitle,
    required this.initialName,
  });
  final String? parentId;
  final String dialogTitle;
  final String initialName;

  @override
  ConsumerState<_CreateDialog> createState() => _CreateDialogState();
}

class _CreateDialogState extends ConsumerState<_CreateDialog> {
  late final _name = TextEditingController(text: widget.initialName);
  final _controlNumber = TextEditingController();
  ManualError? _error;

  @override
  void dispose() {
    _name.dispose();
    _controlNumber.dispose();
    super.dispose();
  }

  /// ルートを作るとき、管理番号の入力が要るか(取得元が要求するとき)。
  bool get _needsControlNumber => widget.parentId == null && ref.read(manualRepositoryProvider).requiresControlNumber;

  Future<void> _create() async {
    try {
      final page = await ref
          .read(manualProvider.notifier)
          .create(
            parentId: widget.parentId,
            title: _name.text,
            controlNumber: _needsControlNumber ? _controlNumber.text.trim() : null,
          );
      if (mounted) Navigator.of(context).pop(page);
    } on ManualException catch (e) {
      if (mounted) setState(() => _error = e.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    return AlertDialog(
      title: Text(widget.dialogTitle),
      content: SizedBox(
        width: 420,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              key: const Key('manual-create-name'),
              controller: _name,
              autofocus: true,
              onChanged: (_) => setState(() => _error = null),
              onSubmitted: (_) => _create(),
              decoration: InputDecoration(
                labelText: s.create.nameLabel,
                hintText: s.create.nameHint,
                errorText: _error == null || _error == ManualError.controlNumberRequired
                    ? null
                    : manualErrorText(s, _error!),
              ),
            ),
            if (_needsControlNumber)
              TextField(
                key: const Key('manual-create-control-number'),
                controller: _controlNumber,
                onChanged: (_) => setState(() => _error = null),
                onSubmitted: (_) => _create(),
                decoration: InputDecoration(
                  labelText: s.create.controlNumberLabel,
                  hintText: s.create.controlNumberHint,
                  errorText: _error == ManualError.controlNumberRequired ? manualErrorText(s, _error!) : null,
                ),
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(s.create.cancel),
        ),
        FilledButton(
          key: const Key('manual-create-ok'),
          onPressed: _create,
          child: Text(s.create.create),
        ),
      ],
    );
  }
}

/// ページへのリンクを選ぶ。既存のページを検索して選ぶか、新しいページ名を入れて作成してリンクする。
/// 選んだ(作成した)ページ名を返す(取り消しは null)。作成したページは、[pageId] の子になる。
Future<String?> showManualLinkDialog(
  BuildContext context, {
  required String pageId,
  String initial = '',
}) => showDialog<String>(
  context: context,
  builder: (_) => _LinkDialog(pageId: pageId, initial: initial),
);

class _LinkDialog extends ConsumerStatefulWidget {
  const _LinkDialog({required this.pageId, required this.initial});
  final String pageId;
  final String initial;

  @override
  ConsumerState<_LinkDialog> createState() => _LinkDialogState();
}

class _LinkDialogState extends ConsumerState<_LinkDialog> {
  late final _query = TextEditingController(text: widget.initial.trim());
  ManualError? _error;

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  Future<void> _createAndLink(String title) async {
    try {
      final page = await ref
          .read(manualProvider.notifier)
          .create(parentId: widget.pageId, title: title);
      if (mounted) Navigator.of(context).pop(page.title);
    } on ManualException catch (e) {
      if (mounted) setState(() => _error = e.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    final wiki = ref.watch(manualProvider).wiki;
    final q = _query.text.trim();
    final hits = wiki.search(q).where((p) => p.id != widget.pageId).toList();
    final canCreate = q.isNotEmpty && wiki.byTitle(q) == null;
    return AlertDialog(
      title: Text(s.linkDialog.title),
      content: SizedBox(
        width: 460,
        height: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              key: const Key('manual-link-query'),
              controller: _query,
              autofocus: true,
              onChanged: (_) => setState(() => _error = null),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: s.linkDialog.searchHint,
                errorText: _error == null ? null : manualErrorText(s, _error!),
              ),
            ),
            const SizedBox(height: 8),
            if (canCreate)
              ListTile(
                key: const Key('manual-link-create'),
                leading: const Icon(Icons.add_circle_outline),
                title: Text(s.linkDialog.createNew(title: q)),
                onTap: () => _createAndLink(q),
              ),
            Expanded(
              child: hits.isEmpty
                  ? Center(child: Text(s.linkDialog.none))
                  : ListView(
                      children: [
                        for (final p in hits)
                          ListTile(
                            key: Key('manual-link-hit-${p.id}'),
                            dense: true,
                            title: Text(p.title),
                            onTap: () => Navigator.of(context).pop(p.title),
                          ),
                      ],
                    ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(s.linkDialog.cancel),
        ),
      ],
    );
  }
}

/// 履歴(過去の版)。「この版に戻す」で復元する(戻す前の版も履歴に残る)。復元したら true を返す。
Future<bool> showManualHistoryDialog(
  BuildContext context, {
  required String pageId,
}) async =>
    await showDialog<bool>(
      context: context,
      builder: (_) => _HistoryDialog(pageId: pageId),
    ) ??
    false;

class _HistoryDialog extends ConsumerWidget {
  const _HistoryDialog({required this.pageId});
  final String pageId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final page = ref.watch(manualProvider).wiki.byId(pageId);
    final history = page?.history ?? const <ManualVersion>[];
    return AlertDialog(
      title: Text(s.history.title),
      content: SizedBox(
        width: 520,
        height: 380,
        child: history.isEmpty
            ? Center(child: Text(s.history.empty))
            : ListView(
                children: [
                  for (final h in history)
                    ListTile(
                      key: Key('manual-history-${h.rev}'),
                      title: Text(h.title),
                      subtitle: Text(
                        s.history.versionMeta(
                          rev: h.rev,
                          by: h.updatedBy,
                          at: manualDateText(h.updatedAt),
                        ),
                      ),
                      trailing: TextButton(
                        key: Key('manual-history-restore-${h.rev}'),
                        onPressed: () async {
                          final ok = await showDialog<bool>(
                            context: context,
                            builder: (c) => AlertDialog(
                              title: Text(s.history.restoreTitle),
                              content: Text(s.history.restoreMessage(rev: h.rev)),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(c).pop(false),
                                  child: Text(s.create.cancel),
                                ),
                                FilledButton(
                                  key: const Key('manual-history-restore-ok'),
                                  onPressed: () => Navigator.of(c).pop(true),
                                  child: Text(s.history.restore),
                                ),
                              ],
                            ),
                          );
                          if (ok != true || !context.mounted) return;
                          try {
                            await ref
                                .read(manualProvider.notifier)
                                .restore(pageId, h.rev);
                            if (context.mounted) Navigator.of(context).pop(true);
                          } on ManualException catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(manualErrorText(s, e.error))),
                              );
                            }
                          }
                        },
                        child: Text(s.history.restore),
                      ),
                    ),
                ],
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(s.history.close),
        ),
      ],
    );
  }
}

/// 生成した Markdown を表示し、コピーできる。範囲は「このページ」(他ページへのリンクは文字だけ)か
/// 「文書全体」(章の順に結合し、見出しの階層を合わせ、ページ間のリンクを文書内のリンクに直す)。
Future<void> showManualExportDialog(
  BuildContext context, {
  required String pageId,
}) => showDialog<void>(
  context: context,
  builder: (_) => _ExportDialog(pageId: pageId),
);

class _ExportDialog extends ConsumerStatefulWidget {
  const _ExportDialog({required this.pageId});
  final String pageId;

  @override
  ConsumerState<_ExportDialog> createState() => _ExportDialogState();
}

class _ExportDialogState extends ConsumerState<_ExportDialog> {
  var _all = false;

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    final wiki = ref.watch(manualProvider).wiki;
    final text = _all ? wiki.exportAll() : wiki.exportPage(widget.pageId);
    return AlertDialog(
      title: Text(s.export.title),
      content: SizedBox(
        width: 680,
        height: 460,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text('${s.export.scope}: '),
                const SizedBox(width: 8),
                SegmentedButton<bool>(
                  key: const Key('manual-export-scope'),
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: false, label: Text(s.export.scopePage)),
                    ButtonSegment(value: true, label: Text(s.export.scopeAll)),
                  ],
                  selected: {_all},
                  onSelectionChanged: (v) => setState(() => _all = v.first),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                child: SingleChildScrollView(
                  child: SelectableText(
                    text,
                    key: const Key('manual-export-text'),
                    style: const TextStyle(
                      fontFamily: 'Consolas',
                      fontFamilyFallback: ['monospace'],
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          key: const Key('manual-export-copy'),
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: text));
            if (context.mounted) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(s.export.copied)));
            }
          },
          child: Text(s.export.copy),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(s.export.close),
        ),
      ],
    );
  }
}
