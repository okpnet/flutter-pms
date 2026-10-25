import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';

import '../catalog.dart';
import '../definition.dart';
import '../i18n/strings.g.dart';
import '../record.dart';
import 'entity_scope.dart';

/// 実体の編集(編集構造)。[id] が null のときは新規登録。
///
/// 項目の種類ごとの入力部品、必須・形式の検証、ツリーの親の付け替え、
/// 所有する子の台帳(下に表示)、削除(使用中は不可)を持つ。
/// 子の編集への遷移は呼び出し側([onOpenChild])が行う。
class EntityEditPage extends StatefulWidget {
  const EntityEditPage({
    super.key,
    required this.entityKey,
    required this.scope,
    required this.onOpenChild,
    this.id,
    this.parentId,
  });

  final String entityKey;
  final EntityScope scope;

  /// 編集する1件の id。null は新規。
  final String? id;

  /// 子の台帳の新規登録のとき、所有する親の id。
  final String? parentId;

  /// 子の編集を開く。[id] が null なら新規(親は [ownerId])。
  final Future<void> Function(String childKey, String? id, String ownerId)
  onOpenChild;

  @override
  State<EntityEditPage> createState() => _EntityEditPageState();
}

class _EntityEditPageState extends State<EntityEditPage> {
  final Map<String, TextEditingController> _text = {};
  final Map<String, String> _chosen = {};
  String? _treeParent;

  EntityDefinition? _definition;
  EntityRecord? _original;
  Map<String, List<EntityOption>> _options = {};
  List<EntityOption> _parentOptions = [];

  bool _loading = true;
  bool _notFound = false;
  Object? _loadError;
  Map<String, EntityFieldError> _errors = {};
  String? _failure;

