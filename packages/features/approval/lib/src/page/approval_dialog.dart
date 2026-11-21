import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/approval_data.dart';
import '../i18n/labels.dart';
import '../i18n/strings_provider.dart';

String approvalDateText(DateTime? d) => d == null
    ? ''
    : '${d.year.toString().padLeft(4, '0')}/${d.month.toString().padLeft(2, '0')}/${d.day.toString().padLeft(2, '0')}';

String approvalDateTimeText(DateTime d) =>
    '${approvalDateText(d)} ${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';

/// 承認の確認のダイアログ。何についての承認かを一覧で確認し、担当者のパスワードを入力して承認する。
///
/// パスワードが違うときはその場でエラー(承認は登録されない)。照合できたら登録し、結果(承認 N 件・失敗の理由)を表示する。
/// 閉じたとき、承認が 1 件でも登録されていれば true を返す(呼び出し側が一覧を読み直す)。
Future<bool> showApprovalDialog(BuildContext context, {required List<PendingApproval> items, required String approverName}) async {
  final result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => _ApprovalDialog(items: items, approverName: approverName),
  );
  return result ?? false;
}

class _ApprovalDialog extends ConsumerStatefulWidget {
  const _ApprovalDialog({required this.items, required this.approverName});
  final List<PendingApproval> items;
  final String approverName;

  @override
  ConsumerState<_ApprovalDialog> createState() => _ApprovalDialogState();
}

class _ApprovalDialogState extends ConsumerState<_ApprovalDialog> {
  final _password = TextEditingController();
  var _busy = false;
  String? _error;
  List<ApprovalOutcome>? _outcomes;
  DateTime? _at;

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  Future<void> _confirm() async {
    final s = ref.read(approvalStringsProvider);
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final ok = await ref.read(approvalPasswordVerifierProvider).verify(_password.text);
      if (!ok) {
        if (!mounted) return;
        setState(() {
          _busy = false;
          _error = s.dialog.passwordWrong;
        });
        return;
      }
      final outcomes = await ref.read(approvalGatewayProvider).approve([for (final i in widget.items) i.preapprovalId]);
      if (!mounted) return;
      setState(() {
        _busy = false;
        _outcomes = outcomes;
        _at = ref.read(approvalClockProvider)();
        _password.clear();
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = s.dialog.passwordUnavailable;
      });
    }
  }

  String _errorText(ApprovalOutcome o) {
    final e = ref.read(approvalStringsProvider).dialog.errors;
    final msg = o.errorMessage ?? '';
    // DB の errcode と、エラーの文で見分ける(errcode が GraphQL の応答に含まれないことがあるため)
    if (msg.contains('承認できる担当者ではありません')) return e.notApprover;
    if (msg.contains('前の段階')) return e.notYet;
    if (msg.contains('すでに承認')) return e.already;
    if (o.errorCode == 'OPR01' || msg.contains('見つかりません')) return e.notFound;
    return msg.isEmpty ? e.other : msg;
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(approvalStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    final outcomes = _outcomes;
    if (outcomes != null) {
      final okCount = outcomes.where((o) => o.ok).length;
      final failed = outcomes.where((o) => !o.ok).toList();
      return AlertDialog(
        title: Text(s.dialog.resultTitle),
        content: SizedBox(
          width: 560,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(s.dialog.resultOk(n: okCount), key: const Key('approval-result-ok')),
              if (okCount > 0) ...[
                const SizedBox(height: 4),
                Text(s.dialog.by(name: widget.approverName)),
                Text(s.dialog.at(at: approvalDateTimeText(_at!))),
              ],
              if (failed.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(s.dialog.resultFailed(n: failed.length), key: const Key('approval-result-failed'), style: TextStyle(color: scheme.error)),
                for (final o in failed)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '${widget.items.where((i) => i.preapprovalId == o.preapprovalId).map((i) => i.subject).firstOrNull ?? o.preapprovalId}: ${_errorText(o)}',
                      style: TextStyle(color: scheme.error),
                    ),
                  ),
              ],
            ],
          ),
        ),
        actions: [
          FilledButton(key: const Key('approval-close'), onPressed: () => Navigator.pop(context, okCount > 0), child: Text(s.dialog.close)),
        ],
      );
    }
    return AlertDialog(
      title: Text(s.dialog.title),
      content: SizedBox(
        width: 640,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(s.dialog.note),
            const SizedBox(height: 10),
            Flexible(
              child: SingleChildScrollView(
                child: DataTable(
                  key: const Key('approval-confirm-table'),
                  columnSpacing: 16,
                  columns: [
                    DataColumn(label: Text(s.list.cols.subject)),
                    DataColumn(label: Text(s.list.cols.detail)),
                    DataColumn(label: Text(s.list.cols.applicant)),
                    DataColumn(label: Text(s.list.cols.appliedAt)),
                  ],
                  rows: [
                    for (final i in widget.items)
                      DataRow(cells: [
                        DataCell(Text('${approvalKindLabel(s, i.kind)} ${i.reference} ${i.subject}'.trim())),
                        DataCell(Text(i.detail)),
                        DataCell(Text(i.applicant)),
                        DataCell(Text(approvalDateText(i.appliedAt))),
                      ]),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const Key('approval-password'),
              controller: _password,
              obscureText: true,
              enabled: !_busy,
              autofocus: true,
              decoration: InputDecoration(labelText: s.dialog.password, border: const OutlineInputBorder(), isDense: true, errorText: _error),
              onSubmitted: (_) => _busy ? null : _confirm(),
            ),
            if (_busy) ...[
              const SizedBox(height: 10),
              Row(children: [const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)), const SizedBox(width: 8), Text(s.dialog.busy)]),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(key: const Key('approval-cancel'), onPressed: _busy ? null : () => Navigator.pop(context, false), child: Text(s.dialog.cancel)),
        FilledButton(key: const Key('approval-confirm'), onPressed: _busy ? null : _confirm, child: Text(s.dialog.confirm)),
      ],
    );
  }
}
