import 'package:condition_pipeline/src/condition/condition.dart';
import 'package:condition_pipeline/src/converter/converter.dart';
import 'package:condition_pipeline/src/converter/list_converter/sql_operation_visitor.dart';
import 'package:test/test.dart';

void main() {
  group('SqlConverter', () {
    group('GenericConditionVisitor', () {
      test('combines children with AND and OR', () {
        final root = RootCondition(siblingsRule: GruleRule.and);
        final branch = root.addBranch(siblingsRule: .and);
        final branch2 = root.addBranch(siblingsRule: .or);
        final branch21 = branch2.addBranch(siblingsRule: .and);
        final branch22 = branch2.addBranch(siblingsRule: .or);
        branch21.addValueField(
          field: 'age',
          operator: EqualOperator(),
          value: ConditionValueFactory.number(21),
        );
        branch22.addValueField(
          field: 'name',
          operator: EqualOperator(),
          value: ConditionValueFactory.string('branch21'),
        );
        branch.addValueField(
          field: 'age',
          operator: EqualOperator(),
          value: ConditionValueFactory.number(0),
        );
        branch.addValueField(
          field: 'name',
          operator: EqualOperator(),
          value: ConditionValueFactory.string('branch'),
        );

        final visitor = GenericConditionVisitor<Map<String, dynamic>, String>(
          converter: SqlConverter(
            extractValue: (row, cond) => row[cond.field],
            opVisitor: SqlOperatorVisitor(),
          ),
          combine: (children, rule) => rule == GruleRule.and
              ? children.join(' AND ')
              : children.join(' OR '),
        );

        final item = {'age': 30, 'name': 'bob'};
        final func = visitor.build(root);
        final result = func(item);
        expect(
          result,
          equals('age = 0 AND name = branch AND age = 21 AND name = branch21'),
        );
      });
    });
  });
}
