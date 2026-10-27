// 各モデルパッケージのバレルファイル(lib/<パッケージ名>.dart)を、画面ごとの生成物から作る。
//
// 使い方(リポジトリのルートで実行。gql_schema_pruner の後、build_runner の前後どちらでもよい):
//   dart run tools/gql_yaml2graphql/bin/gen_barrel.dart --root packages/model_providers
// 公開するのは、生成モデル(lib/src/graphql/**/*.graphql.dart)と、検索条件・平坦化キー(lib/src/contents)。

import 'dart:io';

void main(List<String> args) {
  final i = args.indexOf('--root');
  if (i < 0 || i + 1 >= args.length) {
    stderr.writeln('使い方: gen_barrel --root <モデルパッケージの親>');
    exit(64);
  }
  for (final pkg in Directory(args[i + 1]).listSync().whereType<Directory>()) {
    final name = pkg.path.replaceAll(r'\', '/').split('/').last;
    final graphqlDir = Directory('${pkg.path}/lib/src/graphql');
    if (!graphqlDir.existsSync()) continue;
    final exports = <String>[];
    for (final f in graphqlDir.listSync(recursive: true).whereType<File>()) {
      final rel = f.path.replaceAll(r'\', '/').split('${pkg.path.replaceAll(r'\', '/')}/lib/').last;
      if (rel.endsWith('.graphql')) exports.add('${rel.substring(0, rel.length - '.graphql'.length)}.graphql.dart');
    }
    final contents = Directory('${pkg.path}/lib/src/contents');
    if (contents.existsSync()) {
      for (final f in contents.listSync().whereType<File>()) {
        if (f.path.endsWith('.dart')) {
          exports.add('src/contents/${f.path.replaceAll(r'\', '/').split('/').last}');
        }
      }
    }
    exports.sort();
    final b = StringBuffer()
      ..writeln('// このファイルは gen_barrel が生成したバレルファイルです。直接編集しないでください。')
      ..writeln('library;')
      ..writeln();
    for (final e in exports) {
      b.writeln("export '$e';");
    }
    File('${pkg.path}/lib/$name.dart').writeAsStringSync(b.toString());
    stdout.writeln('$name: ${exports.length} exports');
  }
}
