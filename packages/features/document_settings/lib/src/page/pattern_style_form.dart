import 'dart:convert';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/approval_pattern_source.dart';
import '../i18n/strings_provider.dart';
import 'settings_preview.dart';

/// 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)の編集。
///
/// パターンを選び、「標準の様式を使う」(NULL)か、標準に重ねる様式(JSON。書いた項目だけが標準を上書き)を書く。JSON はスキーマ
/// (`validateStampStyle`)で検査し、誤りがあれば保存しない。保存は設定(`info_app.settings`)の保存とは別で、このタブの「保存」が
/// パターンへ直接書く(取得元 `IApprovalPatternSource.saveStampStyle`。DB でも管理者だけ)。下に、標準([standard])に重ねた結果の
/// プレビューを出す(書いている途中の様式でも、読める間は反映する)。
class PatternStyleForm extends ConsumerStatefulWidget {
  const PatternStyleForm({super.key, required this.standard, required this.s});

  /// 標準の設定(いまの編集中の設定。様式を重ねる土台)。
  final AppSettings standard;
  final DocumentSettingsStrings s;

  @override
  ConsumerState<PatternStyleForm> createState() => _PatternStyleFormState();
}

enum _Notice { saved, saveFailed }

class _PatternStyleFormState extends ConsumerState<PatternStyleForm> {
  static const _maxIssues = 30;

  String? _patternId;
  bool _useStandard = true;
  final TextEditingController _text = TextEditingController(text: '{}');
  List<SettingsSchemaIssue> _issues = const [];
  String? _error;
  _Notice? _notice;
  bool _saving = false;
  int _page = 0;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  String _pretty(Map<String, dynamic> m) => const JsonEncoder.withIndent('  ').convert(m);

  /// 選んだパターンの保存済みの様式を、入力欄に入れる。
  void _load(ApprovalPatternOption? option) {
    _patternId = option?.id;
    _useStandard = option?.stampStyle == null;
    _text.text = _pretty(option?.stampStyle ?? const {});
    _issues = const [];
    _error = null;
    _notice = null;
  }

  /// いま入力している様式(読める・スキーマに通るもの)。標準のとき・読めないときは null。
  Map<String, dynamic>? _current() {
    if (_useStandard) return null;
    try {
      final v = jsonDecode(_text.text);
      if (v is Map && validateStampStyle(v).isEmpty) return v.cast<String, dynamic>();
    } on FormatException {
      // 書いている途中は、標準のプレビューのまま
    }
    return null;
  }

  /// 検査して、誤りがなければ様式(標準のときは null)を返す。誤りは状態に出す。保存してよいとき true。
  (bool ok, Map<String, dynamic>? style) _validated() {
    if (_useStandard) return (true, null);
    Object? v;
    try {
      v = jsonDecode(_text.text);
    } on FormatException {
      setState(() {
        _error = widget.s.patternStyle.invalid;
        _issues = const [];
      });
      return (false, null);
    }
    if (v is! Map) {
      setState(() {
        _error = widget.s.patternStyle.notObject;
        _issues = const [];
      });
      return (false, null);
    }
    final issues = validateStampStyle(v);
    setState(() {
      _error = null;
      _issues = issues;
    });
    return (issues.isEmpty, v.cast<String, dynamic>());
  }

