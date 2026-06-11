import 'package:flutter_test/flutter_test.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/nodes/root_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/condition_vsitor.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/list_converter/sql_operation_visitor.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/fields/field_operator.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/fields/condition_value.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';

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
              : children.join('  '),
        );

        final item = {'age': 30, 'name': 'bob'};
        final func = visitor.build(root);
        final result = func(item);
        expect(func, isTrue);
        expect(result, isTrue);
      });
    });
  });
}
