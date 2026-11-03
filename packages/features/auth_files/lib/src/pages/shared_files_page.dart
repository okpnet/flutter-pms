import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../file_gateway.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// 共有ファイル。ファイルIDで版の履歴を見て、アップロード(上書きせず新しい版を作る)とダウンロードを行う。
///
/// 一覧・参照・ダウンロード・アップロードは、ログインしているすべてのユーザーができる。
class SharedFilesPage extends ConsumerStatefulWidget {
  const SharedFilesPage({super.key});

  @override
  ConsumerState<SharedFilesPage> createState() => _SharedFilesPageState();
}

class _SharedFilesPageState extends ConsumerState<SharedFilesPage>
    with BusyAction {
  static final _idPattern = RegExp(r'^[A-Za-z0-9_-]{1,64}$');

  final _fileId = TextEditingController();
  final _comment = TextEditingController();
  List<StoredFile>? _history;
  String? _notice;

  @override
  void dispose() {
    _fileId.dispose();
    _comment.dispose();
    super.dispose();
  }

  bool _validId() {
    final ok = _idPattern.hasMatch(_fileId.text.trim());
    if (!ok) {
      setState(() {
        errorText = ref.read(authFilesStringsProvider).files.invalidId;
        _notice = null;
      });
    }
    return ok;
  }

  Future<void> _load() async {
    if (!_validId()) return;
    await run(() async {
      final list = await ref
          .read(sharedFileServiceProvider)
          .history(_fileId.text.trim());
      if (mounted) setState(() => _history = list);
    }, operation: 'history');
  }

  Future<void> _upload() async {
    if (!_validId()) return;
    final t = ref.read(authFilesStringsProvider);
    var cancelled = false;
    final ok = await run(() async {
      final picked = await ref.read(filePickerGatewayProvider).pick();
      if (picked == null) {
        cancelled = true;
        return;
      }
      final stored = await ref
          .read(sharedFileServiceProvider)
          .upload(
            appFileId: _fileId.text.trim(),
            bytes: picked.bytes,
            filename: picked.name,
            mimeType: picked.mimeType,
            comment: _comment.text.trim().isEmpty ? null : _comment.text.trim(),
          );
      if (mounted) {
        setState(() => _notice = t.files.uploaded(revision: stored.revision));
      }
    }, operation: 'upload');
    if (ok && !cancelled) await _load();
  }

  Future<void> _download(StoredFile file) async {
    final t = ref.read(authFilesStringsProvider);
    await run(() async {
      final downloaded = await ref
          .read(sharedFileServiceProvider)
          .download(file.appFileId, revision: file.revision);
      if (downloaded == null) {
        if (mounted) setState(() => _notice = t.files.empty);
        return;
      }
      final saved = await ref
          .read(fileSaverGatewayProvider)
          .save(downloaded.file.originalName, downloaded.bytes);
      if (saved && mounted) setState(() => _notice = t.files.downloaded);
    }, operation: 'download');
  }

  static String _size(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / 1024 / 1024).toStringAsFixed(1)} MB';
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final history = _history;
    return ScreenScaffold(
      title: t.files.title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(t.files.description),
          const SizedBox(height: 12),
          TextField(
            controller: _fileId,
            enabled: !busy,
            decoration: InputDecoration(
              labelText: t.files.fileId,
              helperText: t.files.fileIdHint,
            ),
            onSubmitted: (_) => _load(),
          ),
          TextField(
            controller: _comment,
            enabled: !busy,
            decoration: InputDecoration(labelText: t.files.comment),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children: [
              OutlinedButton.icon(
                onPressed: busy ? null : _load,
                icon: const Icon(Icons.history),
                label: Text(t.files.search),
              ),
              FilledButton.icon(
                onPressed: busy ? null : _upload,
                icon: const Icon(Icons.upload_file),
                label: Text(t.files.upload),
              ),
            ],
          ),
          if (busy) const LinearProgressIndicator(),
          if (errorText != null) MessageLine(errorText!),
          if (_notice != null) MessageLine(_notice!, isError: false),
          const SizedBox(height: 12),
          if (history != null && history.isEmpty) Text(t.files.empty),
          if (history != null && history.isNotEmpty)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text(t.files.revision)),
                  DataColumn(label: Text(t.files.name)),
                  DataColumn(label: Text(t.files.size)),
                  const DataColumn(label: SizedBox.shrink()),
                ],
                rows: [
                  for (final f in history)
                    DataRow(
                      cells: [
                        DataCell(Text('${f.revision}')),
                        DataCell(Text(f.originalName)),
                        DataCell(Text(_size(f.sizeBytes))),
                        DataCell(
                          IconButton(
                            tooltip: t.files.download,
                            icon: const Icon(Icons.download),
                            onPressed: busy ? null : () => _download(f),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