  EntityScope get _scope => widget.scope;
  bool get _isNew => widget.id == null;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final repository = _scope.catalog.repository(widget.entityKey);
      if (repository == null) throw StateError('未登録の実体: ${widget.entityKey}');
      final definition = repository.definition;
      final options = await loadReferenceOptions(_scope.catalog, definition);
      final record = widget.id == null
          ? null
          : await repository.findById(widget.id!);
      var parentOptions = <EntityOption>[];
      if (definition.isTree) {
        parentOptions = [
          for (final r in await repository.find(take: 100000))
            if (r.id != widget.id)
              EntityOption(r.id, EntityCatalog.displayLabel(definition, r)),
        ];
      }
      if (!mounted) return;
      setState(() {
        _definition = definition;
        _options = options;
        _parentOptions = parentOptions;
        _original = record;
        _notFound = widget.id != null && record == null;
        for (final f in definition.fields) {
          final value = record?.valueOf(f.key) ?? '';
          if (f.kind == FieldKind.choice || f.kind == FieldKind.reference) {
            _chosen[f.key] = value;
          } else {
            _text[f.key] = TextEditingController(text: value);
          }
        }
        _treeParent = record?.parentId;
        _loading = false;
      });
    } catch (e) {
      if (mounted) {
        setState(() {
          _loadError = e;
          _loading = false;
        });
      }
    }
  }

  Map<String, String> _currentValues(EntityDefinition definition) => {
    for (final f in definition.fields)
      f.key: (f.kind == FieldKind.choice || f.kind == FieldKind.reference)
          ? (_chosen[f.key] ?? '')
          : (_text[f.key]?.text ?? ''),
  };

  Future<void> _save() async {
    final definition = _definition!;
    final repository = _scope.catalog.repository(widget.entityKey)!;
    try {
      await repository.save(
        EntityRecord(
          id: widget.id ?? '',
          values: _currentValues(definition),
          parentId: definition.isTree
              ? (_treeParent == null || _treeParent!.isEmpty
                    ? null
                    : _treeParent)
              : (_original?.parentId ?? widget.parentId),
        ),
      );
    } on EntityValidationException catch (e) {
      // 入力の誤りは画面に出すだけ(ログには残さない)
      setState(() {
        _errors = e.errors;
        _failure = null;
      });
      return;
    } catch (_) {
      setState(() => _failure = _scope.strings.saveFailed);
      return;
    }
    if (mounted) Navigator.of(context).pop();
  }

  Future<void> _delete() async {
    final id = widget.id;
    if (id == null) return;
    final strings = _scope.strings;
    final name = _displayName();
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(strings.confirmDelete.title),
        content: Text(strings.confirmDelete.message(name: name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(strings.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(strings.delete),
          ),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await _scope.catalog.delete(widget.entityKey, id);
    } on EntityInUseException catch (e) {
      // 使用中は想定内の拒否なので、画面に出すだけ(ログには残さない)
      setState(() {
        _failure = switch (e.reason) {
          EntityBlockReason.hasChildren => strings.validation.hasChildren,
          EntityBlockReason.referenced => strings.validation.referenced,
        };
      });
      return;
    } catch (_) {
      setState(() => _failure = strings.deleteFailed);
      return;
    }
    if (mounted) Navigator.of(context).pop();
  }

  String _displayName() {
    final definition = _definition;
    final record = _original;
    if (definition == null || record == null) return '';
    return EntityCatalog.displayLabel(definition, record);
  }

  String _errorText(EntityScreenStrings s, EntityFieldError error) =>
      switch (error) {
        EntityFieldError.required => s.validation.required,
        EntityFieldError.invalidNumber => s.validation.invalidNumber,
        EntityFieldError.invalidDate => s.validation.invalidDate,
        EntityFieldError.invalidChoice => s.validation.invalidChoice,
        EntityFieldError.parentCycle => s.validation.parentCycle,
      };

  @override
  Widget build(BuildContext context) {
    final scope = _scope;
    final strings = scope.strings;
    return Scaffold(
      appBar: AppBar(title: Text(scope.labels.entity(widget.entityKey))),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _loadError != null
          ? Center(child: Text(strings.loadFailed))
          : _notFound
          ? Center(child: Text(strings.notFound))
          : _form(),
    );
  }

  Widget _form() {
    final definition = _definition!;
    final scope = _scope;
    final strings = scope.strings;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          for (final f in definition.fields) _field(definition, f),
          if (definition.isTree) _parentField(definition),
          if (_failure != null)
            Text(_failure!, style: TextStyle(color: theme.colorScheme.error)),
          Row(
            spacing: 12,
            children: [
              FilledButton(onPressed: _save, child: Text(strings.save)),
              if (!_isNew)
                OutlinedButton(onPressed: _delete, child: Text(strings.delete)),
            ],
          ),
          if (!_isNew)
            for (final child in scope.catalog.childrenOf(widget.entityKey))
              _ChildSection(
                key: ValueKey('child:${child.key}'),
                definition: child,
                ownerId: widget.id!,
                scope: scope,
                onOpen: widget.onOpenChild,
              ),
        ],
      ),
    );
  }

  String _label(FieldDefinition f) {
    final base = _scope.labels.field(widget.entityKey, f.key);
    return f.required ? '$base *' : base;
  }

  String? _error(String key) {
    final e = _errors[key];
    return e == null ? null : _errorText(_scope.strings, e);
  }

  Widget _field(EntityDefinition definition, FieldDefinition f) {
    final strings = _scope.strings;
    switch (f.kind) {
      case FieldKind.text:
      case FieldKind.number:
      case FieldKind.multiline:
        return TextField(
          controller: _text[f.key],
          maxLines: f.kind == FieldKind.multiline ? 3 : 1,
          keyboardType: f.kind == FieldKind.number
              ? const TextInputType.numberWithOptions(decimal: true)
              : null,
          decoration: InputDecoration(
            labelText: _label(f),
            errorText: _error(f.key),
          ),
        );
      case FieldKind.date:
        return TextField(
          controller: _text[f.key],
          decoration: InputDecoration(
            labelText: _label(f),
            hintText: 'yyyy-MM-dd',
            errorText: _error(f.key),
            suffixIcon: IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () => _pickDate(f.key),
            ),
          ),
        );
      case FieldKind.choice:
        return _dropdown(f, [
          for (final o in f.options) EntityOption(o, o),
        ], strings);
      case FieldKind.reference:
        return _dropdown(f, _options[f.key] ?? const [], strings);
    }
  }

  Widget _dropdown(
    FieldDefinition f,
    List<EntityOption> options,
    EntityScreenStrings strings,
  ) {
    final value = _chosen[f.key] ?? '';
    final items = [
      if (!f.required || value.isEmpty)
        DropdownMenuItem(value: '', child: Text(strings.unselected)),
      for (final o in options)
        DropdownMenuItem(value: o.id, child: Text(o.label)),
      // 参照先が見つからない値は、そのまま表示して消えないようにする
      if (value.isNotEmpty && !options.any((o) => o.id == value))
        DropdownMenuItem(value: value, child: Text(value)),
    ];
    return DropdownButtonFormField<String>(
      key: ValueKey('${f.key}:${options.length}'),
      initialValue: value,
      items: items,
      decoration: InputDecoration(
        labelText: _label(f),
        errorText: _error(f.key),
      ),
      onChanged: (v) => setState(() => _chosen[f.key] = v ?? ''),
    );
  }

  Widget _parentField(EntityDefinition definition) {
    final strings = _scope.strings;
    final value = _treeParent ?? '';
    return DropdownButtonFormField<String>(
      key: ValueKey('parent:${_parentOptions.length}'),
      initialValue: value,
      items: [
        DropdownMenuItem(value: '', child: Text(strings.noParent)),
        for (final o in _parentOptions)
          DropdownMenuItem(value: o.id, child: Text(o.label)),
      ],
      decoration: InputDecoration(
        labelText: strings.parent,
        errorText: _error(EntityValidationException.parentKey),
      ),
      onChanged: (v) => setState(() => _treeParent = v),
    );
  }

  Future<void> _pickDate(String key) async {
    final controller = _text[key]!;
    final current = DateTime.tryParse(controller.text) ?? DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: current,
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );
    if (picked == null) return;
    controller.text =
        '${picked.year.toString().padLeft(4, '0')}-'
        '${picked.month.toString().padLeft(2, '0')}-'
        '${picked.day.toString().padLeft(2, '0')}';
  }
}

