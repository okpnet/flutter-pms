// 要件0046: RFE(generateRfeで自動導出された読み込み専用クエリ)とEdit(ミューテーション)の
// モデルが相互変換できるかを、GraphQLドキュメント(lib/graphql/**)とschema.graphqlから
// 画面ごとに検証するための解析ヘルパー。
//
// 検証内容(docs/0046_rfe_edit_interconversion_log.md参照):
//   T1 RFE -> Edit(結果モデル): RFEモデルのMapを平坦化・復元し、Editの結果モデル
//      (ミューテーションが返すエンティティ)として復元できること。Editの全リーフがRFEに存在すること。
//   T2 Edit -> RFE: Editの結果モデルのMapを平坦化・復元し、RFEモデルとして復元できること。
//      RFEにしか無いリーフ(Edit側で失われる値)は「要確認」として記録する(失敗にはしない)。
//   T3 RFE -> Edit(引数モデル): ミューテーションの全引数(Variables)を、RFEのMapから
//      組み立てられること。組み立てた引数でVariablesモデルを復元できること。
//
// 画面ごとの手書き対応表は持たない。ミューテーションのinputツリー(PostGraphileの
// nested-mutations記法)を辿り、入力フィールド名`xToY`/`xUsingY`を読み込み側の
// `xByY`(schema.graphqlで実在を確認)に読み替えることで、引数とRFEの取得位置を対応付ける。

import 'dart:io';

// gqlはgraphql_codegen/gqlib経由で既に解決済みのパッケージ(dev_dependenciesに明示)。
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';

/// モデルのfromJson→toJsonを行う関数(画面ごとに生成クラスが異なるため呼び出し側が渡す)。
typedef ModelRoundTrip = Map<String, dynamic> Function(Map<String, dynamic> json);

// ---------------------------------------------------------------------------
// schema.graphqlの索引
// ---------------------------------------------------------------------------

class SchemaIndex {
  SchemaIndex._(this._objects, this._inputs, this._enums);

  /// スキーマを解析する。テストでは生成用スキーマ(lib/graphql/schema.graphql、絞り込み済み)を使う。
  /// setUpAllで1回だけ呼ぶこと。
  factory SchemaIndex.load(String path) {
    final doc = parseString(File(path).readAsStringSync());
    final objects = <String, Map<String, TypeNode>>{};
    final inputs = <String, Map<String, TypeNode>>{};
    final enums = <String, List<String>>{};
    for (final def in doc.definitions) {
      if (def is ObjectTypeDefinitionNode) {
        objects[def.name.value] = {
          for (final f in def.fields) f.name.value: f.type,
        };
      } else if (def is InterfaceTypeDefinitionNode) {
        objects[def.name.value] = {
          for (final f in def.fields) f.name.value: f.type,
        };
      } else if (def is InputObjectTypeDefinitionNode) {
        inputs[def.name.value] = {
          for (final f in def.fields) f.name.value: f.type,
        };
      } else if (def is EnumTypeDefinitionNode) {
        enums[def.name.value] = [for (final v in def.values) v.name.value];
      }
    }
    return SchemaIndex._(objects, inputs, enums);
  }

  final Map<String, Map<String, TypeNode>> _objects;
  final Map<String, Map<String, TypeNode>> _inputs;
  final Map<String, List<String>> _enums;

  TypeNode? fieldType(String type, String field) => _objects[type]?[field];
  bool hasField(String type, String field) =>
      _objects[type]?.containsKey(field) ?? false;
  bool isObject(String type) => _objects.containsKey(type);
  bool isInput(String type) => _inputs.containsKey(type);
  Map<String, TypeNode>? inputFields(String type) => _inputs[type];
  List<String>? enumValues(String type) => _enums[type];

  /// Connection型(1対多)かどうか。`nodes`フィールドの有無で判定する(nested_map_flattenerと同じ考え方)。
  bool isConnection(String type) => hasField(type, 'nodes');

  /// Connection型の要素(nodesの要素)の型名。
  String? connectionNodeType(String type) {
    final t = fieldType(type, 'nodes');
    return t == null ? null : namedTypeOf(t);
  }
}

