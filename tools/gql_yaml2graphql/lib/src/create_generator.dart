// view.yaml(kind: create) -> GraphQLミューテーション(登録)の生成。
//
// 更新(edit)と同じ列の定義を使い、`createXxx(input: {xxx: {...}})` を作る。
//   - 名前は `~PageCreate`。出力は `<ディレクトリ>/<ディレクトリ名>_create.graphql`(操作名 `~PageCreate`)。
//   - 列は文字列(列名)だけを受け付ける。入れ子(関係の書き込み)は対象外で、エラーにする。
//   - 引数の型は、スキーマの入力型(`XxxInput`)のとおり(必須の列は `!`)。
//   - 結果は、主キーと指定した列を返す。
//   - 監査列(update_at など)は、指定した場合だけ引数にする。登録は DB の既定値に任せるのが原則。

import 'names.dart';
import 'read_generator.dart';
import 'schema_index.dart';

class CreateGenerator {
  CreateGenerator(this.schema, this.log);
  final SchemaIndex schema;
  final GenLog log;

  String? generate(String name, Map<String, dynamic> node) {
    final from = node['from'] as String?;
    if (from == null) {
      log.error(name, '`from`がありません');
      return null;
    }
    final type = schema.typeOfTable(from);
    final mutName = 'create$type';
    final mut = schema.mutation[mutName];
    if (mut == null) {
      log.error(name, 'ミューテーション$mutNameがスキーマにありません');
      return null;
    }
    final inputType = mut.args['input']!.replaceAll('!', '');
    final wrapper = schema.inputs[inputType];
    final field = lowerFirst(type);
    final rowType = wrapper?[field]?.typeName;
    final row = rowType == null ? null : schema.inputs[rowType];
    if (row == null) {
      log.error(name, '入力型$inputTypeに$fieldがありません');
      return null;
    }
    final pk = schema.primaryKeyField(type);

    final vars = OperationVars();
    final args = <String>[];
    final result = <String>[if (pk != null) pk];
    final before = log.errors.length;
    for (final c in (node['columns'] as List?) ?? const []) {
      if (c is! String) {
        log.error(name, '登録の列は列名(文字列)だけを指定できます: $c');
        continue;
      }
      final f = row[camel(c)];
      if (f == null) {
        log.error(name, '列$cが入力型$rowTypeにありません');
        continue;
      }
      vars.declare(camel(c), f.typeSource);
      args.add('${camel(c)}: \$${camel(c)}');
      if (!result.contains(camel(c))) result.add(camel(c));
    }
    if (log.errors.length > before) return null;

    final dir = directoryOf(name);
    final b = StringBuffer()
      ..writeln('# $dir画面 - Create(登録のミューテーション)')
      ..writeln('#')
      ..writeln('# 画面仕様: gql/*.yaml #$name')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..writeln('mutation ${pascal(dir)}Create(');
    for (final v in vars.lines()) {
      b.writeln('  $v');
    }
    b
      ..writeln(') {')
      ..writeln('  $mutName(')
      ..writeln('    input: {')
      ..writeln('      $field: {');
    for (final a in args) {
      b.writeln('        $a');
    }
    b
      ..writeln('      }')
      ..writeln('    }')
      ..writeln('  ) {')
      ..writeln('    $field {');
    for (final r in result) {
      b.writeln('      $r');
    }
    b
      ..writeln('    }')
      ..writeln('  }')
      ..writeln('}');
    return b.toString();
  }
}