/// 親の編集画面の下に出す、所有する子の台帳。
class _ChildSection extends StatefulWidget {
  const _ChildSection({
    super.key,
    required this.definition,
    required this.ownerId,
    required this.scope,
    required this.onOpen,
  });

  final EntityDefinition definition;
  final String ownerId;
  final EntityScope scope;
  final Future<void> Function(String childKey, String? id, String ownerId)
  onOpen;

  @override
  State<_ChildSection> createState() => _ChildSectionState();
}

class _ChildSectionState extends State<_ChildSection> {
  late Future<_ChildData> _future = _load();
  int _generation = 0;

  Future<_ChildData> _load() async {
    final repository = widget.scope.catalog.repository(widget.definition.key)!;
    final options = await loadReferenceOptions(
      widget.scope.catalog,
      widget.definition,
    );
    final records = await repository.findByParent(widget.ownerId);
    return _ChildData(records, namesOf(options));
  }

  Future<void> _open(String? id) async {
    await widget.onOpen(widget.definition.key, id, widget.ownerId);
    if (mounted) {
      setState(() {
        _generation++;
        _future = _load();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scope = widget.scope;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Row(
          children: [
            Expanded(
              child: Text(
                scope.labels.entity(widget.definition.key),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            TextButton.icon(
              onPressed: () => _open(null),
              icon: const Icon(Icons.add),
              label: Text(scope.strings.add),
            ),
          ],
        ),
        SizedBox(
          height: 240,
          child: FutureBuilder<_ChildData>(
            future: _future,
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (snapshot.hasError) {
                return Center(child: Text(scope.strings.loadFailed));
              }
              if (data == null) {
                return const Center(child: CircularProgressIndicator());
              }
              return FlgTable<EntityRecord>(
                key: ValueKey('${widget.definition.key}:$_generation'),
                columns: columnsOf(widget.definition, scope.labels, data.names),
                items: data.records,
                rowKey: (r) => r.id,
                config: const TableConfig(sortEnabled: true),
                events: TableEvents<EntityRecord>(
                  onRowActivated: (r) => _open(r.id),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ChildData {
  const _ChildData(this.records, this.names);

  final List<EntityRecord> records;
  final ReferenceNames names;
}
