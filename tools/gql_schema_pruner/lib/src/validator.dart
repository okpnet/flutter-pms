import 'package:gql/ast.dart';

import 'schema_index.dart';

/// 本家スキーマに対する検証の失敗1件。機能名・ファイル名・行を持つ。
class PruneIssue {
  PruneIssue({
    required this.feature,
    required this.file,
    required this.message,
    this.line,
  });

  final String feature;
  final String file;
  final int? line;
  final String message;

  Map<String, Object?> toJson() => {
        'feature': feature,
        'file': file,
        if (line != null) 'line': line,
        'message': message,
      };

  @override
  String toString() => '[$feature] $file${line == null ? '' : ':$line'}: $message';
}

/// 検証結果を溜める入れ物。検証中の機能名・ファイル名を覚えておく。
class IssueSink {
  final issues = <PruneIssue>[];
  String feature = '';
  String file = '';

  void add(String message, [Node? at]) {
    final span = at?.span;
    issues.add(PruneIssue(
      feature: feature,
      file: file,
      line: span == null ? null : span.start.line + 1,
      message: message,
    ));
  }
}

/// 操作の構造を本家スキーマに照らして検証する(フィールド・引数の検証は Collector が走査中に行う)。
class OperationValidator {
  OperationValidator(this.index, this.sink);

  final SchemaIndex index;
  final IssueSink sink;

  void validateDocument(DocumentNode doc) {
    final fragments = {
      for (final f in doc.definitions.whereType<FragmentDefinitionNode>())
        f.name.value: f,
    };
    for (final f in fragments.values) {
      final on = f.typeCondition.on.name.value;
      if (!index.hasType(on)) {
        sink.add('フラグメント${f.name.value}の型$onがスキーマにありません', f);
      }
    }
    for (final op in doc.definitions.whereType<OperationDefinitionNode>()) {
      for (final v in op.variableDefinitions) {
        final t = namedType(v.type);
        if (!index.hasType(t)) {
          sink.add('変数\$${v.variable.name.value}の型$tがスキーマにありません', v);
        }
      }
      _checkSpreads(op.selectionSet, fragments);
    }
    for (final f in fragments.values) {
      _checkSpreads(f.selectionSet, fragments);
    }
  }

  void _checkSpreads(
    SelectionSetNode sel,
    Map<String, FragmentDefinitionNode> fragments,
  ) {
    for (final s in sel.selections) {
      if (s is FragmentSpreadNode) {
        if (!fragments.containsKey(s.name.value)) {
          sink.add('フラグメント${s.name.value}が定義されていません', s);
        }
      } else if (s is FieldNode && s.selectionSet != null) {
        _checkSpreads(s.selectionSet!, fragments);
      } else if (s is InlineFragmentNode) {
        _checkSpreads(s.selectionSet, fragments);
      }
    }
  }
}
