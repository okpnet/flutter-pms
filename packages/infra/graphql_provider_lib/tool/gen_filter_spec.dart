// 検索条件(平坦なMap -> 入れ子のFilter)の対応表の生成ツール(要件0050)。
//
// 各画面のread(lib/graphql/<画面>/<画面>_read.graphql)の選択経路を辿り、平坦化キーごとに
// 「どの関連を通って、どの列のFilterへ着くか」を書き出す(lib/contents/<画面>_filter_spec.dart)。
// lib/extensions/flat_filter_converter.dartのFlatFilterConverterが、この対応で展開する。
//
// 規則:
//   - 平坦化キーは、各階層のエイリアス(無ければフィールド名)を`||`で結んだもの。
//     1対多(Connection)は`nodes`を飛ばして、エイリアスの次に子のフィールドを続ける
//     (nested_map_flattener.dartのcollapseSingleRecordPathsと同じ形)。
//   - 葉(選択セットを持たないフィールド)のうち、Filter型に同名の列があるものだけを対象とする。
//   - 前方の関連は同名のFilterフィールドで辿り、1対多は`some`で辿る。
//   - 1対多のフィールドに変数による`condition`(例: `sharedLanguageCodeId: $languageCodeId`)が
//     付いている場合は、その条件を`some`の中へ加える対応として残す。
//   - 最上位のFilter型は、操作の`$filter`変数の型とする。
//
// 使い方(パッケージのルートで実行。tool/prune_schema.dartの後):
//   dart run tool/gen_filter_spec.dart [生成用スキーマ] [GraphQLディレクトリ] [出力ディレクトリ]
//   既定: lib/graphql/schema.graphql lib/graphql lib/contents

import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

