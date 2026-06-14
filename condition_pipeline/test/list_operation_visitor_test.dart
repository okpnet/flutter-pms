import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:test/test.dart';

void main() {
  group('ListConverter', () {
    group('GenericConditionVisitor', () {
      test('combines children with AND and OR', () {
        final items = [
          {'age': 10, 'name': 'Michael'},
          {'age': 20, 'name': 'bob'},
          {'age': 30, 'name': 'Claudian'},
          {'age': 40, 'name': 'Debit'},
          {'age': 50, 'name': 'Ellen'},
        ];
        final root = RootCondition(siblingsRule: GruleRule.and);
        final branch = root.addBranch(siblingsRule: .and);
        final branch2 = root.addBranch(siblingsRule: .or);
        final branch21 = branch2.addBranch(siblingsRule: .and);
        final branch22 = branch2.addBranch(siblingsRule: .or);
        branch21.addValueField(
          field: (t) => t['age'],
          operator: GreaterOperator(isThanEquals: true),
          value: ConditionValueFactory.number(21),
        );
        branch22.addValueField(
          field: (t) => t['name'],
          operator: LikeOperator(),
          value: ConditionValueFactory.string('e'),
        );
        branch.addValueField(
          field: (t) => t['age'],
          operator: LessOperator(),
          value: ConditionValueFactory.number(100),
        );
        branch.addValueField(
          field: (t) => t['name'],
          operator: EndWithOperator(),
          value: ConditionValueFactory.string('n'),
        );

        final sqlvisitor =
            GenericConditionVisitor<Map<String, dynamic>, String>(
              converter: SqlConverter(
                extractValue: (row, cond) => row[cond.field],
                opVisitor: SqlOperatorVisitor(),
              ),
              group: (value) => '($value)',
              combine: (left, right, rule) => rule == GruleRule.and
                  ? '$left AND $right'
                  : '$left OR $right',
            );
        final sqlfunc = sqlvisitor.build(root);
        final sql = sqlfunc(items.first);
        print(sql);

        final sqlsortvisitor = GenericSortVisitor<Map<String, dynamic>, String>(
          converter: FieldSortConverter(opVisitor: SqlSortOperationVisitor()),
          group: (value) => '($value)',
          combine: (left, right, rule) => '$left,$right',
        );
        final sqlsortfunc = sqlsortvisitor.build(root);
        final sqlsort = sqlsortfunc(items.first);
        print(sqlsort);

        final visitor = GenericConditionVisitor<Map<String, dynamic>, bool>(
          converter: ListWhereConverter(
            extractValue: (row, cond) => row[cond.field],
            opVisitor: ListWhereOperatorVisitor(),
          ),
          combine: (left, right, rule) => rule == GruleRule.and
              ? [left, right].every((p) => p)
              : [left, right].any((p) => p),
        );
        final func = visitor.build(root);
        final result = items.where(func).toList();
        expect(result.length, 1);
      });
    });
  });
}
