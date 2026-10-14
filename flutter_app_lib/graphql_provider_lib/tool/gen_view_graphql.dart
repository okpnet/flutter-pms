// view.yaml -> GraphQL の生成ツール(CLI)。build_runnerのBuilderと同じライブラリを使う。
//
// 使い方(パッケージのルートで実行):
//   dart run tool/gen_view_graphql.dart [--out <出力先>] [--only <ノード名>] [--compare <正規化の出力先>]
//   既定の出力先: source/generated_graphql
//   --compare: 生成物と lib/graphql/ の既存ファイルを正規化して比較し、差分のあるファイルを報告する。

import 'dart:io';

import 'view_graphql/generator.dart';
import 'view_graphql/normalize.dart';

void main(List<String> args) {
  String? opt(String name) {
    final i = args.indexOf(name);
    return i >= 0 && i + 1 < args.length ? args[i + 1] : null;
  }

  final out = opt('--out') ?? 'source/generated_graphql';
  final only = opt('--only');
  final compareDir = opt('--compare');

  final result = generateAll(
    viewYaml: File(opt('--yaml') ?? 'source/view.yaml').readAsStringSync(),
    schemaPath: 'source/schema.full.graphql',
    only: only,
  );
  for (final w in result.log.warnings) {
    stderr.writeln('警告: $w');
  }
  for (final e in result.log.errors) {
    stderr.writeln('エラー: $e');
  }
  for (final e in result.files.entries) {
    final f = File('$out/${e.key}')..createSync(recursive: true);
    f.writeAsStringSync(e.value);
  }
  stdout.writeln('${result.files.length}ファイルを$outへ出力(エラー${result.log.errors.length}件)');

  if (compareDir != null) {
    var same = 0, diff = 0, missing = 0;
    for (final e in result.files.entries) {
      final existing = File('lib/graphql/${e.key}');
      if (!existing.existsSync()) {
        missing++;
        stdout.writeln('既存なし: ${e.key}');
        continue;
      }
      String ng, nx;
      try {
        ng = normalizeGraphql(e.value);
        nx = normalizeGraphql(existing.readAsStringSync());
      } catch (ex) {
        stdout.writeln('正規化エラー: ${e.key}: $ex');
        continue;
      }
      if (ng == nx) {
        same++;
        File('$compareDir/same.txt').writeAsStringSync('${e.key}\n', mode: FileMode.append);
      } else {
        diff++;
        File('$compareDir/${e.key}.generated.txt')
          ..createSync(recursive: true)
          ..writeAsStringSync(ng);
        File('$compareDir/${e.key}.existing.txt')
          ..createSync(recursive: true)
          ..writeAsStringSync(nx);
        stdout.writeln('差分あり: ${e.key}');
      }
    }
    stdout.writeln('比較: 一致$same件 / 差分$diff件 / 既存なし$missing件');
  }
}
