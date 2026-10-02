// 生成用スキーマの絞り込みツール(CLAUDE.md 4-2節、2026/10/02)。
//
// PostGraphileの全量スキーマ(入力型約1万)をそのままgraphql_codegenに渡すと、
// schema.graphql.dartの生成に6GB超のメモリを要し実行できない(docs/0049ログ)。
// そこで、lib/graphql配下の画面のGraphQLが実際に使う型・フィールド・引数だけを残した
// スキーマを書き出し、graphql_codegenの入力(lib/graphql/schema.graphql)とする。
//
// 残すもの:
//   - オブジェクト型: 選択セットで使われたフィールドと、実際に渡された引数だけ。
//     インターフェース(Node等)は、操作から直接使われない限り`implements`ごと外す。
//   - 入力型(リテラルで書かれた入力): 使われたフィールドだけ。
//   - 入力型(変数で渡す入力): 呼び出し側が組み立てるため、次を残す。
//       * スカラー・Enum・それらのリスト
//       * 入れ子を持たない「葉」の入力型(BooleanFilter・IntervalInput等)
//       * 入れ子書き込みの骨格(patch/*Patch、updateBy*、connectBy*、create、deleteBy*)
//       * 呼称(sharedAppellationTo*、sharedDictionaryTo*、sharedDictionaryValuesUsing*)の入れ子
//   - 上記から参照されるEnum・スカラー。説明文は出力しない。
//
// 使い方(パッケージのルートで実行):
//   dart run tool/prune_schema.dart [全量スキーマ] [GraphQLディレクトリ] [出力先]
//   既定: source/schema.full.graphql lib/graphql lib/graphql/schema.graphql

import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

const _builtinScalars = {'String', 'Int', 'Float', 'Boolean', 'ID'};