String namedTypeOf(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : namedTypeOf((t as ListTypeNode).type);

String typeToString(TypeNode t) {
  final inner = t is NamedTypeNode
      ? t.name.value
      : '[${typeToString((t as ListTypeNode).type)}]';
  return t.isNonNull ? '$inner!' : inner;
}

// ---------------------------------------------------------------------------
// パス表現
// ---------------------------------------------------------------------------

/// Map上の位置。String=キー、int=リスト添字(`nodes[0]`)。
typedef DataPath = List<Object>;

String pathToString(DataPath path) {
  final b = StringBuffer();
  for (final seg in path) {
    if (seg is int) {
      b.write('[$seg]');
    } else {
      if (b.isNotEmpty) b.write('.');
      b.write(seg);
    }
  }
  return b.toString();
}

dynamic readPath(dynamic root, DataPath path) {
  dynamic cur = root;
  for (final seg in path) {
    if (seg is int) {
      if (cur is! List || cur.length <= seg) return null;
      cur = cur[seg];
    } else {
      if (cur is! Map) return null;
      cur = cur[seg];
    }
  }
  return cur;
}

String _outputKey(FieldNode f) => f.alias?.value ?? f.name.value;

Iterable<FieldNode> _fields(SelectionSetNode? sel) =>
    sel?.selections.whereType<FieldNode>() ?? const <FieldNode>[];

bool _isConditional(FieldNode f) =>
    f.directives.any((d) => d.name.value == 'include' || d.name.value == 'skip');

/// 選択セット上のリーフ(スカラー)1件の情報。
class LeafInfo {
  LeafInfo(this.path, this.fieldName, this.parentType, this.type, this.conditional);
  final DataPath path;
  final String fieldName;
  final String parentType;
  final TypeNode type;
  final bool conditional;
  String get key => pathToString(path);
}

// ---------------------------------------------------------------------------
// 解析本体
// ---------------------------------------------------------------------------

/// 1画面分のRFE/Editペア。
class RfeEditPair {
  RfeEditPair({
    required this.page,
    required this.rfeFromJson,
    required this.editFromJson,
    required this.editVariablesFromJson,
  });

  /// lib/graphql配下のフォルダ名(=ファイル名の接頭辞)。
  final String page;
  final ModelRoundTrip rfeFromJson;
  final ModelRoundTrip editFromJson;
  final ModelRoundTrip editVariablesFromJson;

  String get rfePath => 'lib/graphql/$page/${page}_rfe.graphql';
  String get editPath => 'lib/graphql/$page/${page}_edit.graphql';
}

/// 検証結果の1項目。
class Finding {
  Finding(this.category, this.message, {this.path});

  /// F1〜F6=相互変換不可(失敗)、C1/C3/C4=要確認(失敗にしない)、
  /// A1=方針どおり(要件0048: 監査列はRFEのみ)。
  final String category;
  final String message;
  final String? path;

  bool get isFailure => category.startsWith('F');

  Map<String, dynamic> toJson() => {
    'category': category,
    'message': message,
    if (path != null) 'path': path,
  };
}

/// 引数1件の解決結果。
class VariableResolution {
  VariableResolution(this.name, this.type, this.kind, {this.source, this.note});

  final String name;
  final String type;

  /// data=RFEの値から解決 / env=呼び出し側がRFEと同じ値を渡す環境引数 /
  /// list=RFEの1対多から組み立て / unresolved=解決不可
  final String kind;
  final String? source;
  final String? note;

  Map<String, dynamic> toJson() => {
    'name': name,
    'type': type,
    'kind': kind,
    if (source != null) 'source': source,
    if (note != null) 'note': note,
  };
}

class ConversionReport {
  ConversionReport(this.page);

  final String page;
  final List<Finding> findings = [];
  final List<VariableResolution> variables = [];

  Iterable<Finding> get failures => findings.where((f) => f.isFailure);
  Iterable<Finding> get checks => findings.where((f) => !f.isFailure);

  void add(String category, String message, {String? path}) {
    final exists = findings.any(
      (f) => f.category == category && f.message == message && f.path == path,
    );
    if (!exists) findings.add(Finding(category, message, path: path));
  }

  Map<String, dynamic> toJson() => {
    'page': page,
    'failures': [for (final f in failures) f.toJson()],
    'checks': [for (final f in checks) f.toJson()],
    'variables': [for (final v in variables) v.toJson()],
  };
}

class RfeEditConversionAnalyzer {
  RfeEditConversionAnalyzer(this.schema, this.pair);

  final SchemaIndex schema;
  final RfeEditPair pair;
  late final ConversionReport report = ConversionReport(pair.page);

  late OperationDefinitionNode _rfeOp;
  late OperationDefinitionNode _editOp;
  late FieldNode _rfeRoot;
  late String _rfeRootType;
  late FieldNode _editRoot;
  late String _editPayloadType;
  late FieldNode _editEntity;
  late String _editEntityType;

  /// RFEのルートエンティティ(Map)。T1/T3の入力になる。
  late Map<String, dynamic> _rfeEntity;
  late Map<String, dynamic> _envValues;

  ConversionReport run() {
    _rfeOp = _loadOperation(pair.rfePath, OperationType.query);
    _editOp = _loadOperation(pair.editPath, OperationType.mutation);

    _rfeRoot = _fields(_rfeOp.selectionSet).single;
    _rfeRootType = namedTypeOf(schema.fieldType('Query', _rfeRoot.name.value)!);
    _editRoot = _fields(_editOp.selectionSet).single;
    _editPayloadType =
        namedTypeOf(schema.fieldType('Mutation', _editRoot.name.value)!);
    _editEntity = _fields(_editRoot.selectionSet).firstWhere(
      (f) => f.selectionSet != null,
    );
    _editEntityType = namedTypeOf(
      schema.fieldType(_editPayloadType, _editEntity.name.value)!,
    );

    if (_rfeRootType != _editEntityType) {
      report.add(
        'F5',
        'RFEのルート型($_rfeRootType)とEditの結果エンティティ型($_editEntityType)が異なる',
      );
      return report;
    }

    _envValues = {
      for (final v in _rfeOp.variableDefinitions)
        v.variable.name.value: _synthScalar(namedTypeOf(v.type),'env:${v.variable.name.value}'),
    };

    _compareSelections();
    _checkRfeToEditModel();
    _checkEditToRfeModel();
    _checkRfeToEditVariables();
    return report;
  }

  OperationDefinitionNode _loadOperation(String path, OperationType type) {
    final doc = parseString(File(path).readAsStringSync());
    return doc.definitions
        .whereType<OperationDefinitionNode>()
        .singleWhere((o) => o.type == type);
  }

  // -------------------------------------------------------------------------
  // 静的比較(選択セットのリーフ)
  // -------------------------------------------------------------------------

  List<LeafInfo> _collectLeaves(
    SelectionSetNode sel,
    String typeName,
    DataPath prefix, {
    bool conditional = false,
  }) {
    final out = <LeafInfo>[];
    for (final f in _fields(sel)) {
      final name = f.name.value;
      if (name == '__typename') continue;
      final t = schema.fieldType(typeName, name);
      if (t == null) continue; // 型解決できないものは合成時にC4として記録する
      final cond = conditional || _isConditional(f);
      final path = [...prefix, _outputKey(f)];
      final base = namedTypeOf(t);
      if (f.selectionSet == null) {
        out.add(LeafInfo(path, name, typeName, t, cond));
      } else {
        final listPath = t is ListTypeNode ? [...path, 0] : path;
        out.addAll(
          _collectLeaves(f.selectionSet!, base, listPath, conditional: cond),
        );
      }
    }
    return out;
  }

  late final List<LeafInfo> _rfeLeaves = _collectLeaves(
    _rfeRoot.selectionSet!,
    _rfeRootType,
    const [],
  );
  late final List<LeafInfo> _editLeaves = _collectLeaves(
    _editEntity.selectionSet!,
    _editEntityType,
    const [],
  );

  void _compareSelections() {
    final rfeByKey = {for (final l in _rfeLeaves) l.key: l};
    final editByKey = {for (final l in _editLeaves) l.key: l};
    for (final e in _editLeaves) {
      final r = rfeByKey[e.key];
      if (r == null) {
        report.add(
          'F1',
          'Editの結果モデルにあるリーフがRFEに存在しない(RFE→Editで値を引き継げない)',
          path: e.key,
        );
      } else if (r.fieldName != e.fieldName || r.parentType != e.parentType) {
        report.add(
          'F5',
          '同じ出力キーだが参照先が異なる(RFE: ${r.parentType}.${r.fieldName} / '
              'Edit: ${e.parentType}.${e.fieldName})',
          path: e.key,
        );
      }
    }
    for (final r in _rfeLeaves) {
      if (!editByKey.containsKey(r.key)) {
        if (_auditColumns.contains(r.fieldName)) {
          // 要件0048: 監査列はEditに含めない方針(保存後に必要ならRFEを再取得する)
          report.add(
            'A1',
            '監査列はRFEでのみ取得する(要件0048の方針どおり)',
            path: r.key,
          );
          continue;
        }
        report.add(
          'C1',
          'RFEにしか無いリーフ(Editの結果モデルからRFEへ戻すと値が失われる)',
          path: r.key,
        );
      }
    }
  }

  static const _auditColumns = {
    'updateAt',
    'updateUserId',
    'updateUserHistoryId',
    'remove',
  };

  // -------------------------------------------------------------------------
  // 合成データ(schema.graphqlの型から、選択セットに沿ったレスポンスを作る)
  // -------------------------------------------------------------------------

  Map<String, dynamic> _synthesize(
    SelectionSetNode sel,
    String typeName,
    DataPath path,
  ) {
    final map = <String, dynamic>{};
    for (final f in _fields(sel)) {
      final key = _outputKey(f);
      if (f.name.value == '__typename') {
        map[key] = typeName;
        continue;
      }
      final t = schema.fieldType(typeName, f.name.value);
      if (t == null) {
        report.add(
          'C4',
          'schema.graphqlに$typeName.${f.name.value}が見つからない'
              '(schema.graphqlが未更新、またはGraphQL側の誤りの可能性)',
          path: pathToString([...path, key]),
        );
        continue;
      }
      map[key] = _synthType(t, f.selectionSet, [...path, key]);
    }
    map['__typename'] = typeName;
    return map;
  }

  dynamic _synthType(TypeNode t, SelectionSetNode? sel, DataPath path) {
    if (t is ListTypeNode) return [_synthType(t.type, sel, [...path, 0])];
    final name = namedTypeOf(t);
    if (sel != null && schema.isObject(name)) {
      return _synthesize(sel, name, path);
    }
    return _synthScalar(name, pathToString(path));
  }

  dynamic _synthScalar(String typeName, String seed) {
    switch (typeName) {
      case 'Int':
        return (seed.hashCode & 0x7fff) + 1;
      case 'Float':
        return ((seed.hashCode & 0x7fff) + 1) / 10;
      case 'Boolean':
        return true;
    }
    final enumValues = schema.enumValues(typeName);
    if (enumValues != null && enumValues.isNotEmpty) return enumValues.first;
    // UUID/Datetime/BigFloat等のカスタムスカラーは生成モデル上Stringとして扱われる
    return 'v:$seed';
  }

  Map<String, dynamic> _synthRfeResponse() => {
    _outputKey(_rfeRoot): _synthesize(
      _rfeRoot.selectionSet!,
      _rfeRootType,
      [_outputKey(_rfeRoot)],
    ),
    '__typename': 'Query',
  };

  Map<String, dynamic> _synthEditResponse() => {
    _outputKey(_editRoot): _synthesize(
      _editRoot.selectionSet!,
      _editPayloadType,
      [_outputKey(_editRoot)],
    ),
    '__typename': 'Mutation',
  };

  /// nested_map_flattener.dartを通す(平坦化→復元)。要件どおり「Mapをとおして」変換する。
  Map<String, dynamic> _throughFlattener(Map<String, dynamic> map) =>
      map.flatten().unflatten();

  // -------------------------------------------------------------------------
  // T1: RFE -> Edit(結果モデル)
  // -------------------------------------------------------------------------

  void _checkRfeToEditModel() {
    final Map<String, dynamic> rfeJson;
    try {
      rfeJson = pair.rfeFromJson(_synthRfeResponse());
    } catch (e) {
      report.add('F2', 'RFEモデルを合成データから生成できない: $e');
      _rfeEntity = {};
      return;
    }
    _rfeEntity = Map<String, dynamic>.from(rfeJson[_outputKey(_rfeRoot)] as Map);

    final editResponse = _synthEditResponse();
    final payload = editResponse[_outputKey(_editRoot)] as Map<String, dynamic>;
    payload[_outputKey(_editEntity)] = _throughFlattener(_rfeEntity);

    final Map<String, dynamic> editJson;
    try {
      editJson = pair.editFromJson(editResponse);
    } catch (e) {
      report.add(
        'F1',
        'RFEのMapからEditの結果モデルを復元できない(fromJsonで例外): ${_short(e)}',
      );
      return;
    }
    final editEntity = readPath(editJson, [
      _outputKey(_editRoot),
      _outputKey(_editEntity),
    ]);
    for (final leaf in _editLeaves) {
      final expected = readPath(_rfeEntity, leaf.path);
      final actual = readPath(editEntity, leaf.path);
      if (expected != null && actual != expected) {
        report.add(
          'F1',
          'RFE→Edit変換後の値が一致しない(RFE: $expected / Edit: $actual)',
          path: leaf.key,
        );
      }
    }
  }

  // -------------------------------------------------------------------------
  // T2: Edit(結果モデル) -> RFE
  // -------------------------------------------------------------------------

  void _checkEditToRfeModel() {
    final Map<String, dynamic> editJson;
    try {
      editJson = pair.editFromJson(_synthEditResponse());
    } catch (e) {
      report.add('F2', 'Editの結果モデルを合成データから生成できない: $e');
      return;
    }
    final entity = Map<String, dynamic>.from(
      readPath(editJson, [_outputKey(_editRoot), _outputKey(_editEntity)])
          as Map,
    );
    try {
      final rfeJson = pair.rfeFromJson({
        _outputKey(_rfeRoot): _throughFlattener(entity),
        '__typename': 'Query',
      });
      final rfeEntity = rfeJson[_outputKey(_rfeRoot)];
      for (final leaf in _editLeaves) {
        final expected = readPath(entity, leaf.path);
        if (expected != null && readPath(rfeEntity, leaf.path) != expected) {
          report.add('F2', 'Edit→RFE変換後の値が一致しない', path: leaf.key);
        }
      }
    } catch (e) {
      report.add(
        'F2',
        'Editの結果モデルのMapからRFEモデルを復元できない(fromJsonで例外。'
            'RFEの必須(非null)フィールドがEdit側に無い): ${_short(e)}',
      );
    }
  }

  // -------------------------------------------------------------------------
  // T3: RFE -> Edit(引数モデル)
  // -------------------------------------------------------------------------

  late final Map<String, TypeNode> _editVarTypes = {
    for (final v in _editOp.variableDefinitions) v.variable.name.value: v.type,
  };
  late final Set<String> _rfeVarNames = {
    for (final v in _rfeOp.variableDefinitions) v.variable.name.value,
  };
  final Map<String, dynamic> _variableValues = {};

  void _checkRfeToEditVariables() {
    final input = _editRoot.arguments
        .firstWhere((a) => a.name.value == 'input')
        .value;
    final root = _ReadCtx(_rfeRootType, _rfeRoot.selectionSet, const [], _rfeEntity);
    if (input is ObjectValueNode) _walkObject(input, root);

    for (final entry in _editVarTypes.entries) {
      final name = entry.key;
      if (report.variables.any((v) => v.name == name)) continue;
      if (_rfeVarNames.contains(name)) {
        // 結果の選択セット(表示用の言語条件など)でのみ使われる引数。RFEと同じ値を渡す。
        _record(
          name,
          'env',
          value: _envValues[name],
          note: '結果の選択セットでのみ使用。RFEと同じ引数を呼び出し側が渡す',
        );
        continue;
      }
      report.variables.add(
        VariableResolution(
          name,
          typeToString(entry.value),
          'unresolved',
          note: 'inputツリー上で使用箇所を特定できない',
        ),
      );
    }
    for (final v in report.variables.where((v) => v.kind == 'unresolved')) {
      report.add('F3', 'Editの引数\$${v.name}をRFEから組み立てられない: ${v.note}');
    }

    try {
      pair.editVariablesFromJson(Map<String, dynamic>.from(_variableValues));
    } catch (e) {
      report.add(
        'F4',
        'RFEから組み立てた引数でEditのVariablesモデルを復元できない: ${_short(e)}',
      );
    }
  }

  void _walkObject(ObjectValueNode obj, _ReadCtx ctx) {
    for (final field in obj.fields) {
      final name = field.name.value;
      final value = field.value;
      if (value is VariableNode) {
        _resolveLeaf(value.name.value, name, ctx);
      } else if (value is ObjectValueNode) {
        if (name.endsWith('Patch') || name == 'patch') {
          _walkObject(value, ctx);
        } else {
          _walkRelation(name, value, ctx);
        }
      }
    }
  }

  void _resolveLeaf(String varName, String fieldName, _ReadCtx ctx) {
    final hits = _fields(ctx.sel).where((f) => f.name.value == fieldName).toList();
    if (hits.isNotEmpty) {
      final f = hits.firstWhere(
        (h) => h.alias == null,
        orElse: () => hits.first,
      );
      final path = [...ctx.path, _outputKey(f)];
      final conditional = ctx.conditional || _isConditional(f);
      _record(
        varName,
        'data',
        source: pathToString(path),
        value: readPath(ctx.data, [_outputKey(f)]),
        note: conditional ? 'RFE側は@include/@skipで条件付き取得' : null,
      );
      if (conditional && (_editVarTypes[varName]?.isNonNull ?? false)) {
        // 要件0048: 要件0036以前の方式(@includeによる条件付き取得)は修正する方針のため失敗とする
        report.add(
          'F6',
          'Editの必須引数\$$varNameの値を、RFEでは条件付き(@include/@skip)で取得している'
              '(条件次第で編集用の値が欠落する)',
          path: pathToString(path),
        );
      }
      return;
    }
    if (_rfeVarNames.contains(varName)) {
      _record(varName, 'env', value: _envValues[varName], note: 'RFEと同じ引数を呼び出し側が渡す');
      return;
    }
    _record(
      varName,
      'unresolved',
      note: 'RFEの${ctx.type}(${pathToString(ctx.path).isEmpty ? 'ルート' : pathToString(ctx.path)})に'
          '$fieldNameが取得されていない',
    );
  }

  void _record(String name, String kind, {String? source, String? note, dynamic value}) {
    final existing = report.variables.where((v) => v.name == name).toList();
    if (existing.isNotEmpty) {
      // 複数箇所で使われる引数は、解決できた方を優先する
      if (existing.first.kind != 'unresolved' || kind == 'unresolved') return;
      report.variables.remove(existing.first);
    }
    final type = _editVarTypes[name];
    report.variables.add(
      VariableResolution(
        name,
        type == null ? '?' : typeToString(type),
        kind,
        source: source,
        note: note,
      ),
    );
    if (kind != 'unresolved') _variableValues[name] = value;
  }

  /// 入れ子書き込みの入力フィールド名(`xToY`/`xUsingY`/`xsToZUsingY`)を、
  /// 読み込み側のフィールド名(`xByY`)に読み替える。schemaで実在するものだけを返す。
  String? _mapRelation(String inputName, String readType) {
    final candidates = <String>[];
    final usingAt = inputName.lastIndexOf('Using');
    if (usingAt > 0) {
      final col = inputName.substring(usingAt + 'Using'.length);
      final prefix = inputName.substring(0, usingAt);
      candidates.add('${prefix}By$col');
      for (final m in RegExp(r'To(?=[A-Z])').allMatches(prefix)) {
        candidates.add('${prefix.substring(0, m.start)}By$col');
      }
    } else {
      for (final m in RegExp(r'To(?=[A-Z])').allMatches(inputName)) {
        candidates.add(
          '${inputName.substring(0, m.start)}By${inputName.substring(m.end)}',
        );
      }
    }
    for (final c in candidates) {
      if (schema.hasField(readType, c)) return c;
    }
    return null;
  }

  void _walkRelation(String inputName, ObjectValueNode rel, _ReadCtx ctx) {
    final readField = _mapRelation(inputName, ctx.type);
    if (readField == null) {
      report.add(
        'C4',
        '入れ子書き込み$inputNameに対応する読み込みフィールドが${ctx.type}に見つからない'
            '(schema.graphqlの未更新、または命名規則外の可能性)',
        path: pathToString([...ctx.path, inputName]),
      );
      _markUnresolved(rel, '入れ子書き込み$inputNameの読み込み側対応が不明');
      return;
    }
    final readTypeName = namedTypeOf(schema.fieldType(ctx.type, readField)!);
    final isConn = schema.isConnection(readTypeName);
    final targetType = isConn ? schema.connectionNodeType(readTypeName)! : readTypeName;
    final sels = _fields(ctx.sel).where((f) => f.name.value == readField).toList();

    _ReadCtx? childCtx(FieldNode s) {
      final key = _outputKey(s);
      final cond = ctx.conditional || _isConditional(s);
      if (isConn) {
        final nodes = _fields(s.selectionSet).where((n) => n.name.value == 'nodes');
        if (nodes.isEmpty) return null;
        final path = [...ctx.path, key, 'nodes', 0];
        return _ReadCtx(
          targetType,
          nodes.first.selectionSet,
          path,
          readPath(ctx.data, [key, 'nodes', 0]),
          conditional: cond,
        );
      }
      return _ReadCtx(
        targetType,
        s.selectionSet,
        [...ctx.path, key],
        readPath(ctx.data, [key]),
        conditional: cond,
      );
    }

    for (final sub in rel.fields) {
      final value = sub.value;
      if (value is ObjectValueNode) {
        // updateByXxx / connectByXxx(単一の関連先)
        if (sels.isEmpty) {
          _markUnresolved(value, 'RFEが${ctx.type}.$readFieldを取得していない');
          continue;
        }
        if (sels.length > 1) {
          report.add(
            'C3',
            '${ctx.type}.$readFieldをRFEで複数回取得しているため先頭(${_outputKey(sels.first)})を使用した',
            path: pathToString(ctx.path),
          );
        }
        final c = childCtx(sels.first);
        if (c == null) {
          _markUnresolved(value, 'RFEの$readFieldにnodesが無い');
        } else {
          _walkObject(value, c);
        }
      } else if (value is ListValueNode) {
        // create: [{...}, ...] のリテラル(言語別の辞書値、親の付け替え等)
        for (final item in value.values.whereType<ObjectValueNode>()) {
          _resolveCreateItem(item, readField, sels, ctx, childCtx);
        }
      } else if (value is VariableNode) {
        // updateByXxx: $list / create: $list / deleteByXxx: $list
        _resolveListVariable(value.name.value, readField, sels, childCtx, ctx);
      }
    }
  }

  void _resolveCreateItem(
    ObjectValueNode item,
    String readField,
    List<FieldNode> sels,
    _ReadCtx ctx,
    _ReadCtx? Function(FieldNode) childCtx,
  ) {
    // 識別子: RFE引数と共通の変数で、かつRFE側のcondition引数に同じ値で現れるもの
    FieldNode? matched;
    final discriminators = <String>{};
    for (final f in item.fields) {
      final v = f.value;
      if (v is! VariableNode || !_rfeVarNames.contains(v.name.value)) continue;
      for (final s in sels) {
        if (_conditionHas(s, f.name.value, v.name.value)) {
          matched = s;
          discriminators.add(f.name.value);
        }
      }
    }
    if (matched == null && sels.length == 1) matched = sels.single;
    for (final f in item.fields) {
      final v = f.value;
      if (v is! VariableNode) continue;
      final varName = v.name.value;
      if (discriminators.contains(f.name.value)) {
        _record(varName, 'env', value: _envValues[varName], note: 'RFEのcondition引数と同じ値を渡す');
        continue;
      }
      if (matched == null) {
        _record(
          varName,
          'unresolved',
          note: sels.isEmpty
              ? 'RFEが${ctx.type}.$readFieldを取得していない'
              : '${ctx.type}.$readFieldの複数の取得のうちどれに対応するか特定できない',
        );
        continue;
      }
      final c = childCtx(matched);
      if (c == null) {
        _record(varName, 'unresolved', note: 'RFEの$readFieldにnodesが無い');
      } else {
        _resolveLeaf(varName, f.name.value, c);
      }
    }
  }

  bool _conditionHas(FieldNode s, String field, String varName) {
    for (final arg in s.arguments) {
      if (arg.name.value != 'condition' && arg.name.value != 'filter') continue;
      final v = arg.value;
      if (v is! ObjectValueNode) continue;
      for (final f in v.fields) {
        if (f.name.value != field) continue;
        final fv = f.value;
        if (fv is VariableNode && fv.name.value == varName) return true;
        if (fv is ObjectValueNode &&
            fv.fields.any((e) => e.value is VariableNode &&
                (e.value as VariableNode).name.value == varName)) {
          return true;
        }
      }
    }
    return false;
  }

  void _resolveListVariable(
    String varName,
    String readField,
    List<FieldNode> sels,
    _ReadCtx? Function(FieldNode) childCtx,
    _ReadCtx ctx,
  ) {
    final varType = _editVarTypes[varName];
    if (varType == null) return;
    if (sels.isEmpty) {
      _record(varName, 'unresolved', note: 'RFEが${ctx.type}.$readFieldを取得していない');
      return;
    }
    final s = sels.first;
    final key = _outputKey(s);
    final isConn = schema.isConnection(
      namedTypeOf(schema.fieldType(ctx.type, readField)!),
    );
    final nodeCtx = childCtx(s);
    if (nodeCtx == null) {
      _record(varName, 'unresolved', note: 'RFEの$readFieldにnodesが無い');
      return;
    }
    final records = isConn
        ? (readPath(ctx.data, [key, 'nodes']) as List? ?? const [])
        : [readPath(ctx.data, [key])];
    final elementType = namedTypeOf(varType);
    final notes = <String>{};
    final built = [
      for (final r in records)
        _buildInput(
          elementType,
          _ReadCtx(nodeCtx.type, nodeCtx.sel, nodeCtx.path, r),
          notes,
        ),
    ];
    for (final n in notes) {
      report.add('C3', '\$$varName: $n', path: pathToString([...ctx.path, key]));
    }
    _record(
      varName,
      'list',
      source: pathToString([...ctx.path, key, if (isConn) 'nodes']),
      value: built,
      note: notes.isEmpty ? null : '一部要確認(checks参照)',
    );
  }

  /// schemaの入力型に沿って、RFEの1レコードから入力オブジェクトを組み立てる(リスト引数用)。
  Map<String, dynamic> _buildInput(String inputType, _ReadCtx ctx, Set<String> notes) {
    final fields = schema.inputFields(inputType) ?? const {};
    final result = <String, dynamic>{};
    for (final entry in fields.entries) {
      final name = entry.key;
      final base = namedTypeOf(entry.value);
      if (schema.isInput(base)) {
        if (name == 'patch' || name.endsWith('Patch')) {
          result[name] = _buildInput(base, ctx, notes);
          continue;
        }
        final readField = _mapRelation(name, ctx.type);
        if (readField == null) continue;
        final sels = _fields(ctx.sel).where((f) => f.name.value == readField).toList();
        if (sels.isEmpty) continue; // RFEで取得していない関連は書き込まない(任意項目)
        final nested = _buildRelationInput(base, readField, sels, ctx, notes);
        if (nested != null) result[name] = nested;
        continue;
      }
      final hit = _fields(ctx.sel).where((f) => f.name.value == name).toList();
      if (hit.isNotEmpty) {
        result[name] = readPath(ctx.data, [_outputKey(hit.first)]);
      } else if (entry.value.isNonNull) {
        notes.add('$inputType.$name(必須)がRFEの${ctx.type}に無い');
      }
    }
    return result;
  }

  Map<String, dynamic>? _buildRelationInput(
    String relInputType,
    String readField,
    List<FieldNode> sels,
    _ReadCtx ctx,
    Set<String> notes,
  ) {
    final relFields = schema.inputFields(relInputType) ?? const {};
    final readTypeName = namedTypeOf(schema.fieldType(ctx.type, readField)!);
    if (!schema.isConnection(readTypeName)) {
      // 単一の関連先: updateByXxx(主キー+Patch)で更新する
      final s = sels.first;
      final child = _ReadCtx(
        readTypeName,
        s.selectionSet,
        [...ctx.path, _outputKey(s)],
        readPath(ctx.data, [_outputKey(s)]),
      );
      for (final e in relFields.entries) {
        if (!e.key.startsWith('updateBy')) continue;
        return {e.key: _buildInput(namedTypeOf(e.value), child, notes)};
      }
      notes.add('$relInputTypeにupdateBy系の入力が無い');
      return null;
    }
    // 1対多: deleteOthers + create(言語別の辞書値など、condition引数で区別)
    final createType = relFields['create'];
    if (createType == null) {
      notes.add('$relInputTypeにcreateが無い');
      return null;
    }
    final elementType = namedTypeOf(createType);
    final nodeType = schema.connectionNodeType(readTypeName)!;
    final items = <Map<String, dynamic>>[];
    for (final s in sels) {
      final nodes = _fields(s.selectionSet).where((n) => n.name.value == 'nodes');
      if (nodes.isEmpty) continue;
      final item = _buildInput(
        elementType,
        _ReadCtx(
          nodeType,
          nodes.first.selectionSet,
          [...ctx.path, _outputKey(s), 'nodes', 0],
          readPath(ctx.data, [_outputKey(s), 'nodes', 0]),
        ),
        notes,
      );
      // condition引数の値(言語IDなど)を識別子として補う
      for (final arg in s.arguments.where((a) => a.name.value == 'condition')) {
        final v = arg.value;
        if (v is! ObjectValueNode) continue;
        for (final f in v.fields) {
          final fv = f.value;
          if (fv is VariableNode) item[f.name.value] = _envValues[fv.name.value];
        }
      }
      items.add(item);
    }
    return {
      if (relFields.containsKey('deleteOthers')) 'deleteOthers': true,
      'create': items,
    };
  }

  void _markUnresolved(ObjectValueNode node, String note) {
    void walk(ValueNode v) {
      if (v is VariableNode) {
        _record(v.name.value, 'unresolved', note: note);
      } else if (v is ObjectValueNode) {
        for (final f in v.fields) {
          walk(f.value);
        }
      } else if (v is ListValueNode) {
        v.values.forEach(walk);
      }
    }

    walk(node);
  }

  String _short(Object e) {
    final s = e.toString().split('\n').first;
    return s.length > 300 ? '${s.substring(0, 300)}…' : s;
  }
}

class _ReadCtx {
  _ReadCtx(this.type, this.sel, this.path, this.data, {this.conditional = false});

  /// 読み込み側の型名(schema.graphql)
  final String type;

  /// RFEの選択セット(この位置)
  final SelectionSetNode? sel;

  /// RFEエンティティのルートからのパス
  final DataPath path;

  /// この位置のRFEデータ
  final dynamic data;

  /// 祖先に@include/@skipがあるか
  final bool conditional;
}