String _named(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : _named((t as ListTypeNode).type);

String _pascal(String snake) => snake
    .split('_')
    .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
    .join();

class _Step {
  _Step(this.field, {this.many = false, this.conditions = const {}});
  final String field;
  final bool many;
  final Map<String, String> conditions;

  String get code => many
      ? (conditions.isEmpty
            ? "FilterStep.many('$field')"
            : "FilterStep.many('$field', {${conditions.entries.map((e) => "'${e.key}': '${e.value}'").join(', ')}})")
      : "FilterStep('$field')";
}

class _Generator {
  _Generator(DocumentNode schema) {
    for (final d in schema.definitions) {
      if (d is ObjectTypeDefinitionNode) _objects[d.name.value] = d;
      if (d is InputObjectTypeDefinitionNode) _inputs[d.name.value] = d;
    }
  }

  final _objects = <String, ObjectTypeDefinitionNode>{};
  final _inputs = <String, InputObjectTypeDefinitionNode>{};

  FieldDefinitionNode? _fieldOf(String type, String name) {
    for (final f in _objects[type]?.fields ?? const <FieldDefinitionNode>[]) {
      if (f.name.value == name) return f;
    }
    return null;
  }

  InputValueDefinitionNode? _filterField(String filter, String name) {
    for (final f in _inputs[filter]?.fields ?? const <InputValueDefinitionNode>[]) {
      if (f.name.value == name) return f;
    }
    return null;
  }

  /// 入力型のうち、他の入力型を含まないもの(UUIDFilter等の列用のFilter)。
  bool _isColumnFilter(String name) {
    final def = _inputs[name];
    if (def == null) return false;
    return !def.fields.any((f) => _inputs.containsKey(_named(f.type)));
  }

  List<FieldNode> _fields(
    SelectionSetNode sel,
    Map<String, FragmentDefinitionNode> fragments,
  ) => [
    for (final s in sel.selections)
      if (s is FieldNode)
        s
      else if (s is InlineFragmentNode)
        ..._fields(s.selectionSet, fragments)
      else if (s is FragmentSpreadNode)
        ..._fields(fragments[s.name.value]!.selectionSet, fragments),
  ];

  /// 平坦化キー -> (経路, 列)。
  Map<String, (List<_Step>, String)> collect(
    OperationDefinitionNode op,
    Map<String, FragmentDefinitionNode> fragments,
    String Function(String) onFilterType,
  ) {
    final filterVar = op.variableDefinitions.where((v) => v.variable.name.value == 'filter');
    if (filterVar.isEmpty) return {};
    final filterType = _named(filterVar.first.type);
    onFilterType(filterType);
    final root = _fields(op.selectionSet, fragments).first;
    final conn = _fieldOf('Query', root.name.value)!;
    final nodes = _fields(root.selectionSet!, fragments).firstWhere((f) => f.name.value == 'nodes');
    final nodeType = _named(_fieldOf(_named(conn.type), 'nodes')!.type);
    final result = <String, (List<_Step>, String)>{};
    _walk(_fields(nodes.selectionSet!, fragments), nodeType, filterType, const [], const [], fragments, result);
    return result;
  }

  void _walk(
    List<FieldNode> fields,
    String objectType,
    String filterType,
    List<String> prefix,
    List<_Step> steps,
    Map<String, FragmentDefinitionNode> fragments,
    Map<String, (List<_Step>, String)> out,
  ) {
    for (final f in fields) {
      final real = f.name.value;
      if (real == '__typename') continue;
      final alias = f.alias?.value ?? real;
      final filterField = _filterField(filterType, real);
      if (filterField == null) continue;
      final relType = _named(filterField.type);
      if (f.selectionSet == null) {
        if (_isColumnFilter(relType)) out[[...prefix, alias].join('||')] = (steps, real);
        continue;
      }
      final objField = _fieldOf(objectType, real);
      if (objField == null || !_inputs.containsKey(relType) || _isColumnFilter(relType)) continue;
      final relDef = _inputs[relType]!;
      final someField = relDef.fields.where((x) => x.name.value == 'some');
      if (someField.isEmpty) {
        _walk(
          _fields(f.selectionSet!, fragments),
          _named(objField.type),
          relType,
          [...prefix, alias],
          [...steps, _Step(real)],
          fragments,
          out,
        );
        continue;
      }
      final nodes = _fields(f.selectionSet!, fragments).where((x) => x.name.value == 'nodes');
      final nodesField = _fieldOf(_named(objField.type), 'nodes');
      if (nodes.isEmpty || nodesField == null) continue;
      _walk(
        _fields(nodes.first.selectionSet!, fragments),
        _named(nodesField.type),
        _named(someField.first.type),
        [...prefix, alias],
        [...steps, _Step(real, many: true, conditions: _conditions(f))],
        fragments,
        out,
      );
    }
  }

  /// `condition: { 列: $変数 }`のうち、変数で渡されるものだけを取り出す。
  Map<String, String> _conditions(FieldNode f) {
    final result = <String, String>{};
    for (final a in f.arguments.where((a) => a.name.value == 'condition')) {
      final v = a.value;
      if (v is! ObjectValueNode) continue;
      for (final of in v.fields) {
        if (of.value is VariableNode) {
          result[of.name.value] = (of.value as VariableNode).name.value;
        }
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final schemaPath = args.isNotEmpty ? args[0] : 'lib/graphql/schema.graphql';
  final graphqlDir = args.length > 1 ? args[1] : 'lib/graphql';
  final outDir = args.length > 2 ? args[2] : 'lib/contents';

  final gen = _Generator(parseString(File(schemaPath).readAsStringSync()));
  final reads = Directory(graphqlDir)
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.replaceAll('\\', '/').endsWith('_read.graphql'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  var count = 0;
  for (final file in reads) {
    final dir = file.uri.pathSegments.last.replaceFirst('_read.graphql', '');
    final doc = parseString(file.readAsStringSync(), url: file.path);
    final fragments = {
      for (final f in doc.definitions.whereType<FragmentDefinitionNode>()) f.name.value: f,
    };
    final op = doc.definitions.whereType<OperationDefinitionNode>().first;
    String? filterType;
    final paths = gen.collect(op, fragments, (t) => filterType = t);
    if (filterType == null) {
      stdout.writeln('skip $dir(\$filterなし)');
      continue;
    }
    final b = StringBuffer()
      ..writeln('// ${dir}_filter_spec.dart')
      ..writeln('//')
      ..writeln('// このファイルはtool/gen_filter_spec.dartが生成した検索条件の対応表です。直接編集しないでください。')
      ..writeln('// lib/graphql/$dir/${dir}_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。')
      ..writeln('// 使い方: FlatFilterConverter(${_pascal(dir)}FilterSpec.spec).convert(平坦なMap, variables: {...})')
      ..writeln("import '../extensions/flat_filter_converter.dart';")
      ..writeln()
      ..writeln('abstract class ${_pascal(dir)}FilterSpec {')
      ..writeln('  static const FlatFilterSpec spec = FlatFilterSpec(\'$filterType\', {');
    for (final e in paths.entries) {
      b.writeln("    '${e.key}': FlatFilterPath([${e.value.$1.map((s) => s.code).join(', ')}], '${e.value.$2}'),");
    }
    b
      ..writeln('  });')
      ..writeln('}');
    File('$outDir/${dir}_filter_spec.dart').writeAsStringSync(b.toString());
    stdout.writeln('$dir: $filterType, ${paths.length} keys');
    count++;
  }
  stdout.writeln('$count files -> $outDir');
}
