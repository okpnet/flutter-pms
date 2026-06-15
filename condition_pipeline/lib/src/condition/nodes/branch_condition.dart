import '../condition.dart';

/// ブランチ（およびルート）となる検索条件ノード。
/// - [children]: このブランチ配下の子条件リスト。
/// - [siblingsRule]: 子条件同士を結合する論理ルール（AND/OR 等）。
class BranchCondition extends SearchCondition
    with ParentConditionMixin
    implements IParentCondition {
  /// 内部で管理する子条件のリスト。
  final List<SearchCondition> _children = [];

  GruleRule _siblingsRule;

  /// 子条件を結合するルールを返す（読み取り専用）。
  @override
  GruleRule get siblingsRule => _siblingsRule;

  /// 子条件の一覧を返す（読み取り専用）。
  @override
  List<SearchCondition> get children => _children;

  /// コンストラクタ。
  /// - [siblingsRule]: 子条件を結合する既定のルール（省略時は [GruleRule.and]）。
  BranchCondition({GruleRule? siblingsRule})
    : _siblingsRule = siblingsRule ?? GruleRule.and;

  /// 子条件の結合ルールを設定する。外部から子同士の論理結合を変更できる。
  @override
  void setSiblingsRule(GruleRule siblingsRule) {
    _siblingsRule = siblingsRule;
  }
}
