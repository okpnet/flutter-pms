// 本家スキーマ + 機能の .graphql -> 画面用 schema.graphql を抜き出す(検証も兼ねる)。
//
// 使い方(リポジトリのルートで実行):
//   dart run tools/gql_schema_pruner/bin/gql_schema_pruner.dart \
//     --schema .schema/schema.graphql --root packages/model_providers [--check]
//
//   --check  書き出さず、差分があれば終了コード1にする(CI 用)。
// 終了コード: 0=成功、1=検証エラーまたは --check の差分あり、64=引数エラー。

import 'dart:io';

import 'package:gql_schema_pruner/gql_schema_pruner.dart';

void main(List<String> args) {
  String? opt(String name) {
    final i = args.indexOf(name);
    return i >= 0 && i + 1 < args.length ? args[i + 1] : null;
  }

  final schema = opt('--schema');
  final root = opt('--root');
  if (schema == null || root == null) {
    stderr.writeln(
      '使い方: gql_schema_pruner --schema <本家スキーマ> --root <モデルパッケージの親> [--check]',
    );
    exit(64);
  }
  final check = args.contains('--check');
  final run = runPruner(
    schemaPath: schema,
    root: root,
    check: check,
    log: (line) => line.startsWith('エラー') ? stderr.writeln(line) : stdout.writeln(line),
  );
  if (run.exitCode != 0 && check && run.changed.isNotEmpty) {
    stderr.writeln('画面用スキーマに差分があります: ${run.changed.join(', ')}(melos run gql:prune)');
  }
  exit(run.exitCode);
}
