import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'collector.dart';
import 'schema_index.dart';

const prunedSchemaHeader =
    '# このファイルは gql_schema_pruner が生成した画面用スキーマです。直接編集しないでください。\n'
    '# 再生成: melos run gql:prune(本家スキーマ .schema/schema.graphql が必要)\n';

/// [usage] に残したものだけを SDL 形式で書き出す。出力の並びは決まっており、再生成しても差分が出ない。
String printPrunedSchema(SchemaIndex index, Usage usage) {
  String typeStr(TypeNode t) => printNode(t);
  // @deprecated 等の指示子を引き継ぐ(生成モデルの @Deprecated 注釈を保つため)
  String directives(List<DirectiveNode> ds) =>
      ds.map((d) => ' ${printNode(d)}').join();

  final b = StringBuffer()
    ..write(prunedSchemaHeader)
    ..writeln()
    ..writeln('schema {');
  for (final op in [
    OperationType.query,
    OperationType.mutation,
    OperationType.subscription,
  ]) {
    final t = index.rootTypes[op];
    if (t != null && usage.objectFields.containsKey(t)) {
      b.writeln('  ${op.name}: $t');
    }
  }
  b.writeln('}');
  for (final s in usage.scalars.toList()..sort()) {
    if (builtinScalars.contains(s)) continue;
    b.writeln('\nscalar $s');
  }
  for (final e in usage.enums.toList()..sort()) {
    b.writeln('\nenum $e {');
    for (final v in index.enums[e]!.values) {
      b.writeln('  ${v.name.value}${directives(v.directives)}');
    }
    b.writeln('}');
  }
  for (final name in usage.objectFields.keys.toList()..sort()) {
    final kept = usage.objectFields[name]!;
    final def = index.objects[name];
    final fields = def?.fields ?? index.interfaces[name]!.fields;
    b.writeln('\n${def != null ? 'type' : 'interface'} $name {');
    for (final f in fields.where((f) => kept.containsKey(f.name.value))) {
      final args = f.args
          .where((a) => kept[f.name.value]!.contains(a.name.value))
          .toList();
      final argStr = args.isEmpty
          ? ''
          : '(${args.map((a) => '${a.name.value}: ${typeStr(a.type)}${a.defaultValue == null ? '' : ' = ${printNode(a.defaultValue!)}'}').join(', ')})';
      b.writeln(
        '  ${f.name.value}$argStr: ${typeStr(f.type)}${directives(f.directives)}',
      );
    }
    b.writeln('}');
  }
  for (final name in usage.inputFields.keys.toList()..sort()) {
    final kept = usage.inputFields[name]!;
    b.writeln('\ninput $name {');
    for (final f
        in index.inputs[name]!.fields.where((f) => kept.contains(f.name.value))) {
      b.writeln(
        '  ${f.name.value}: ${typeStr(f.type)}${f.defaultValue == null ? '' : ' = ${printNode(f.defaultValue!)}'}',
      );
    }
    b.writeln('}');
  }
  return b.toString();
}
