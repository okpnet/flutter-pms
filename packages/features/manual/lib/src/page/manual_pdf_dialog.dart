import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/manual_approval.dart';
import '../data/manual_pdf_service.dart';
import '../data/manual_providers.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';

/// PDF の出力(範囲を選び、「名前を付けて保存」で保存する)。
Future<void> showManualPdfDialog(BuildContext context, {required String pageId}) =>
    showDialog<void>(context: context, builder: (_) => _PdfDialog(pageId: pageId));

class _PdfDialog extends ConsumerStatefulWidget {
  const _PdfDialog({required this.pageId});
  final String pageId;

  @override
  ConsumerState<_PdfDialog> createState() => _PdfDialogState();
}

class _PdfDialogState extends ConsumerState<_PdfDialog> {
  var _whole = false;
  var _busy = false;
  String? _message;
  var _failed = false;

  Future<void> _save() async {
    final s = ref.read(manualStringsProvider);
    setState(() {
      _busy = true;
      _message = null;
      _failed = false;
    });
    try {
      final wiki = ref.read(manualProvider).wiki;
      final root = ManualPdfService.rootOf(wiki, widget.pageId) as ManualPageRecord?;
      final page = wiki.byId(widget.pageId);
      final approval = root == null ? ManualApproval.none : await ref.read(manualApprovalProvider(root.id).future);
      final fonts = await ref.read(manualPdfFontsProvider.future);
      final problems = <String>[];
      final bytes = await const ManualPdfService().build(
        wiki: wiki,
        pageId: widget.pageId,
        whole: _whole,
        settings: ref.read(manualAppSettingsProvider),
        approval: approval,
        fonts: fonts,
        printedAt: ref.read(manualClockProvider)(),
        printedBy: ref.read(manualPrinterNameProvider),
        onProblem: problems.add,
      );
      final title = (_whole ? root?.title : page?.title) ?? 'manual';
      final name = '${title.replaceAll(RegExp(r'[\\/:*?"<>|]'), '_')}.pdf';
      final saved = await ref.read(manualFileSaverProvider).save(name, bytes);
      if (!mounted) return;
      setState(() {
        _busy = false;
        _message = saved ? s.pdf.saved : s.pdf.canceled;
      });
    } catch (e, st) {
      debugPrint('[manual] PDF の作成に失敗: $e\n$st');
      if (!mounted) return;
      setState(() {
        _busy = false;
        _failed = true;
        _message = s.pdf.failed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    return AlertDialog(
      title: Text(s.pdf.title),
      content: SizedBox(
        width: 460,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('${s.pdf.scope}: '),
                const SizedBox(width: 8),
                SegmentedButton<bool>(
                  key: const Key('manual-pdf-scope'),
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: false, label: Text(s.pdf.scopePage)),
                    ButtonSegment(value: true, label: Text(s.pdf.scopeAll)),
                  ],
                  selected: {_whole},
                  onSelectionChanged: _busy ? null : (v) => setState(() => _whole = v.first),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(s.pdf.note, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant)),
            if (_busy) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                  const SizedBox(width: 8),
                  Text(s.pdf.building),
                ],
              ),
            ],
            if (_message != null) ...[
              const SizedBox(height: 12),
              Text(
                _message!,
                key: const Key('manual-pdf-message'),
                style: TextStyle(color: _failed ? scheme.error : scheme.primary),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: _busy ? null : () => Navigator.pop(context), child: Text(s.pdf.close)),
        FilledButton.icon(
          key: const Key('manual-pdf-save'),
          onPressed: _busy ? null : _save,
          icon: const Icon(Icons.picture_as_pdf_outlined),
          label: Text(s.pdf.save),
        ),
      ],
    );
  }
}
