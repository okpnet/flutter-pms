// view.yaml全体から、生成対象(~Page / ~PageEdit)ごとにGraphQLを生成する。

import 'names.dart';
import 'edit_generator.dart';
import 'read_generator.dart';
import 'schema_index.dart';
import 'yaml_loader.dart';

class GenerationResult {
  GenerationResult(this.files, this.log);

  /// `<ディレクトリ>/<ファイル名>` -> 内容
  final Map<String, String> files;
  final GenLog log;
}

GenerationResult generateAll({
  required String viewYaml,
  String? schemaPath,
  String? schemaText,
  String? only,
  SchemaIndex? schemaIndex,
}) {
  final log = GenLog();
  final views = loadViewYaml(viewYaml);
  final schema = schemaIndex ??
      (schemaText != null ? SchemaIndex.parse(schemaText) : SchemaIndex.load(schemaPath!));
  final files = <String, String>{};
  final read = ReadGenerator(schema, log);
  final edit = EditGenerator(schema, log, read);

  for (final e in views.entries) {
    final name = e.key;
    final node = e.value;
    if (node is! Map<String, dynamic>) continue;
    if (only != null && only != name) continue;
    if (!isGenerationTarget(name)) continue;
    final dir = directoryOf(name);
    final kind = node['kind'];
    if (kind == 'read' && name.endsWith('Page')) {
      final text = read.generate(name, node);
      if (text != null) files['$dir/${dir}_read.graphql'] = text;
    }
    if (kind == 'edit' && name.endsWith('PageEdit')) {
      final r = edit.generate(name, node);
      if (r.edit != null) files['$dir/${dir}_edit.graphql'] = r.edit!;
      if (r.rfe != null) files['$dir/${dir}_rfe.graphql'] = r.rfe!;
    }
  }
  return GenerationResult(files, log);
}
