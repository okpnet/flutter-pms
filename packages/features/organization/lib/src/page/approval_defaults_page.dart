import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../approval_defaults/approval_defaults_gateway.dart';
import '../i18n/strings_provider.dart';

/// 標準の承認パターン。登録が申請になる対象(文書・受注・発注など)ごとに、使う承認パターンを選ぶ。
///
/// - 「承認不要(設定しない)」は、その対象の登録で承認を求めない(NULL)。文書(マニュアルなど)は承認パターンが必須のため、
///   承認が要らないときは、承認の段が無いパターンを選ぶ(未設定のときは、その案内を出す)。
/// - 承認パターンは外部キーで守られる(使用中のパターンは削除できない)。選択肢に無い ID が設定されていても、消さずに残す。
/// - 変更は「保存」で反映する(未保存の変更があるときは帯を出す)。変えられる人は、画面のアクセス権で決まる(DB のトリガーでは限らない)。
class ApprovalDefaultsPage extends ConsumerStatefulWidget {
  const ApprovalDefaultsPage({super.key});

  @override
  ConsumerState<ApprovalDefaultsPage> createState() => _ApprovalDefaultsPageState();
}

enum _Notice { saved, saveFailed }

class _ApprovalDefaultsPageState extends ConsumerState<ApprovalDefaultsPage> {
  ApprovalDefaults? _saved;
  ApprovalDefaults _draft = const ApprovalDefaults();
  List<ApprovalPatternChoice> _choices = const [];
  bool _loaded = false;
  bool _failed = false;
  bool _saving = false;
  _Notice? _notice;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final gateway = ref.read(approvalDefaultsGatewayProvider);
    try {
      final values = await gateway.load();
      final choices = await gateway.patterns();
      if (!mounted) return;
      setState(() {
        _saved = values;
        _draft = values;
        _choices = choices;
        _loaded = true;
        _failed = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _loaded = true;
          _failed = true;
        });
      }
    }
  }

  bool get _dirty => _saved != null && _draft != _saved;

  Future<void> _save() async {
    if (_saving) return;
    setState(() {
      _saving = true;
      _notice = null;
    });
    try {
      await ref.read(approvalDefaultsGatewayProvider).save(_draft);
      if (mounted) {
        setState(() {
          _saved = _draft;
          _notice = _Notice.saved;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _notice = _Notice.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  String _kind(dynamic s, String kind) => switch (kind) {
    'document' => s.kindDocument as String,
    'order' => s.kindOrder as String,
    'purchase' => s.kindPurchase as String,
    'unrecognized' => s.kindUnrecognized as String,
    'shipping_order' => s.kindShippingOrder as String,
    'complaint' => s.kindComplaint as String,
    'disposal' => s.kindDisposal as String,
    'recurrence_prevention' => s.kindRecurrencePrevention as String,
    _ => kind,
  };

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(organizationStringsProvider).approvalDefaults;
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: s.title,
      backLabel: s.back,
      body: !_loaded
          ? const LoadingIndicator.centered()
          : _failed
          ? Center(child: Text(s.loadFailed, key: const Key('ad-load-failed'), style: TextStyle(color: scheme.error)))
          : _form(context, s, scheme),
    );
  }

  Widget _form(BuildContext context, dynamic s, ColorScheme scheme) {
    final text = Theme.of(context).textTheme;
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      children: [
        Text(s.hint as String, style: text.bodySmall),
        const SizedBox(height: 12),
        if (_choices.isEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(s.empty as String, key: const Key('ad-empty'), style: TextStyle(color: scheme.error)),
          ),
        if (_dirty)
          Container(
            key: const Key('ad-unsaved'),
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: scheme.secondaryContainer, borderRadius: BorderRadius.circular(8)),
            child: Text(s.unsaved as String, style: TextStyle(color: scheme.onSecondaryContainer)),
          ),
        for (final kind in approvalDefaultKinds) ...[
          _row(s, kind),
          const SizedBox(height: 14),
        ],
        const SizedBox(height: 4),
        Wrap(
          spacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilledButton(key: const Key('ad-save'), onPressed: _saving || !_dirty ? null : _save, child: Text(s.save as String)),
            OutlinedButton(
              key: const Key('ad-revert'),
              onPressed: _saving || !_dirty ? null : () => setState(() => _draft = _saved!),
              child: Text(s.revert as String),
            ),
            if (_notice == _Notice.saved) Text(s.saved as String, key: const Key('ad-saved'), style: TextStyle(color: scheme.primary)),
            if (_notice == _Notice.saveFailed)
              Text(s.saveFailed as String, key: const Key('ad-save-failed'), style: TextStyle(color: scheme.error)),
          ],
        ),
      ],
    );
  }

  Widget _row(dynamic s, String kind) {
    final current = _draft.of(kind);
    final known = {for (final p in _choices) p.id: p.name.isEmpty ? p.id : p.name};
    final choices = <String, String>{
      '': s.none as String,
      ...known,
      // 一覧に無い ID(別の DB の値など)は、消さずに残して見えるようにする
      if (current != null && !known.containsKey(current)) current: (s.unknown as dynamic)(id: current) as String,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 460,
          child: DropdownButtonFormField<String>(
            key: Key('ad-$kind'),
            initialValue: choices.containsKey(current ?? '') ? (current ?? '') : '',
            isExpanded: true,
            decoration: InputDecoration(labelText: _kind(s, kind), isDense: true, border: const OutlineInputBorder()),
            items: [for (final e in choices.entries) DropdownMenuItem(value: e.key, child: Text(e.value))],
            onChanged: (v) => setState(() {
              _draft = _draft.with_(kind, (v == null || v.isEmpty) ? null : v);
              _notice = null;
            }),
          ),
        ),
        if (kind == 'document' && current == null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(s.documentNote as String, key: const Key('ad-document-note'), style: const TextStyle(fontSize: 12.5)),
          ),
      ],
    );
  }
}
