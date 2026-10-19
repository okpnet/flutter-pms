// 分割したview.yaml(source/views/) -> GraphQL を生成するbuild_runnerのBuilder。
//
// 変換ロジックは generator.dart(純Dart)にあり、CLI(tool/gen_view_graphql.dart)と共通。
// 入力: source/views/**.yaml(要件0052)、source/schema.full.graphql。出力先は`output_dir`(既定 source/generated_graphql)。
// 出力はソースツリーへ書く(build_to: source)。エラーは警告として出力し、そのノードは生成しない(CLAUDE.md 5-7節)。
// 入力は複数ファイルなので、パッケージ全体(`$package$`)を入力として1回だけ実行し、
// source/views/ 以下をfindAssetsで読む(読んだファイルが変わると再実行される)。

import 'dart:io';

import 'package:build/build.dart';
import 'package:glob/glob.dart';

import 'generator.dart';
import 'names.dart';
import 'view_sources.dart';

const _viewsDir = 'source/views';
const _schema = 'source/schema.full.graphql';

Builder viewGraphqlBuilder(BuilderOptions options) =>
    ViewGraphqlBuilder((options.config['output_dir'] as String?) ?? 'source/generated_graphql');

class ViewGraphqlBuilder implements Builder {
  ViewGraphqlBuilder(this.outDir) : _extensions = {r'$package$': _outputs(outDir)};

  final String outDir;
  final Map<String, List<String>> _extensions;

  /// 分割したview.yamlのトップノードから、出力ファイルの一覧を求める(build_runnerは出力を事前に宣言する必要がある)。
  static List<String> _outputs(String outDir) {
    if (!Directory(_viewsDir).existsSync()) return ['$outDir/_none'];
    final Map<String, dynamic> views;
    try {
      views = loadViewDirectory(_viewsDir);
    } on ViewSourceException {
      return ['$outDir/_none']; // エラーは build() で報告する
    }
    final out = <String>[];
    for (final e in views.entries) {
      if (!isGenerationTarget(e.key) || e.value is! Map) continue;
      final node = (e.value as Map).cast<String, dynamic>();
      final dir = directoryOf(e.key);
      if (node['kind'] == 'read' && e.key.endsWith('Page')) {
        out.add('$outDir/$dir/${dir}_read.graphql');
      } else if (node['kind'] == 'edit' && e.key.endsWith('PageEdit')) {
        out.add('$outDir/$dir/${dir}_edit.graphql');
        if (node['generateRfe'] == true) out.add('$outDir/$dir/${dir}_rfe.graphql');
      }
    }
    return out.isEmpty ? ['$outDir/_none'] : out;
  }

  @override
  Map<String, List<String>> get buildExtensions => _extensions;

  @override
  Future<void> build(BuildStep buildStep) async {
    final files = <String, String>{};
    await for (final id in buildStep.findAssets(Glob('$_viewsDir/**.yaml'))) {
      files[id.path.substring(_viewsDir.length + 1)] = await buildStep.readAsString(id);
    }
    final CombinedViewSources sources;
    try {
      sources = combineViewSources(files);
      sources.load();
    } on ViewSourceException catch (e) {
      log.severe('view.yamlの結合に失敗: $e');
      return;
    }
    final schemaText = await buildStep.readAsString(AssetId(buildStep.inputId.package, _schema));
    final result = generateAll(viewYaml: sources.text, schemaText: schemaText);
    for (final w in result.log.warnings) {
      log.info('警告: $w');
    }
    for (final e in result.log.errors) {
      log.warning('生成エラー: $e');
    }
    for (final e in result.files.entries) {
      await buildStep.writeAsString(AssetId(buildStep.inputId.package, '$outDir/${e.key}'), e.value);
    }
    log.info('views -> GraphQL: ${result.files.length}ファイル、エラー${result.log.errors.length}件');
  }
}
