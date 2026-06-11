import 'parent_condtionn.dart';
import '../search_condition.dart';

///検索条件のブランチ、ルート
class BranchCondition extends SearchCondition
    with ParentConditionMixin
    implements IParentCondition {
  final List<SearchCondition> _children = [];
  GruleRule _siblingsRule;
  @override
  GruleRule get siblingsRule => _siblingsRule;
  @override
  List<SearchCondition> get children => _children;

  BranchCondition({GruleRule? siblingsRule})
    : _siblingsRule = siblingsRule ?? .and;

  @override
  void setSiblingsRule(GruleRule siblingsRule) {
    _siblingsRule = siblingsRule;
  }
}
