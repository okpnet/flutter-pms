import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart' show localeProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown_view/markdown_view.dart';
import 'package:wysiwyg_editor/wysiwyg_editor.dart';

import '../body/document_body_gateway.dart';
import '../i18n/strings_provider.dart';

// 読み込みの失敗は、自動で再試行せず、そのまま画面に出す(見つからない・接続できない)
final _bodyProvider = FutureProvider.autoDispose.family<DocumentBody, String>(
  (ref, contentId) => ref.watch(documentBodyGatewayProvider).load(contentId),
  retry: (_, _) => null,
);

/// 文書コンテンツの本文の画面。閲覧(`MarkdownView`)と、管理者だけの編集(`WysiwygEditor`。ビジュアル / Markdown)を持つ。
/// Markdown の表示・編集・変換は `packages/foundation` の部品に任せ、この画面は組み合わせ・保存・取り消しだけを持つ。
class DocumentBodyPage extends ConsumerStatefulWidget {
  const DocumentBodyPage({super.key, required this.contentId, this.startEditing = false});

  final String contentId;
  final bool startEditing;

  @override
  ConsumerState<DocumentBodyPage> createState() => _DocumentBodyPageState();
}

class _DocumentBodyPageState extends ConsumerState<DocumentBodyPage> {
  late bool _editing = widget.startEditing;
  WysiwygEditorController? _controller;
  var _saving = false;
  String? _error;

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityDocumentStringsProvider).body;
    final admin = ref.watch(documentBodyIsAdminProvider);
    final body = ref.watch(_bodyProvider(widget.contentId));
    return body.when(
      loading: () => ScreenScaffold(title: s.title, body: Center(child: Text(s.loading))),
      error: (e, _) => ScreenScaffold(
        title: s.title,
        body: Center(child: Text(e is DocumentBodyNotFound ? s.notFound : s.saveFailed)),
      ),
      data: (b) {
        final editing = _editing && admin;
        return ScreenScaffold(
          title: b.title.isEmpty ? s.title : b.title,
          actions: [
            if (!admin) Chip(label: Text(s.readOnly)),
            if (admin && !editing)
              FilledButton.icon(
                key: const Key('body-edit'),
                onPressed: () => setState(() {
                  _controller = WysiwygEditorController(b.markdown);
                  _editing = true;
                }),
                icon: const Icon(Icons.edit),
                label: Text(s.edit),
              ),
          ],
          body: editing ? _editor(context, b, s) : _viewer(b, s),
        );
      },
    );
  }

  Widget _viewer(DocumentBody b, dynamic s) => SingleChildScrollView(
    child: MarkdownView(key: const Key('body-view'), markdown: b.markdown, emptyText: s.noBody as String),
  );

  Widget _editor(BuildContext context, DocumentBody b, dynamic s) {
    final controller = _controller ??= WysiwygEditorController(b.markdown);
    final language = ref.watch(localeProvider).languageCode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WysiwygEditor(
          controller: controller,
          keyPrefix: 'body',
          labels: language == 'ja' ? const WysiwygEditorLabels.ja() : const WysiwygEditorLabels.en(),
        ),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ),
        const SizedBox(height: 16),
        ActionButtons(
          primaryLabel: s.save as String,
          primaryKey: const Key('body-save'),
          onPrimary: _saving ? null : () => _save(b, s),
          secondaryLabel: s.cancel as String,
          secondaryKey: const Key('body-cancel'),
          onSecondary: _saving ? null : () => _cancel(s),
        ),
      ],
    );
  }

  Future<void> _save(DocumentBody b, dynamic s) async {
    final controller = _controller!;
    if (!controller.isDirty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s.nothingChanged as String)));
      setState(() => _editing = false);
      return;
    }
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      await ref.read(documentBodyGatewayProvider).save(widget.contentId, controller.markdown);
      ref.invalidate(_bodyProvider(widget.contentId));
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s.saved as String)));
      setState(() {
        _editing = false;
        _controller = null;
      });
    } catch (_) {
      if (mounted) setState(() => _error = s.saveFailed as String);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _cancel(dynamic s) async {
    if (_controller?.isDirty ?? false) {
      final ok = await showConfirmDialog(
        context,
        title: s.discardTitle as String,
        message: s.discardMessage as String,
        confirmLabel: s.discard as String,
        cancelLabel: s.keepEditing as String,
        destructive: true,
      );
      if (!ok || !mounted) return;
    }
    setState(() {
      _editing = false;
      _controller = null;
    });
  }
}
