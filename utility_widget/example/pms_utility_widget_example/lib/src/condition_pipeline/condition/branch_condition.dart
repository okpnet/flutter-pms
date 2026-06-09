import 'search_condition.dart';

///検索条件のブランチ、ルート
class BranchCondition extends ParentCondition {
  final List<SearchCondition> _children = [];

  GruleRule siblingsRule;
  @override
  List<SearchCondition> get children => _children;

  BranchCondition({GruleRule? siblingsRule})
    : siblingsRule = siblingsRule ?? .and;
}
