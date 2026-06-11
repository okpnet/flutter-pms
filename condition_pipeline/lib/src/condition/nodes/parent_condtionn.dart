import '../condition.dart';

abstract interface class IParentCondition {
  GruleRule get siblingsRule;

  /// この親が保持する子条件のリストを返します（実装側で保持すること）。
  List<SearchCondition> get children;
  void setSiblingsRule(GruleRule siblingsRule);
}

/// 子要素を持つ親条件の抽象クラス
///
/// 子条件の追加や列挙、平坦化（フラット化）などのユーティリティを提供します。
mixin ParentConditionMixin on SearchCondition {
  List<SearchCondition> get children;

  /// 子条件を追加します。同一インスタンスの重複登録は行いません。
  /// 追加時に子の `parent` をこのインスタンスに設定します。
  void addChild(SearchCondition child) {
    if (children.contains(child)) return;
    child.setParent(this);
    children.add(child);
  }

  /// 複数の子条件を一括追加します。
  void addChildren(List<SearchCondition> addchildren) {
    for (var child in addchildren) {
      addChild(child);
    }
  }

  /// 新しいブランチ条件（`BranchCondition`）を生成してこの親に追加します。
  /// `siblingsRule` によりブランチ内部の子同士の結合ルールを指定できます。
  BranchCondition addBranch({GruleRule? siblingsRule}) {
    final branch = BranchCondition(siblingsRule: siblingsRule);
    addChild(branch);
    return branch;
  }

  /// 新しいフィールド条件（`FieldCondition`）を生成してこの親に追加します。
  IValueFieldCondition addValueField({
    required String field,
    required FieldOperator operator,
    required ConditionValue value,
  }) {
    final condition = ValueFieldCondition(
      field: field,
      operator: operator,
      value: value,
    );
    addChild(condition);
    return condition;
  }

  ///新しいフィールド条件（`FieldComparisonCondition`）を生成してこの親に追加します。
  IFieldReferenceCondition addFieldReference({
    required String field,
    required String toField,
    FieldOperator? operator,
  }) {
    final condition = FieldReferenceCondition(
      field: field,
      operator: operator ?? EqualOperator(),
      toField: toField,
    );
    addChild(condition);
    return condition;
  }

  /// 新しいソート条件（`SortCondition`）を生成してこの親に追加します。
  ISortCondition addSort({required String field, Order? order}) {
    final sort = SortCondition(field: field, order: order);
    addChild(sort);
    return sort;
  }

  /// 子ツリーを深さ優先で辿り、すべての子条件を平坦化したリストを返します。
  /// フィールド条件（`FieldCondition`）のみを抽出してリスト化します。
  List<SearchCondition> toFlatChildren() {
    final list = <SearchCondition>[];
    for (var item in children) {
      list.addAll(_toFlatChildren(item));
    }
    return list;
  }

  /// 内部ヘルパー：指定した条件を再帰的に探索して `FieldCondition` を収集します。
  List<SearchCondition> _toFlatChildren(SearchCondition condtion) {
    final list = <SearchCondition>[];
    if (condtion is IFieldCondition) {
      list.add(condtion);
    }

    if (condtion case IParentCondition parent) {
      for (var item in parent.children) {
        list.addAll(_toFlatChildren(item));
      }
    }
    return list;
  }
}
