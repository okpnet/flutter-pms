import 'package:utility_widget_example/src/condition_pipeline/condition/field_operator.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/condition_converter.dart';

///同じブランチ、階層の条件を結合するときのルール
enum GruleRule { and, or }

///検索条件基本クラス
abstract class SearchCondition {
  SearchCondition? parent;
}

abstract class ParentCondition extends SearchCondition {
  List<SearchCondition> get children;

  void addChild(SearchCondition child) {
    if (children.contains(child)) return;
    child.parent = this;
    children.add(child);
  }

  void addChildren(List<SearchCondition> addchildren) {
    for (var child in addchildren) {
      addChild(child);
    }
  }
}

abstract interface class IRootCondition {
  int get skip;
  int get take;
  ConditionConverter? get converter;
}

class RootCondition extends ParentCondition implements IRootCondition {
  final List<SearchCondition> _children = [];
  final ConditionConverter? _converter;
  @override
  SearchCondition? get parent => null;
  @override
  List<SearchCondition> get children => _children;

  @override
  int skip;

  @override
  int take;

  @override
  ConditionConverter? get converter => _converter;

  RootCondition({ConditionConverter? converter, int? skip, int? take})
    : skip = skip ?? 0,
      take = take ?? 4,
      _converter = converter;
}

///検索条件のブランチ、ルート
class ConditionBranch extends ParentCondition {
  final List<SearchCondition> _children = [];

  GruleRule siblingsRule;
  @override
  List<SearchCondition> get children => _children;

  ConditionBranch({GruleRule? siblingsRule, List<SearchCondition>? children})
    : siblingsRule = siblingsRule ?? .and;
}

///検索条件
class FieldCondition extends SearchCondition {
  final String field;
  final IFieldOperator operator;
  final dynamic value;

  FieldCondition({
    required this.field,
    required this.operator,
    required this.value,
  });
}
