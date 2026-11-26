import 'package:app_shell/app_shell.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../i18n/strings_provider.dart';

/// アクセス権設定。部署・担当者・実効の 3 つを 1 画面にまとめる。部署または担当者を選び、すべてのアクセスパスについて、許可(チェック)と
/// 書き込みの可否を 1 画面で切り替えて、まとめて保存する。「実効」は、担当者を選んで、部署から受け継ぐ分を含めた実際の権限を読むだけ
/// (保存しない。DB のビュー `effectiveaccesspath`)。台帳(アクセスパス・部署・担当者・実効)は、画面の下の「台帳」から開く(メニューには出さない)。
///
/// - 取得元は登録簿(`entityCatalogProvider`)の `accesspath`・`deptaccesspath`・`staffaccesspermission`(GraphQL 版・サンプルのどちらでも動く)。
/// - 保存は差分だけ: 許可を付けた行は登録、外した行は論理削除、書き込みを変えた行は更新。別々の呼び出しのため、途中で失敗したときは
///   読み直して実際の状態を示し、知らせる。
/// - 担当者の許可は、所属する部署の権限に足すためだけに使う(減らせない)。部署から受け継ぐ権限は、ここでは変えない。
///
/// パターン: Facade(複数の台帳の読み書きを 1 画面の操作にまとめる)
class AccessBulkPage extends ConsumerStatefulWidget {
  const AccessBulkPage({super.key, this.initialScope = 'department', this.initialTargetId});

  final String initialScope;
  final String? initialTargetId;

  @override
  ConsumerState<AccessBulkPage> createState() => _AccessBulkPageState();
}

/// 1 つのアクセスパスの設定。
class _Setting {
  _Setting({required this.allowed, required this.write});

  bool allowed;
  bool write;
}

class _AccessBulkPageState extends ConsumerState<AccessBulkPage> {
  late String _scope = switch (widget.initialScope) {
    'staff' => 'staff',
    'effective' => 'effective',
    _ => 'department',
  };
  final Map<String, bool> _fromDepartment = {}; // 実効: アクセスパス ID → 部署から受け継いだか
  String? _targetId;
  List<EntityOption> _targets = const [];
  List<EntityRecord> _paths = const [];
  Map<String, EntityRecord> _existing = {}; // アクセスパス ID → 保存済みの行
  final Map<String, _Setting> _settings = {};
  final TextEditingController _filter = TextEditingController();
  bool _loadingTargets = true;
  bool _loadingRows = false;
  bool _failed = false;
  bool _saving = false;
  bool _saveFailed = false;
  bool _saved = false;

  @override
  void initState() {
    super.initState();
    _targetId = widget.initialTargetId;
    _loadTargets();
  }

  @override
  void dispose() {
    _filter.dispose();
    super.dispose();
  }

  EntityCatalog get _catalog => ref.read(entityCatalogProvider);
  bool get _readOnly => _scope == 'effective';
  String get _targetEntity => _scope == 'department' ? 'department' : 'staff';
  String get _ledgerEntity => switch (_scope) {
    'staff' => 'staffaccesspermission',
    'effective' => 'effectiveaccesspath',
    _ => 'deptaccesspath',
  };
  String get _column => _scope == 'department' ? 'department' : 'staff';

  Future<void> _loadTargets() async {
    setState(() {
      _loadingTargets = true;
      _failed = false;
    });
    try {
      final repository = _catalog.repository(_targetEntity)!;
      final records = await repository.find(take: 5000);
      final options = <EntityOption>[
        for (final r in records) EntityOption(r.id, await _catalog.labelOf(repository.definition, r)),
      ]..sort((a, b) => a.label.compareTo(b.label));
      final paths = await _catalog.repository('accesspath')!.find(take: 5000);
      if (!mounted) return;
      setState(() {
        _paths = [...paths]..sort((a, b) => a.valueOf('usecase_path').compareTo(b.valueOf('usecase_path')));
        _targets = options;
        if (!options.any((o) => o.id == _targetId)) _targetId = null;
        _loadingTargets = false;
      });
      await _loadRows();
    } catch (_) {
      if (mounted) {
        setState(() {
          _loadingTargets = false;
          _failed = true;
        });
      }
    }
  }