String _named(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : _named((t as ListTypeNode).type);

class _Pruner {
  _Pruner(DocumentNode full) {
    for (final d in full.definitions) {
      if (d is SchemaDefinitionNode) {
        for (final o in d.operationTypes) {
          _rootTypes[o.operation] = o.type.name.value;
        }
      } else if (d is ObjectTypeDefinitionNode) {
        _objects[d.name.value] = d;
      } else if (d is InterfaceTypeDefinitionNode) {
        _interfaces[d.name.value] = d;
      } else if (d is InputObjectTypeDefinitionNode) {
        _inputs[d.name.value] = d;
      } else if (d is EnumTypeDefinitionNode) {
        _enums[d.name.value] = d;
      } else if (d is ScalarTypeDefinitionNode) {
        _scalars.add(d.name.value);
      } else if (d is UnionTypeDefinitionNode) {
        _unions[d.name.value] = d;
      }
    }
    _rootTypes.putIfAbsent(OperationType.query, () => 'Query');
    _rootTypes.putIfAbsent(OperationType.mutation, () => 'Mutation');
  }

  final _rootTypes = <OperationType, String>{};
  final _objects = <String, ObjectTypeDefinitionNode>{};
  final _interfaces = <String, InterfaceTypeDefinitionNode>{};
  final _inputs = <String, InputObjectTypeDefinitionNode>{};
  final _enums = <String, EnumTypeDefinitionNode>{};
  final _unions = <String, UnionTypeDefinitionNode>{};
  final _scalars = <String>{};

  // 残すもの: 型名 -> フィールド名 -> (オブジェクト型のみ)引数名
  final _keptObjectFields = <String, Map<String, Set<String>>>{};
  final _keptInputFields = <String, Set<String>>{};
  final _keptEnums = <String>{};
  final _keptScalars = <String>{};
  final _variableInputsDone = <String>{};

  void _keepLeafType(String name) {
    if (_enums.containsKey(name)) {
      _keptEnums.add(name);
    } else if (_scalars.contains(name)) {
      _keptScalars.add(name);
    }
  }

  // ---- 操作の走査 ----------------------------------------------------------

  void addOperation(OperationDefinitionNode op, Map<String, FragmentDefinitionNode> fragments) {
    for (final v in op.variableDefinitions) {
      _keepVariableType(_named(v.type));
    }
    _walkSelection(op.selectionSet, _rootTypes[op.type]!, fragments);
  }

  void _walkSelection(
    SelectionSetNode sel,
    String typeName,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    for (final s in sel.selections) {
      if (s is FieldNode) {
        if (s.name.value == '__typename') continue;
        final fieldDef = _fieldOf(typeName, s.name.value);
        if (fieldDef == null) {
          throw StateError('スキーマに$typeName.${s.name.value}がありません');
        }
        final args = _keptObjectFields
            .putIfAbsent(typeName, () => {})
            .putIfAbsent(s.name.value, () => <String>{});
        for (final a in s.arguments) {
          final argDef = fieldDef.args.firstWhere(
            (x) => x.name.value == a.name.value,
            orElse: () => throw StateError(
              'スキーマに$typeName.${s.name.value}(${a.name.value})がありません',
            ),
          );
          args.add(a.name.value);
          _keepValue(a.value, argDef.type);
        }
        final returnType = _named(fieldDef.type);
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
        final f = fragments[s.name.value]!;
        _walkSelection(f.selectionSet, f.typeCondition.on.name.value, fragments);
      }
    }
  }

  FieldDefinitionNode? _fieldOf(String typeName, String field) {
    final fields = _objects[typeName]?.fields ?? _interfaces[typeName]?.fields;
    if (fields == null) return null;
    for (final f in fields) {
      if (f.name.value == field) return f;
    }
    return null;
  }

  /// 引数・入力フィールドに渡された値を、宣言された型に沿って辿る。
  void _keepValue(ValueNode value, TypeNode declared) {
    final name = _named(declared);
    if (value is VariableNode) {
      _keepVariableType(name);
      return;
    }
    if (!_inputs.containsKey(name)) {
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
    final fields = _keptInputFields.putIfAbsent(name, () => <String>{});
    final def = _inputs[name]!;
    for (final f in value.fields) {
      final fieldDef = def.fields.firstWhere(
        (x) => x.name.value == f.name.value,
        orElse: () => throw StateError('スキーマに入力$name.${f.name.value}がありません'),
      );
      fields.add(f.name.value);
      _keepValue(f.value, fieldDef.type);
    }
  }

  // ---- 変数で渡す入力型 ----------------------------------------------------

  static final _structural = RegExp(
    r'^(patch|\w+Patch|updateBy\w+|connectBy\w+|create|deleteBy\w+|'
    r'sharedAppellationTo\w+|sharedDictionaryTo\w+|sharedDictionaryValuesUsing\w+)$',
  );

  bool _isLeafInput(String name) {
    final def = _inputs[name];
    if (def == null) return false;
    for (final f in def.fields) {
      final t = _named(f.type);
      if (_inputs.containsKey(t)) return false;
    }
    return true;
  }

  void _keepVariableType(String name) {
    if (!_inputs.containsKey(name)) {
      _keepLeafType(name);
      return;
    }
    if (!_variableInputsDone.add(name)) return;
    final fields = _keptInputFields.putIfAbsent(name, () => <String>{});
    for (final f in _inputs[name]!.fields) {
      final t = _named(f.type);
      if (!_inputs.containsKey(t)) {
        fields.add(f.name.value);
        _keepLeafType(t);
      } else if (_isLeafInput(t)) {
        fields.add(f.name.value);
        _keepVariableType(t);
      } else if (_structural.hasMatch(f.name.value)) {
        fields.add(f.name.value);
        _keepVariableType(t);
      }
    }
  }

  // ---- 出力 ----------------------------------------------------------------

  /// 残したフィールドが参照する型がすべて残っているかを確認し、足りなければ補う。
  void _close() {
    var changed = true;
    while (changed) {
      changed = false;
      for (final entry in _keptInputFields.entries.toList()) {
        final def = _inputs[entry.key]!;
        for (final f in def.fields.where((f) => entry.value.contains(f.name.value))) {
          final t = _named(f.type);
          if (_inputs.containsKey(t) && !_keptInputFields.containsKey(t)) {
            _keepVariableType(t);
            changed = true;
          } else {
            _keepLeafType(t);
          }
        }
      }
    }
  }

  String print() {
    _close();
    String typeStr(TypeNode t) => printNode(t);
    final b = StringBuffer();
    b.writeln('# このファイルはtool/prune_schema.dartが生成した生成用スキーマです。直接編集しないでください。');
    b.writeln('# 全量スキーマ: source/schema.full.graphql(CLAUDE.md 4-2節)');
    b.writeln();
    b.writeln('schema {');
    for (final op in [OperationType.query, OperationType.mutation, OperationType.subscription]) {
      final t = _rootTypes[op];
      if (t != null && _keptObjectFields.containsKey(t)) {
        b.writeln('  ${op.name}: $t');
      }
    }
    b.writeln('}');
    for (final s in _keptScalars.toList()..sort()) {
      if (_builtinScalars.contains(s)) continue;
      b.writeln('\nscalar $s');
    }
    for (final e in _keptEnums.toList()..sort()) {
      b.writeln('\nenum $e {');
      for (final v in _enums[e]!.values) {
        b.writeln('  ${v.name.value}${_directives(v.directives)}');
      }
      b.writeln('}');
    }
    for (final name in _keptObjectFields.keys.toList()..sort()) {
      final kept = _keptObjectFields[name]!;
      final def = _objects[name];
      final fields = def?.fields ?? _interfaces[name]!.fields;
      b.writeln('\n${def != null ? 'type' : 'interface'} $name {');
      for (final f in fields.where((f) => kept.containsKey(f.name.value))) {
        final args = f.args.where((a) => kept[f.name.value]!.contains(a.name.value)).toList();
        final argStr = args.isEmpty
            ? ''
            : '(${args.map((a) => '${a.name.value}: ${typeStr(a.type)}${a.defaultValue == null ? '' : ' = ${printNode(a.defaultValue!)}'}').join(', ')})';
        b.writeln('  ${f.name.value}$argStr: ${typeStr(f.type)}${_directives(f.directives)}');
      }
      b.writeln('}');
    }
    for (final name in _keptInputFields.keys.toList()..sort()) {
      final kept = _keptInputFields[name]!;
      b.writeln('\ninput $name {');
      for (final f in _inputs[name]!.fields.where((f) => kept.contains(f.name.value))) {
        b.writeln(
          '  ${f.name.value}: ${typeStr(f.type)}${f.defaultValue == null ? '' : ' = ${printNode(f.defaultValue!)}'}',
        );
      }
      b.writeln('}');
    }
    return b.toString();
  }

  // @deprecated等の指示子を引き継ぐ(生成モデルの@Deprecated注釈を保つため)
  String _directives(List<DirectiveNode> ds) =>
      ds.map((d) => ' ${printNode(d)}').join();

  String summary() =>
      'objects ${_keptObjectFields.length}/${_objects.length}, '
      'inputs ${_keptInputFields.length}/${_inputs.length}, '
      'enums ${_keptEnums.length}/${_enums.length}';
}

void main(List<String> args) {
  final fullPath = args.isNotEmpty ? args[0] : 'source/schema.full.graphql';
  final graphqlDir = args.length > 1 ? args[1] : 'lib/graphql';
  final outPath = args.length > 2 ? args[2] : 'lib/graphql/schema.graphql';

  final pruner = _Pruner(parseString(File(fullPath).readAsStringSync()));
  final docs = Directory(graphqlDir)
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.graphql') && !_samePath(f.path, outPath))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final file in docs) {
    final doc = parseString(file.readAsStringSync(), url: file.path);
    final fragments = {
      for (final f in doc.definitions.whereType<FragmentDefinitionNode>()) f.name.value: f,
    };
    for (final op in doc.definitions.whereType<OperationDefinitionNode>()) {
      pruner.addOperation(op, fragments);
    }
  }
  final sdl = pruner.print();
  parseString(sdl); // 構文検証
  File(outPath).writeAsStringSync(sdl);
  stdout.writeln('${docs.length} documents -> $outPath (${pruner.summary()}, ${sdl.length} bytes)');
}

bool _samePath(String a, String b) =>
    File(a).absolute.path.replaceAll('\\', '/').toLowerCase() ==
    File(b).absolute.path.replaceAll('\\', '/').toLowerCase();
