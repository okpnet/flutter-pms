// GraphQLドキュメントを、書式・コメント・選択の順序に依存しない形へ正規化して比較する。

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

String normalizeGraphql(String src) {
  final doc = parseString(src);
  final b = StringBuffer();
  for (final d in doc.definitions) {
    if (d is OperationDefinitionNode) {
      b.writeln('${d.type.name} ${d.name?.value}');
      final vars = d.variableDefinitions.toList()
        ..sort((a, b) => a.variable.name.value.compareTo(b.variable.name.value));
      for (final v in vars) {
        b.writeln('  var \$${v.variable.name.value}: ${printNode(v.type)}'
            '${v.defaultValue?.value == null ? '' : ' = ${_val(v.defaultValue!.value!)}'}');
      }
      _sel(d.selectionSet, 1, b);
    }
  }
  return b.toString();
}

void _sel(SelectionSetNode s, int depth, StringBuffer b) {
  final pad = '  ' * depth;
  final fields = s.selections.whereType<FieldNode>().toList()
    ..sort((a, b) => (a.alias?.value ?? a.name.value).compareTo(b.alias?.value ?? b.name.value));
  for (final f in fields) {
    final args = f.arguments.toList()..sort((a, b) => a.name.value.compareTo(b.name.value));
    final a = args.isEmpty ? '' : '(${args.map((x) => '${x.name.value}: ${_val(x.value)}').join(', ')})';
    final alias = f.alias == null ? '' : '${f.alias!.value}: ';
    b.writeln('$pad$alias${f.name.value}$a');
    if (f.selectionSet != null) _sel(f.selectionSet!, depth + 1, b);
  }
}

/// 値の正規化(オブジェクトのフィールドは名前順にする。リストの順序は保つ)。
String _val(ValueNode v) {
  if (v is ObjectValueNode) {
    final fs = v.fields.toList()..sort((a, b) => a.name.value.compareTo(b.name.value));
    return '{${fs.map((f) => '${f.name.value}: ${_val(f.value)}').join(', ')}}';
  }
  if (v is ListValueNode) return '[${v.values.map(_val).join(', ')}]';
  return printNode(v);
}
