// view.yaml(kind: function) -> GraphQLミューテーション(DBの関数の呼び出し)の生成。
//
// PostGraphile は DB の関数を `xxx(input: {pArg: ...})` のミューテーションにする。
//   - 名前は `~PageCall`。出力は `<ディレクトリ>/<ディレクトリ名>_call.graphql`(操作名 `~PageCall`)。
//   - `mutation:` に関数のミューテーション名、`returns:` に戻り値のフィールド(ペイロードの中)を書く。
//   - 引数は、`args:` に書いた入力の名前(省略時は clientMutationId を除くすべて)。変数名は入力名のまま(`pSrc` など)。
//   - 結果は、`columns:`(戻り値の型の列名)。戻り値がスカラー(Int など)のときは、`columns:` を書かない(`returns:` のフィールドをそのまま選ぶ)。
//
// STABLE の関数(PostGraphile では Query のフィールド。引数は入力型ではなく、フィールドの引数)は、`mutation:` の代わりに `query:` に
// Query のフィールド名を書く(`returns:` は不要)。結果は `columns:`(戻り値の行の型の列名)。戻り値が集合のとき(コネクション)は `nodes` の中を選ぶ。
//   - 出力は同じ(`<ディレクトリ>/<ディレクトリ名>_call.graphql`)で、操作は `query ~PageCall`。変数は `args:`(省略時は、ページングと絞り込み(first・last・offset・before・after・filter・orderBy・condition)を除くすべての引数)。

import 'names.dart';
import 'read_generator.dart';
import 'schema_index.dart';

class FunctionGenerator {
  FunctionGenerator(this.schema, this.log);
  final SchemaIndex schema;
  final GenLog log;

  String? generate(String name, Map<String, dynamic> node) {
    if (node['query'] != null) return _generateQuery(name, node);
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
    // 戻り値がスカラー(Int など。PostGraphile はペイロードのフィールドにする)なら、列の指定は不要で、そのまま選ぶ
    final isScalar = row == null && !ret.isList;
    for (final c in isScalar ? const [] : (node['columns'] as List?) ?? const []) {
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
    if (!isScalar && result.isEmpty && log.errors.length == before) log.error(name, '`columns`が空です');
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
      ..writeln('  ) {');
    if (isScalar) {
      b.writeln('    $returns');
    } else {
      b.writeln('    $returns {');
      for (final r in result) {
        b.writeln('      $r');
      }
      b.writeln('    }');
    }
    b
      ..writeln('  }')
      ..writeln('}');
    return b.toString();
  }

  static const _pagingArgs = {'first', 'last', 'offset', 'before', 'after', 'filter', 'orderBy', 'condition'};

  /// STABLE の関数(Query のフィールド)の呼び出し。
  String? _generateQuery(String name, Map<String, dynamic> node) {
    final qName = node['query'] as String;
    final q = schema.query[qName];
    if (q == null) {
      log.error(name, 'Query のフィールド$qNameがスキーマにありません');
      return null;
    }
    final before = log.errors.length;
    final names = [
      for (final a in (node['args'] as List?) ?? [for (final k in q.args.keys) if (!_pagingArgs.contains(k)) k]) '$a',
    ];
    final vars = OperationVars();
    final args = <String>[];
    for (final a in names) {
      final t = q.args[a];
      if (t == null) {
        log.error(name, '引数$aが Query の$qNameにありません');
        continue;
      }
      vars.declare(a, t);
      args.add('$a: \$$a');
    }
    // 戻り値が集合(コネクション)なら nodes の中の行の型、そうでなければ戻り値の型そのもの
    final rowType = schema.connectionNodeType[q.typeName] ?? q.typeName;
    final isConnection = schema.connectionNodeType.containsKey(q.typeName);
    final row = schema.objects[rowType];
    final result = <String>[];
    for (final c in (node['columns'] as List?) ?? const []) {
      if (c is! String) {
        log.error(name, '戻り値の列は列名(文字列)だけを指定できます: $c');
        continue;
      }
      if (row?[camel(c)] == null) {
        log.error(name, '列$cが戻り値の型$rowTypeにありません');
        continue;
      }
      result.add(camel(c));
    }
    if (result.isEmpty && log.errors.length == before) log.error(name, '`columns`が空です');
    if (log.errors.length > before) return null;

    final dir = directoryOf(name);
    final b = StringBuffer()
      ..writeln('# $dir画面 - Call(DBの関数(STABLE)の呼び出し。Query)')
      ..writeln('#')
      ..writeln('# 画面仕様: gql/*.yaml #$name')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..write('query ${pascal(dir)}Call');
    final lines = vars.lines();
    if (lines.isEmpty) {
      b.writeln(' {');
    } else {
      b.writeln('(');
      for (final v in lines) {
        b.writeln('  $v');
      }
      b.writeln(') {');
    }
    b.writeln(args.isEmpty ? '  $qName {' : '  $qName(${args.join(', ')}) {');
    final pad = isConnection ? '      ' : '    ';
    if (isConnection) b.writeln('    nodes {');
    for (final r in result) {
      b.writeln('$pad$r');
    }
    if (isConnection) b.writeln('    }');
    b
      ..writeln('  }')
      ..writeln('}');
    return b.toString();
  }
}
