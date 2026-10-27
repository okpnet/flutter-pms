import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'schema_index.dart';
import 'validator.dart';

/// 操作から使用中のフィールド・引数・入力型・列挙型・スカラーを集めた結果。
class Usage {
  /// 型名 -> フィールド名 -> 引数名(オブジェクト型・インターフェース)
  final objectFields = <String, Map<String, Set<String>>>{};

  /// 入力型名 -> フィールド名
  final inputFields = <String, Set<String>>{};
  final enums = <String>{};
  final scalars = <String>{};

  bool get isEmpty => objectFields.isEmpty;
}

/// 操作(クエリ・ミューテーション・フラグメント)を走査し、使っているものを [Usage] に集める。
///
/// 型単位ではなくフィールド単位で集める。変数で渡す入力型は呼び出し側が組み立てるため、
/// 次を残す(PostGraphile の入力型は肥大化するので、必要な骨格だけにする)。
///   - スカラー・列挙型・それらのリスト
///   - 入れ子を持たない「葉」の入力型(BooleanFilter・IntervalInput など)
///   - 入れ子書き込みの骨格(patch/*Patch、updateBy*、connectBy*、create、deleteBy*)
///   - 呼称(sharedAppellationTo*、sharedDictionaryTo*、sharedDictionaryValuesUsing*)の入れ子
///   - 関連フィルタ(`<テーブル>Filter` 型の変数)は、その操作の選択経路に沿って残す
///     (自テーブルの列と and/or/not、選択セットに現れる関連を辿った先も同様)。
class UsageCollector {
  UsageCollector(this.index, this.sink);

  final SchemaIndex index;
  final IssueSink sink;
  final usage = Usage();
  final _variableInputsDone = <String>{};

  void addDocument(DocumentNode doc) {
    final fragments = {
      for (final f in doc.definitions.whereType<FragmentDefinitionNode>())
        f.name.value: f,
    };
    for (final op in doc.definitions.whereType<OperationDefinitionNode>()) {
      _addOperation(op, fragments);
    }
  }

  void _addOperation(
    OperationDefinitionNode op,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    final root = index.rootTypes[op.type];
    if (root == null || !index.isObjectLike(root)) {
      sink.add('スキーマに${op.type.name}の型がありません', op);
      return;
    }
    for (final v in op.variableDefinitions) {
      _keepVariableType(namedType(v.type));
    }
    _walkSelection(op.selectionSet, root, fragments);
    _keepRelationFilters(op, root, fragments);
  }

  // ---- 選択セットの走査 ----------------------------------------------------

  void _walkSelection(
    SelectionSetNode sel,
    String typeName,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    for (final s in sel.selections) {
      if (s is FieldNode) {
        if (s.name.value == '__typename') continue;
        final fieldDef = index.fieldOf(typeName, s.name.value);
        if (fieldDef == null) {
          sink.add('スキーマに$typeName.${s.name.value}がありません', s);
          continue;
        }
        final args = usage.objectFields
            .putIfAbsent(typeName, () => {})
            .putIfAbsent(s.name.value, () => <String>{});
        for (final a in s.arguments) {
          final argDef = fieldDef.args
              .where((x) => x.name.value == a.name.value)
              .firstOrNull;
          if (argDef == null) {
            sink.add(
              'スキーマに$typeName.${s.name.value}(${a.name.value})がありません',
              a,
            );
            continue;
          }
          args.add(a.name.value);
          _keepValue(a.value, argDef.type);
        }
        final returnType = namedType(fieldDef.type);
        _keepLeafType(returnType);
        if (s.selectionSet != null) {
          _walkSelection(s.selectionSet!, returnType, fragments);
        }
      } else if (s is InlineFragmentNode) {
        _walkSelection(
          s.selectionSet,
          s.typeCondition?.on.name.value ?? typeName,
          fragments,
        );
      } else if (s is FragmentSpreadNode) {
        final f = fragments[s.name.value];
        if (f != null) {
          _walkSelection(
            f.selectionSet,
            f.typeCondition.on.name.value,
            fragments,
          );
        }
      }
    }
  }

  void _keepLeafType(String name) {
    if (index.enums.containsKey(name)) {
      usage.enums.add(name);
    } else if (index.scalars.contains(name)) {
      usage.scalars.add(name);
    }
  }

  /// 引数・入力フィールドに渡された値を、宣言された型に沿って辿る。
  void _keepValue(ValueNode value, TypeNode declared) {
    final name = namedType(declared);
    if (value is VariableNode) {
      _keepVariableType(name);
      return;
    }
    if (!index.inputs.containsKey(name)) {
      _keepLeafType(name);
      return;
    }
    if (value is ListValueNode) {
      for (final v in value.values) {
        _keepValue(v, declared is ListTypeNode ? declared.type : declared);
      }
      return;
    }
    if (value is! ObjectValueNode) return;
    final fields = usage.inputFields.putIfAbsent(name, () => <String>{});
    final def = index.inputs[name]!;
    for (final f in value.fields) {
      final fieldDef =
          def.fields.where((x) => x.name.value == f.name.value).firstOrNull;
      if (fieldDef == null) {
        sink.add('スキーマに入力$name.${f.name.value}がありません', f);
        continue;
      }
      fields.add(f.name.value);
      _keepValue(f.value, fieldDef.type);
    }
  }

  // ---- 関連フィルタ(変数で渡す`<テーブル>Filter`) ---------------------------