  Future<void> _loadRows() async {
    final target = _targetId;
    _settings.clear();
    _fromDepartment.clear();
    _existing = {};
    if (target == null) {
      if (mounted) setState(() => _loadingRows = false);
      return;
    }
    setState(() {
      _loadingRows = true;
      _failed = false;
    });
    try {
      final rows = await _catalog.repository(_ledgerEntity)!.find(take: 20000);
      final mine = {
        for (final r in rows)
          if (r.valueOf(_column) == target) r.valueOf('access_path'): r,
      };
      if (!mounted) return;
      setState(() {
        _existing = mine;
        for (final p in _paths) {
          final row = mine[p.id];
          _settings[p.id] = _Setting(
            allowed: row != null,
            write: row?.valueOf(_readOnly ? 'can_write' : 'write') == flagOn,
          );
          if (_readOnly) _fromDepartment[p.id] = row?.valueOf('from_department') == flagOn;
        }
        _loadingRows = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _loadingRows = false;
          _failed = true;
        });
      }
    }
  }

  bool _changed(String pathId) {
    final s = _settings[pathId];
    if (s == null) return false;
    final row = _existing[pathId];
    if (row == null) return s.allowed;
    return !s.allowed || (row.valueOf('write') == flagOn) != s.write;
  }

  int get _changeCount => [for (final p in _paths) if (_changed(p.id)) p].length;

  Future<void> _save() async {
    final target = _targetId;
    if (target == null || _saving || _readOnly) return;
    setState(() {
      _saving = true;
      _saveFailed = false;
      _saved = false;
    });
    final repository = _catalog.repository(_ledgerEntity)!;
    var failed = false;
    try {
      for (final p in _paths) {
        if (!_changed(p.id)) continue;
        final s = _settings[p.id]!;
        final row = _existing[p.id];
        if (row == null) {
          await repository.save(
            EntityRecord(id: '', values: {_column: target, 'access_path': p.id, 'write': s.write ? flagOn : ''}),
          );
        } else if (!s.allowed) {
          await repository.remove(row.id);
        } else {
          await repository.save(row.copyWith(values: {...row.values, 'write': s.write ? flagOn : ''}));
        }
      }
    } catch (_) {
      failed = true;
    }
    if (mounted) await _loadRows();
    if (mounted) {
      setState(() {
        _saving = false;
        _saveFailed = failed;
        _saved = !failed;
      });
    }
  }

  void _setAll(bool allowed) => setState(() {
    for (final p in _visible()) {
      final s = _settings[p.id];
      if (s == null) continue;
      s.allowed = allowed;
      if (!allowed) s.write = false;
    }
    _saved = false;
  });

  List<EntityRecord> _visible() {
    final q = _filter.text.trim().toLowerCase();
    if (q.isEmpty) return _paths;
    return [
      for (final p in _paths)
        if ('${p.valueOf('name_ja')} ${p.valueOf('name_en')} ${p.valueOf('usecase_path')}'.toLowerCase().contains(q)) p,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(accessControlStringsProvider).bulk;
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: s.title,
      backLabel: s.back,
      body: _loadingTargets
          ? const LoadingIndicator.centered()
          : _failed && _targets.isEmpty
          ? Center(child: Text(s.loadFailed, key: const Key('ab-load-failed'), style: TextStyle(color: scheme.error)))
          : ListView(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
              children: [
                Text(_readOnly ? s.hintEffective : s.hint, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 12),
                _selector(s),
                const SizedBox(height: 12),
                if (_targetId == null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(s.pickTarget, key: const Key('ab-pick-target')),
                  )
                else if (_loadingRows)
                  const Padding(padding: EdgeInsets.all(24), child: LoadingIndicator.centered())
                else ...[
                  _toolbar(s),
                  const SizedBox(height: 8),
                  _table(s, scheme),
                  if (!_readOnly) ...[
                    const SizedBox(height: 16),
                    _status(s, scheme),
                    const SizedBox(height: 8),
                    ActionButtons(
                      primaryKey: const Key('ab-save'),
                      primaryLabel: s.save,
                      onPrimary: _saving || _changeCount == 0 ? null : _save,
                      secondaryKey: const Key('ab-reset'),
                      secondaryLabel: s.reset,
                      onSecondary: _saving || _changeCount == 0 ? null : _loadRows,
                    ),
                  ],
                ],
                const SizedBox(height: 24),
                _ledgers(s),
              ],
            ),
    );
  }

  Widget _selector(dynamic s) {
    return Wrap(
      spacing: 16,
      runSpacing: 12,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SegmentedButton<String>(
          key: const Key('ab-scope'),
          showSelectedIcon: false,
          segments: [
            ButtonSegment(value: 'department', label: Text(s.scopeDepartment as String)),
            ButtonSegment(value: 'staff', label: Text(s.scopeStaff as String)),
            ButtonSegment(value: 'effective', label: Text(s.scopeEffective as String)),
          ],
          selected: {_scope},
          onSelectionChanged: _saving
              ? null
              : (v) {
                  setState(() {
                    _scope = v.first;
                    _targetId = null;
                    _saved = false;
                    _settings.clear();
                  });
                  _loadTargets();
                },
        ),
        SizedBox(
          width: 360,
          child: DropdownButtonFormField<String>(
            key: ValueKey('ab-target:$_scope:${_targets.length}'),
            initialValue: _targetId,
            isExpanded: true,
            decoration: InputDecoration(
              labelText: (_scope == 'department' ? s.targetDepartment : s.targetStaff) as String,
              border: const OutlineInputBorder(),
            ),
            items: [for (final o in _targets) DropdownMenuItem(value: o.id, child: Text(o.label, overflow: TextOverflow.ellipsis))],
            onChanged: _saving
                ? null
                : (v) {
                    setState(() {
                      _targetId = v;
                      _saved = false;
                    });
                    _loadRows();
                  },
          ),
        ),
      ],
    );
  }

  Widget _toolbar(dynamic s) {
    return Wrap(
      spacing: 12,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SizedBox(
          width: 280,
          child: TextField(
            key: const Key('ab-filter'),
            controller: _filter,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(Icons.search, size: 18),
              hintText: s.filter as String,
              border: const OutlineInputBorder(),
            ),
            onChanged: (_) => setState(() {}),
          ),
        ),
        if (!_readOnly) ...[
          OutlinedButton(key: const Key('ab-all'), onPressed: () => _setAll(true), child: Text(s.allowAll as String)),
          OutlinedButton(key: const Key('ab-none'), onPressed: () => _setAll(false), child: Text(s.denyAll as String)),
        ],
      ],
    );
  }

  Widget _table(dynamic s, ColorScheme scheme) {
    final rows = [
      for (final p in _visible())
        if (!_readOnly || (_settings[p.id]?.allowed ?? false)) p,
    ];
    if (rows.isEmpty) {
      return Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: Text(s.empty as String, key: const Key('ab-empty')));
    }
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                SizedBox(width: 72, child: Text(s.colAllow as String, style: const TextStyle(fontWeight: FontWeight.w700))),
                SizedBox(width: 72, child: Text(s.colWrite as String, style: const TextStyle(fontWeight: FontWeight.w700))),
                Expanded(child: Text(s.colPage as String, style: const TextStyle(fontWeight: FontWeight.w700))),
              ],
            ),
          ),
          const Divider(height: 1),
          for (final p in rows) _row(p, scheme),
        ],
      ),
    );
  }

  Widget _row(EntityRecord p, ColorScheme scheme) {
    final setting = _settings[p.id] ?? _Setting(allowed: false, write: false);
    final changed = _changed(p.id);
    final name = p.valueOf('name_ja').isEmpty ? p.valueOf('name_en') : p.valueOf('name_ja');
    return Container(
      color: changed ? scheme.primaryContainer.withValues(alpha: 0.35) : null,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          SizedBox(
            width: 72,
            child: Checkbox(
              key: Key('ab-allow:${p.id}'),
              value: setting.allowed,
              onChanged: _saving || _readOnly
                  ? null
                  : (v) => setState(() {
                      setting.allowed = v ?? false;
                      if (!setting.allowed) setting.write = false;
                      _saved = false;
                    }),
            ),
          ),
          SizedBox(
            width: 72,
            child: Checkbox(
              key: Key('ab-write:${p.id}'),
              value: setting.write,
              onChanged: _saving || _readOnly || !setting.allowed
                  ? null
                  : (v) => setState(() {
                      setting.write = v ?? false;
                      _saved = false;
                    }),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(child: Text(name)),
                      if (_readOnly && (_fromDepartment[p.id] ?? false)) ...[
                        const SizedBox(width: 8),
                        Chip(
                          key: Key('ab-from-dept:${p.id}'),
                          label: Text(ref.read(accessControlStringsProvider).bulk.fromDepartment),
                          visualDensity: VisualDensity.compact,
                        ),
                      ],
                    ],
                  ),
                  Text(
                    p.valueOf('usecase_path'),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 管理用の台帳(アクセスパス・部署・担当者・実効)。メニューには出さず、ここから開く。
  Widget _ledgers(dynamic s) {
    Widget link(String key, String label) => TextButton(
      key: Key('ab-ledger:$key'),
      onPressed: () => context.push('/e/$key'),
      child: Text(label),
    );
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(s.ledgers as String, style: Theme.of(context).textTheme.labelLarge),
        link('accesspath', s.ledgerAccessPath as String),
        link('deptaccesspath', s.ledgerDepartment as String),
        link('staffaccesspermission', s.ledgerStaff as String),
        link('effectiveaccesspath', s.ledgerEffective as String),
      ],
    );
  }

  Widget _status(dynamic s, ColorScheme scheme) {
    if (_saveFailed) return Text(s.saveFailed as String, key: const Key('ab-save-failed'), style: TextStyle(color: scheme.error));
    if (_saved) return Text(s.saved as String, key: const Key('ab-saved'));
    final n = _changeCount;
    return Text(n == 0 ? s.noChanges as String : (s.changes as dynamic)(n: n) as String, key: const Key('ab-changes'));
  }
}
