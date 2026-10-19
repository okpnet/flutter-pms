import 'package:condition_pipeline/condition_pipeline.dart';
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
          field: (t) => 'age',
          operator: GreaterOperator(isThanEquals: true),
          value: ConditionValueFactory.number(21),
        );
        branch22.addValueField(
          field: (t) => 'name',
          operator: LikeOperator(),
          value: ConditionValueFactory.string('e'),
        );
        branch.addValueField(
          field: (t) => 'age',
          operator: LessOperator(),
          value: ConditionValueFactory.number(100),
        );
        branch.addValueField(
          field: (t) => 'name',
          operator: EndWithOperator(),
          value: ConditionValueFactory.string('n'),
        );

        final visitor = GenericConditionVisitor<Map<String, dynamic>, String>(
          converter: SqlConverter(
            extractValue: (row, cond) => row[cond.field],
            opVisitor: SqlOperatorVisitor(),
          ),
          group: (value) => '($value)',
          combine: (left, right, rule) =>
              rule == GruleRule.and ? '$left AND $right' : '$left OR $right',
        );

        final item = {'age': 30, 'name': 'bob'};
        final func = visitor.build(root);
        final result = func(item);
        expect(
          result,
          equals(
            "((age > 100 AND name LIKE '%n') AND (age <= 21 OR name LIKE '%e%'))",
          ),
        );
      });
    });
  });
}