  void _keepRelationFilters(
    OperationDefinitionNode op,
    String rootType,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    final filterVars = {
      for (final v in op.variableDefinitions)
        if (namedType(v.type).endsWith('Filter') &&
            index.inputs.containsKey(namedType(v.type)))
          v.variable.name.value: namedType(v.type),
    };
    if (filterVars.isEmpty) return;
    for (final root in _selectedFields(op.selectionSet, fragments)) {
      final filterArg = root.arguments.where((a) => a.name.value == 'filter');
      if (filterArg.isEmpty) continue;
      final printed = printNode(filterArg.first.value);
      for (final e in filterVars.entries) {
        if (!RegExp(r'\$' + e.key + r'\b').hasMatch(printed)) continue;
        final conn = index.fieldOf(rootType, root.name.value);
        if (conn == null || root.selectionSet == null) continue;
        final nodes = _selectedFields(root.selectionSet!, fragments)
            .where((f) => f.name.value == 'nodes');
        final nodesDef = index.fieldOf(namedType(conn.type), 'nodes');
        if (nodes.isEmpty || nodesDef == null) continue;
        _keepFilterAlong(
          e.value,
          namedType(nodesDef.type),
          _selectedFields(nodes.first.selectionSet!, fragments),
          fragments,
        );
      }
    }
  }

  /// `Filter`型[filterName](対象のオブジェクト型は[objectName])について、自テーブルの列と
  /// and/or/notを残し、[selected]に現れる関連だけを辿って、辿った先も同様に残す。
  void _keepFilterAlong(
    String filterName,
    String objectName,
    List<FieldNode> selected,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    final def = index.inputs[filterName]!;
    final kept = usage.inputFields.putIfAbsent(filterName, () => <String>{});
    for (final f in def.fields) {
      final name = f.name.value;
      final t = namedType(f.type);
      if (name == 'and' || name == 'or' || name == 'not') {
        kept.add(name);
      } else if (!index.inputs.containsKey(t)) {
        kept.add(name);
        _keepLeafType(t);
      } else if (index.isLeafInput(t)) {
        kept.add(name);
        _keepVariableType(t);
      }
    }
    for (final s in selected) {
      final relField = def.fields.where((f) => f.name.value == s.name.value);
      final objField = index.fieldOf(objectName, s.name.value);
      if (relField.isEmpty || objField == null || s.selectionSet == null) {
        continue;
      }
      final relType = namedType(relField.first.type);
      if (!index.inputs.containsKey(relType) || index.isLeafInput(relType)) {
        continue;
      }
      kept.add(s.name.value);
      final relDef = index.inputs[relType]!;
      final isMany = relDef.fields.any((f) => f.name.value == 'some');
      final inner = _selectedFields(s.selectionSet!, fragments);
      if (!isMany) {
        _keepFilterAlong(relType, namedType(objField.type), inner, fragments);
        continue;
      }
      // 1対多: <親>ToMany<子>Filter { some / every / none }。選択セットはnodesの中を辿る。
      final manyKept = usage.inputFields.putIfAbsent(relType, () => <String>{});
      String? elementFilter;
      for (final q in ['some', 'every', 'none']) {
        final qf = relDef.fields.where((f) => f.name.value == q);
        if (qf.isEmpty) continue;
        manyKept.add(q);
        elementFilter = namedType(qf.first.type);
      }
      final nodes = inner.where((f) => f.name.value == 'nodes');
      final nodesField = index.fieldOf(namedType(objField.type), 'nodes');
      if (elementFilter == null || nodes.isEmpty || nodesField == null) continue;
      _keepFilterAlong(
        elementFilter,
        namedType(nodesField.type),
        _selectedFields(nodes.first.selectionSet!, fragments),
        fragments,
      );
    }
  }

  /// 選択セットのフィールドを、インライン・名前付きフラグメントを展開して列挙する。
  List<FieldNode> _selectedFields(
    SelectionSetNode sel,
    Map<String, FragmentDefinitionNode> fragments,
  ) =>
      [
        for (final s in sel.selections)
          if (s is FieldNode)
            s
          else if (s is InlineFragmentNode)
            ..._selectedFields(s.selectionSet, fragments)
          else if (s is FragmentSpreadNode && fragments[s.name.value] != null)
            ..._selectedFields(fragments[s.name.value]!.selectionSet, fragments),
      ];

  // ---- 変数で渡す入力型 ----------------------------------------------------

  static final _structural = RegExp(
    r'^(patch|\w+Patch|updateBy\w+|connectBy\w+|create|deleteBy\w+|'
    r'sharedAppellationTo\w+|sharedDictionaryTo\w+|sharedDictionaryValuesUsing\w+)$',
  );

  void _keepVariableType(String name) {
    if (!index.inputs.containsKey(name)) {
      _keepLeafType(name);
      return;
    }
    if (!_variableInputsDone.add(name)) return;
    final fields = usage.inputFields.putIfAbsent(name, () => <String>{});
    for (final f in index.inputs[name]!.fields) {
      final t = namedType(f.type);
      if (!index.inputs.containsKey(t)) {
        fields.add(f.name.value);
        _keepLeafType(t);
      } else if (index.isLeafInput(t)) {
        fields.add(f.name.value);
        _keepVariableType(t);
      } else if (_structural.hasMatch(f.name.value)) {
        fields.add(f.name.value);
        _keepVariableType(t);
      }
    }
  }

  /// 残したフィールドが参照する型がすべて残っているかを確認し、足りなければ補う。
  void close() {
    var changed = true;
    while (changed) {
      changed = false;
      for (final entry in usage.inputFields.entries.toList()) {
        final def = index.inputs[entry.key]!;
        for (final f
            in def.fields.where((f) => entry.value.contains(f.name.value))) {
          final t = namedType(f.type);
          if (index.inputs.containsKey(t) &&
              !usage.inputFields.containsKey(t)) {
            _keepVariableType(t);
            changed = true;
          } else {
            _keepLeafType(t);
          }
        }
      }
    }
  }
}