  Future<void> _save() async {
    final id = _patternId;
    if (id == null || _saving) return;
    final (ok, style) = _validated();
    if (!ok) return;
    setState(() {
      _saving = true;
      _notice = null;
    });
    try {
      await ref.read(documentSettingsPatternSourceProvider).saveStampStyle(id, style);
      ref.invalidate(approvalPatternOptionsProvider);
      if (mounted) setState(() => _notice = _Notice.saved);
    } catch (_) {
      if (mounted) setState(() => _notice = _Notice.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.s;
    final scheme = Theme.of(context).colorScheme;
    final options = ref.watch(approvalPatternOptionsProvider);
    return options.when(
      loading: () => Text(s.approval.loading, key: const Key('ds-pstyle-loading')),
      error: (_, _) => Text(s.approval.loadFailed, key: const Key('ds-pstyle-error'), style: TextStyle(color: scheme.error)),
      data: (patterns) {
        if (patterns.isEmpty) return Text(s.patternStyle.none, key: const Key('ds-pstyle-empty'));
        // 選んでいるパターンが無い・消えたときは、先頭を選ぶ
        final selected = patterns.where((p) => p.id == _patternId).firstOrNull;
        if (selected == null) _load(patterns.first);
        final current = selected ?? patterns.first;
        return _body(context, patterns, current);
      },
    );
  }

  Widget _body(BuildContext context, List<ApprovalPatternOption> patterns, ApprovalPatternOption current) {
    final s = widget.s;
    final scheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context).textTheme;
    final override = _current();
    final style = StampStyle.resolve(widget.standard.stamp.toJson(), override);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(s.patternStyle.hint, style: theme.bodySmall),
        const SizedBox(height: 12),
        SizedBox(
          width: 420,
          child: DropdownButtonFormField<String>(
            key: Key('ds-pstyle-pattern-${current.id}'),
            initialValue: current.id,
            isExpanded: true,
            decoration: InputDecoration(labelText: s.patternStyle.pattern, isDense: true, border: const OutlineInputBorder()),
            items: [
              for (final p in patterns) DropdownMenuItem(value: p.id, child: Text(p.name.isEmpty ? p.id : p.name)),
            ],
            onChanged: (id) {
              if (id == null) return;
              setState(() => _load(patterns.firstWhere((p) => p.id == id)));
            },
          ),
        ),
        const SizedBox(height: 8),
        SwitchListTile(
          key: const Key('ds-pstyle-standard'),
          contentPadding: EdgeInsets.zero,
          value: _useStandard,
          title: Text(s.patternStyle.useStandard),
          onChanged: (v) => setState(() {
            _useStandard = v;
            _notice = null;
            _error = null;
            _issues = const [];
          }),
        ),
        if (!_useStandard) ...[
          Text(s.patternStyle.jsonHint, style: theme.bodySmall),
          const SizedBox(height: 6),
          TextField(
            key: const Key('ds-pstyle-json'),
            controller: _text,
            minLines: 8,
            maxLines: null,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 12.5),
            onChanged: (_) => setState(() {
              _notice = null;
              _error = null;
              _issues = const [];
            }),
            decoration: InputDecoration(labelText: s.patternStyle.json, border: const OutlineInputBorder(), errorText: _error),
          ),
          if (_issues.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              key: const Key('ds-pstyle-issues'),
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: scheme.errorContainer, borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.patternStyle.schemaErrors(count: _issues.length),
                    style: TextStyle(fontWeight: FontWeight.w700, color: scheme.onErrorContainer),
                  ),
                  const SizedBox(height: 4),
                  for (final i in _issues.take(_maxIssues))
                    Text(i.toString(), style: TextStyle(fontSize: 12.5, color: scheme.onErrorContainer)),
                ],
              ),
            ),
          ],
        ] else
          Text(s.patternStyle.usingStandard, key: const Key('ds-pstyle-using-standard'), style: theme.bodySmall),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilledButton(key: const Key('ds-pstyle-save'), onPressed: _saving ? null : _save, child: Text(s.patternStyle.save)),
            OutlinedButton(
              key: const Key('ds-pstyle-revert'),
              onPressed: _saving ? null : () => setState(() => _load(current)),
              child: Text(s.patternStyle.revert),
            ),
            if (_notice == _Notice.saved) Text(s.patternStyle.saved, key: const Key('ds-pstyle-saved'), style: TextStyle(color: scheme.primary)),
            if (_notice == _Notice.saveFailed)
              Text(s.patternStyle.saveFailed, key: const Key('ds-pstyle-save-failed'), style: TextStyle(color: scheme.error)),
          ],
        ),
        const SizedBox(height: 16),
        Text(s.patternStyle.preview, style: theme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        KeyedSubtree(
          key: const Key('ds-pstyle-preview'),
          child: SettingsPreview(
            settings: widget.standard.copyWith(stamp: style),
            page: _page,
            onPage: (p) => setState(() => _page = p),
            s: s,
          ),
        ),
      ],
    );
  }
}
