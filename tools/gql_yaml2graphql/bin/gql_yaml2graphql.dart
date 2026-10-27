// 各モデルパッケージの gql/*.yaml -> lib/src/graphql/*.graphql を生成する。
//
// 使い方(リポジトリのルートで実行):
//   dart run tools/gql_yaml2graphql/bin/gql_yaml2graphql.dart --root packages/model_providers \
//     [--schema .schema/schema.graphql] [--only <ノード名>] [--check]
// 終了コード: 0=成功、1=エラーまたは --check の差分あり、64=引数エラー。

import 'dart:io';

import 'package:gql_yaml2graphql/gql_yaml2graphql.dart';

void main(List<String> args) {
  String? opt(String name) {
    final i = args.indexOf(name);
    return i >= 0 && i + 1 < args.length ? args[i + 1] : null;
  }

  final root = opt('--root');
  if (root == null) {
    stderr.writeln('使い方: gql_yaml2graphql --root <モデルパッケージの親> [--schema <本家スキーマ>] [--only <ノード名>] [--check]');
    exit(64);
  }
  final run = runYamlToGraphql(
    root: root,
    schemaPath: opt('--schema') ?? '.schema/schema.graphql',
    only: opt('--only'),
    check: args.contains('--check'),
    log: (l) => l.startsWith('エラー') || l.startsWith('警告') ? stderr.writeln(l) : stdout.writeln(l),
  );
  exit(run.exitCode);
}
