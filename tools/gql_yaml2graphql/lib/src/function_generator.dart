// view.yaml(kind: function) -> GraphQLミューテーション(DBの関数の呼び出し)の生成。
//
// PostGraphile は DB の関数を `xxx(input: {pArg: ...})` のミューテーションにする。
//   - 名前は `~PageCall`。出力は `<ディレクトリ>/<ディレクトリ名>_call.graphql`(操作名 `~PageCall`)。
//   - `mutation:` に関数のミューテーション名、`returns:` に戻り値のフィールド(ペイロードの中)を書く。
//   - 引数は、`args:` に書いた入力の名前(省略時は clientMutationId を除くすべて)。変数名は入力名のまま(`pSrc` など)。
//   - 結果は、`columns:`(戻り値の型の列名)。

import 'names.dart';
import 'read_generator.dart';
import 'schema_index.dart';

class FunctionGenerator {
  FunctionGenerator(this.schema, this.log);
  final SchemaIndex schema;
  final GenLog log;

  String? generate(String name, Map<String, dynamic> node) {
    final mutName = node['mutation'] as String?;
    final returns = node['returns'] as String?;
    if (mutName == null || returns == null) {
      log.error(name, '`mutation`と`returns`が必要です');
      return null;
    }
    final mut = schema.mutation[mutName];
    if (mut == null) {
      log.error(name, 'ミューテーション$mutNameがスキーマにありません');
      return null;
    }
    final inputType = mut.args['input']!.replaceAll('!', '');
    final input = schema.inputs[inputType];
    if (input == null) {
      log.error(name, '入力型$inputTypeがありません');
      return null;
    }
    final payload = schema.objects[mut.typeName];
    final ret = payload?[returns];
    if (ret == null) {
      log.error(name, 'ペイロード${mut.typeName}に$returnsがありません');
      return null;
    }
    final before = log.errors.length;
    final names = [
      for (final a in (node['args'] as List?) ?? [for (final k in input.keys) if (k != 'clientMutationId') k]) '$a',
    ];
    final vars = OperationVars();
    final args = <String>[];
    for (final a in names) {
      final f = input[a];
      if (f == null) {
        log.error(name, '引数$aが入力型$inputTypeにありません');
        continue;
      }
      vars.declare(a, f.typeSource);
      args.add('$a: \$$a');
    }
    final result = <String>[];
    final row = schema.objects[ret.typeName];
    for (final c in (node['columns'] as List?) ?? const []) {
      if (c is! String) {
        log.error(name, '戻り値の列は列名(文字列)だけを指定できます: $c');
        continue;
      }
      if (row?[camel(c)] == null) {
        log.error(name, '列$cが戻り値の型${ret.typeName}にありません');
        continue;
      }
      result.add(camel(c));
    }
    if (result.isEmpty && log.errors.length == before) log.error(name, '`columns`が空です');
    if (log.errors.length > before) return null;

    final dir = directoryOf(name);
    final b = StringBuffer()
      ..writeln('# $dir画面 - Call(DBの関数の呼び出し)')
      ..writeln('#')
      ..writeln('# 画面仕様: gql/*.yaml #$name')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..writeln('mutation ${pascal(dir)}Call(');
    for (final v in vars.lines()) {
      b.writeln('  $v');
    }
    b
      ..writeln(') {')
      ..writeln('  $mutName(')
      ..writeln('    input: {');
    for (final a in args) {
      b.writeln('      $a');
    }
    b
      ..writeln('    }')
      ..writeln('  ) {')
      ..writeln('    $returns {');
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
