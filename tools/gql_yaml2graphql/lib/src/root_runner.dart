// `--root`(packages/model_providers)配下の gql/*.yaml を読み、各モデルパッケージの
// lib/src/graphql/ へ .graphql を書き出す。
//
// YAMLのアンカーはパッケージをまたいで参照できる(共通定義・他機能の画面の再利用)ため、
// すべてのパッケージの gql/*.yaml を1つに結合して変換し、出力は定義したノードの持ち主のパッケージへ振り分ける。
// lib/ を持たないディレクトリ(gql_shared など)は共通定義だけを置く場所で、画面のノードは置けない。

import 'dart:io';

import 'package:path/path.dart' as p;

import 'generator.dart';
import 'names.dart';
import 'view_sources.dart';

/// 生成先(パッケージのルートからの相対パス)。
const graphqlOutputDir = 'lib/src/graphql';

class RootRunResult {
  RootRunResult(this.exitCode, this.written, this.changed);
  final int exitCode;

  /// パッケージ名 -> 生成したファイル数
  final Map<String, int> written;

  /// 内容が変わった(`check` では変わるはずだった)ファイル
  final List<String> changed;
}

RootRunResult runYamlToGraphql({
  required String root,
  required String schemaPath,
  bool check = false,
  String? only,
  void Function(String line)? log,
}) {
  void say(String s) => log?.call(s);
  if (!File(schemaPath).existsSync()) {
    say('エラー 本家スキーマがありません: $schemaPath(melos run gql:schema で取得してください)');
    return RootRunResult(1, const {}, const []);
  }
  // key: <パッケージ>/<gql内の相対パス>
  final files = <String, String>{};
  for (final pkg in Directory(root).listSync().whereType<Directory>()) {
    final gql = Directory(p.join(pkg.path, 'gql'));
    if (!gql.existsSync()) continue;
    for (final f in gql.listSync(recursive: true).whereType<File>()) {
      if (!f.path.endsWith('.yaml')) continue;
      final rel = p.posix.joinAll(p.split(p.relative(f.path, from: pkg.path)));
      files['${p.basename(pkg.path)}/$rel'] = f.readAsStringSync();
    }
  }
  if (files.isEmpty) {
    say('エラー $root 配下に gql/*.yaml がありません');
    return RootRunResult(1, const {}, const []);
  }

  final CombinedViewSources sources;
  final Map<String, dynamic> views;
  try {
    sources = combineViewSources(files);
    views = sources.load();
  } on ViewSourceException catch (e) {
    say('エラー $e');
    return RootRunResult(1, const {}, const []);
  }

  // ノード -> 持ち主のパッケージ
  final ownerOfNode = <String, String>{};
  for (final entry in sources.order) {
    final i = entry.indexOf(': ');
    ownerOfNode[entry.substring(i + 2)] = entry.substring(0, i).split('/').first;
  }
  final ownerOfDir = <String, String>{};
  for (final node in views.keys) {
    if (isGenerationTarget(node)) ownerOfDir[directoryOf(node)] = ownerOfNode[node]!;
  }

  final result = generateAll(viewYaml: sources.text, schemaPath: schemaPath, only: only);
  for (final w in result.log.warnings) {
    say('警告 $w');
  }
  for (final e in result.log.errors) {
    say('エラー $e');
  }
  var failed = result.log.errors.isNotEmpty;

  final written = <String, int>{};
  final changed = <String>[];
  for (final e in result.files.entries) {
    final dir = e.key.split('/').first;
    final owner = ownerOfDir[dir]!;
    final pkgDir = Directory(p.join(root, owner));
    if (!File(p.join(pkgDir.path, 'pubspec.yaml')).existsSync()) {
      say('エラー [$owner] 画面($dir)はモデルパッケージ(pubspec.yaml のあるディレクトリ)に置いてください');
      failed = true;
      continue;
    }
    final out = File(p.join(pkgDir.path, graphqlOutputDir, e.key));
    final current = out.existsSync() ? out.readAsStringSync().replaceAll('\r\n', '\n') : null;
    written[owner] = (written[owner] ?? 0) + 1;
    if (current == e.value) continue;
    changed.add(p.posix.join(owner, graphqlOutputDir, e.key));
    if (!check) {
      out.parent.createSync(recursive: true);
      out.writeAsStringSync(e.value);
    }
  }
  for (final w in written.entries) {
    say('${check ? '確認' : '生成'} ${w.key}: ${w.value}ファイル');
  }
  if (check) {
    for (final c in changed) {
      say('差分あり $c');
    }
  }
  return RootRunResult(failed || (check && changed.isNotEmpty) ? 1 : 0, written, changed);
}

/// `root` 配下の全パッケージの gql/*.yaml を読む(キー: `<パッケージ>/<gql内の相対パス>`)。
Map<String, String> readRootYaml(String root) {
  final files = <String, String>{};
  for (final pkg in Directory(root).listSync().whereType<Directory>()) {
    final gql = Directory(p.join(pkg.path, 'gql'));
    if (!gql.existsSync()) continue;
    for (final f in gql.listSync(recursive: true).whereType<File>()) {
      if (!f.path.endsWith('.yaml')) continue;
      final rel = p.posix.joinAll(p.split(p.relative(f.path, from: pkg.path)));
      files['${p.basename(pkg.path)}/$rel'] = f.readAsStringSync();
    }
  }
  return files;
}
