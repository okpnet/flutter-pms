import 'dart:io';

import 'package:gql/language.dart';
import 'package:path/path.dart' as p;

import 'collector.dart';
import 'printer.dart';
import 'schema_index.dart';
import 'validator.dart';

/// モデルパッケージ内の画面用スキーマの置き場所(パッケージのルートからの相対パス)。
const prunedSchemaPath = 'lib/src/graphql/schema.graphql';

/// 1つのモデルパッケージの抜き出し結果。
class PackagePruneResult {
  PackagePruneResult({
    required this.feature,
    required this.documentCount,
    required this.issues,
    this.sdl,
  });

  final String feature;
  final int documentCount;
  final List<PruneIssue> issues;

  /// 画面用スキーマ。検証に失敗したときは null。
  final String? sdl;

  Map<String, Object?> toJson() => {
        'feature': feature,
        'documentCount': documentCount,
        'issues': [for (final i in issues) i.toJson()],
      };
}

/// [sources](キー: 表示用のファイル名、値: `.graphql` の内容)から画面用スキーマを作る。
///
/// 存在しないフィールド・引数・型を指定していれば、[PackagePruneResult.issues] に機能名とファイル名付きで入れる。
PackagePruneResult prunePackage({
  required SchemaIndex index,
  required String feature,
  required Map<String, String> sources,
}) {
  final sink = IssueSink()..feature = feature;
  final validator = OperationValidator(index, sink);
  final collector = UsageCollector(index, sink);
  final names = sources.keys.toList()..sort();
  for (final name in names) {
    sink.file = name;
    try {
      final doc = parseString(sources[name]!, url: name);
      validator.validateDocument(doc);
      collector.addDocument(doc);
    } on Object catch (e) {
      sink.add('GraphQLを解析できません: $e');
    }
  }
  if (sink.issues.isNotEmpty) {
    return PackagePruneResult(
      feature: feature,
      documentCount: names.length,
      issues: sink.issues,
    );
  }
  collector.close();
  final sdl = printPrunedSchema(index, collector.usage);
  parseString(sdl); // 構文検証
  return PackagePruneResult(
    feature: feature,
    documentCount: names.length,
    issues: const [],
    sdl: sdl,
  );
}

/// `--root` 配下のモデルパッケージ(`lib/src/graphql` を持つもの)。
List<Directory> findModelPackages(String root) {
  final dir = Directory(root);
  if (!dir.existsSync()) return [];
  return dir
      .listSync()
      .whereType<Directory>()
      .where((d) => Directory(p.join(d.path, 'lib', 'src', 'graphql')).existsSync())
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
}

/// パッケージの入力(`.graphql`)を読む。画面用スキーマ自身と生成物は入力に含めない。
Map<String, String> readPackageSources(Directory package) {
  final graphqlDir = Directory(p.join(package.path, 'lib', 'src', 'graphql'));
  final out = <String, String>{};
  for (final f in graphqlDir.listSync(recursive: true).whereType<File>()) {
    if (!f.path.endsWith('.graphql')) continue;
    final rel = p.posix.joinAll(p.split(p.relative(f.path, from: package.path)));
    if (rel == prunedSchemaPath) continue;
    out[rel] = f.readAsStringSync();
  }
  return out;
}

String _normalize(String s) => s.replaceAll('\r\n', '\n');

/// 実行の結果。[exitCode] は 0=成功、1=検証エラーまたは `--check` の差分あり。
class PruneRun {
  PruneRun(this.exitCode, this.results, this.changed);

  final int exitCode;
  final List<PackagePruneResult> results;

  /// 内容が変わった(`--check` では変わるはずだった)パッケージ名。
  final List<String> changed;
}

/// [root] 配下の全モデルパッケージについて、画面用スキーマを書き出す。
/// [check] が true のときは書き出さず、差分があれば失敗にする(CI 用)。
PruneRun runPruner({
  required String schemaPath,
  required String root,
  bool check = false,
  void Function(String line)? log,
}) {
  void say(String s) => log?.call(s);
  final schemaFile = File(schemaPath);
  if (!schemaFile.existsSync()) {
    say('本家スキーマがありません: $schemaPath(melos run gql:schema で取得してください)');
    return PruneRun(1, const [], const []);
  }
  final index = SchemaIndex(parseString(schemaFile.readAsStringSync()));
  final results = <PackagePruneResult>[];
  final changed = <String>[];
  var failed = false;
  for (final pkg in findModelPackages(root)) {
    final feature = p.basename(pkg.path);
    final sources = readPackageSources(pkg);
    if (sources.isEmpty) continue;
    final result = prunePackage(index: index, feature: feature, sources: sources);
    results.add(result);
    if (result.issues.isNotEmpty) {
      failed = true;
      for (final i in result.issues) {
        say('エラー $i');
      }
      continue;
    }
    final out = File(p.join(pkg.path, prunedSchemaPath));
    final current = out.existsSync() ? _normalize(out.readAsStringSync()) : null;
    final same = current == result.sdl;
    if (!same) changed.add(feature);
    if (check) {
      say('${same ? '一致' : '差分あり'} $feature');
    } else if (!same) {
      out.writeAsStringSync(result.sdl!);
      say('更新 $feature (${sources.length}文書)');
    } else {
      say('変更なし $feature');
    }
  }
  final exit = failed || (check && changed.isNotEmpty) ? 1 : 0;
  return PruneRun(exit, results, changed);
}
