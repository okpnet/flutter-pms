// view.yaml -> GraphQL を生成するbuild_runnerのBuilder。
//
// 変換ロジックは generator.dart(純Dart)にあり、CLI(tool/gen_view_graphql.dart)と共通。
// 入力: source/view.yaml、source/schema.full.graphql。出力先は`output_dir`(既定 source/generated_graphql)。
// 出力はソースツリーへ書く(build_to: source)。エラーは警告として出力し、そのノードは生成しない(CLAUDE.md 5-7節)。

import 'dart:io';

import 'package:build/build.dart';

import 'generator.dart';
import 'names.dart';
import 'yaml_loader.dart';

const _viewYaml = 'source/view.yaml';
const _schema = 'source/schema.full.graphql';

Builder viewGraphqlBuilder(BuilderOptions options) =>
    ViewGraphqlBuilder((options.config['output_dir'] as String?) ?? 'source/generated_graphql');

class ViewGraphqlBuilder implements Builder {
  ViewGraphqlBuilder(this.outDir) : _extensions = {_viewYaml: _outputs(outDir)};

  final String outDir;
  final Map<String, List<String>> _extensions;

  /// view.yamlのトップノードから、出力ファイルの一覧を求める(build_runnerは出力を事前に宣言する必要がある)。
  static List<String> _outputs(String outDir) {
    final file = File(_viewYaml);
    if (!file.existsSync()) return ['$outDir/_none'];
    final views = loadViewYaml(file.readAsStringSync());
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
    final yaml = await buildStep.readAsString(buildStep.inputId);
    final schemaText = await buildStep.readAsString(AssetId(buildStep.inputId.package, _schema));
    final result = generateAll(viewYaml: yaml, schemaText: schemaText);
    for (final w in result.log.warnings) {
      log.info('警告: $w');
    }
    for (final e in result.log.errors) {
      log.warning('生成エラー: $e');
    }
    for (final e in result.files.entries) {
      await buildStep.writeAsString(AssetId(buildStep.inputId.package, '$outDir/${e.key}'), e.value);
    }
    log.info('view.yaml -> GraphQL: ${result.files.length}ファイル、エラー${result.log.errors.length}件');
  }
}
