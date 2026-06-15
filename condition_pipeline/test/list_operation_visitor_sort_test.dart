import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:test/test.dart';

void main() {
  group('SortConverter', () {
    final items = [
      {'age': 10, 'name': 'Michael'},
      {'age': 60, 'name': 'bob'},
      {'age': 30, 'name': 'Claudian'},
      {'age': 20, 'name': 'Debit'},
      {'age': 30, 'name': 'Ellen'},
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
    branch.addSort(
      //先に評価される
      field: (t) => t['age'],
      isDesc: false,
    ); //Michael=10,Ellen,Debit,Claudian,bob
    branch22.addSort(
      //後に評価される
      field: (t) => t['name'],
      isDesc: false,
    ); //bob=A,Claudian,Debit,Ellen,Michael=Z

    test('list sort', () {
      final listsortvisitor =
          GenericSortVisitor<
            Map<String, Object>,
            int Function(Map<String, Object>, Map<String, Object>)
          >(
            converter: ListSortConverter(opVisitor: ListSortOperatorVisitor()),
            combine: (left, right, rule) {
              return (l, r) {
                final lResult = left(l, r);
                if (lResult != 0) return lResult;
                return right(l, r);
              };
            },
          );
      final listsortfunc = listsortvisitor.build(root);
      final func = listsortfunc(items.first);
      items.sort(func);
      final result = items
          .map((t) => t['name'])
          .reduce((a, b) => [a, b].join(','));
      print(result);
      expect(result, equals('Michael,Debit,Claudian,Ellen,bob'));
    });
  });
}
