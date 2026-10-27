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
  bool validateFields = true,
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
    // 共通定義(~ReadFields/~EditFields)は生成しないが、スキーマとの整合を検証する(要件0055)。
    if (validateFields && (name.endsWith('ReadFields') || name.endsWith('EditFields'))) {
      _validateFields(name, node, schema, read, edit);
      continue;
    }
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

/// 共通定義の検証。ReadFieldsはreadとして、EditFieldsはeditとして組み立て、出力は捨てる(エラーだけ残す)。
/// EditFieldsにrequiredWhereが無いときは、主キーを補って検証する。
void _validateFields(
  String name,
  Map<String, dynamic> node,
  SchemaIndex schema,
  ReadGenerator read,
  EditGenerator edit,
) {
  final kind = node['kind'];
  if (kind == 'read' && name.endsWith('ReadFields')) {
    read.generate(name, node);
  } else if (kind == 'edit' && name.endsWith('EditFields')) {
    final copy = Map<String, dynamic>.of(node);
    final from = node['from'] as String?;
    if (from != null && (copy['requiredWhere'] == null || (copy['requiredWhere'] as List).isEmpty)) {
      final pk = schema.primaryKeyField(schema.typeOfTable(from));
      if (pk != null) {
        // 主キー単独の更新ミューテーションが無い場合(パーティション等)は、複合のキーで検証する。
        final type = schema.typeOfTable(from);
        final single = 'update${type}By${cap(pk)}';
        var keys = [snake(pk)];
        if (!schema.mutation.containsKey(single)) {
          for (final m in schema.mutation.keys) {
            if (m.startsWith('${single}And')) {
              keys = [snake(pk), ...m.substring(single.length + 3).split('And').map(snake)];
              break;
            }
          }
        }
        copy['requiredWhere'] = keys;
      }
    }
    copy['generateRfe'] = false;
    edit.generate(name, copy);
  }
}
