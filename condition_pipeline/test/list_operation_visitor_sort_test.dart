import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:test/test.dart';

typedef arg = (Map<String, Object>, Map<String, Object>);
void main() {
  group('SortConverter', () {
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
    branch.addSort(field: (t) => 'age', isDesc: true);
    branch22.addSort(field: (t) => 'name', isDesc: false);
    group('GenericConditionVisitor', () {
      test('combines children with AND and OR', () {
        final sqlsortvisitor = GenericSortVisitor<Map<String, dynamic>, String>(
          converter: FieldSortConverter(opVisitor: SqlSortOperationVisitor()),
          group: (value) => '($value)',
          combine: (left, right, rule) => '$left,$right',
        );
        final sqlsortfunc = sqlsortvisitor.build(root);
        final sqlsort = sqlsortfunc(items.first);
        print(sqlsort);
        expect(sqlsort.length, greaterThan(1));
      });
      test('list sort', () {
        final list = <int Function(Map<String, Object>, Map<String, Object>)>[];
        final listsortvisitor =
            GenericSortVisitor<Map<String, Object>, dynamic>(
              converter: ListSortConverter(
                opVisitor: ListSortOperatorVisitor(),
              ),
              combine: (left, right, rule) {
                list.add(right);
                return left;
              },
            );
        final listsortfunc =
            listsortvisitor.build(root)
                as int Function(Map<String, Object>, Map<String, Object>);
        items.sort(list.first);
        // expect(sqlsort.length, greaterThan(1));
      });
    });
  });
}
