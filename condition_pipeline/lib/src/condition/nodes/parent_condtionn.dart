import '../condition.dart';

abstract interface class IParentCondition {
  /// [siblingsRule]: 子条件同士の結合ルールを返します（AND/OR 等）。
  GruleRule get siblingsRule;

  /// [children]: この親が保持する子条件のリストを返します（実装側で保持すること）。
  List<SearchCondition> get children;

  /// [setSiblingsRule]: 子条件の結合ルールを設定します。
  void setSiblingsRule(GruleRule siblingsRule);
}

/// 子要素を持つ親条件のミックスイン。
/// ユーティリティとして [addChild], [addChildren], [addBranch], [addValueField],
/// [addFieldReference], [addSort], [toFlatChildren] などを提供します。
mixin ParentConditionMixin<T> on SearchCondition {
  List<SearchCondition> get children;

  /// [addChild]: 子条件を追加します。同一インスタンスの重複登録は行いません。
  /// 追加時に子の [setParent] をこのインスタンスに設定します。
  void addChild(SearchCondition child) {
    if (children.contains(child)) return;
    child.setParent(this);
    children.add(child);
  }

  /// [addChildren]: 複数の子条件を一括追加します。
  void addChildren(List<SearchCondition> addchildren) {
    for (var child in addchildren) {
      addChild(child);
    }
  }

  /// [addBranch]: 新しいブランチ条件 ([BranchCondition]) を生成してこの親に追加します。
  /// 引数 [siblingsRule] によりブランチ内部の子同士の結合ルールを指定できます。
  BranchCondition addBranch({GruleRule? siblingsRule}) {
    final branch = BranchCondition(siblingsRule: siblingsRule);
    addChild(branch);
    return branch;
  }

  /// [addValueField]: 新しい値比較のフィールド条件 ([ValueFieldCondition]) を生成してこの親に追加します。
  /// - [field]: 対象フィールド。
  /// - [operator]: 適用する演算子。
  /// - [value]: 比較に用いる値。
  IValueFieldCondition addValueField({
    required FieldCallBack<T> field,
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

  /// [addFieldReference]: 新しいフィールド参照比較条件 ([FieldReferenceCondition]) を生成してこの親に追加します。
  /// - [field]: 左辺フィールド。
  /// - [toField]: 右辺フィールド。
  /// - [operator]: 使用する演算子（省略時は [EqualOperator]）。
  IFieldReferenceCondition addFieldReference({
    required FieldCallBack<T> field,
    required FieldCallBack<T> toField,
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

  /// [addSort]: 新しいソート条件 ([SortCondition]) を生成してこの親に追加します。
  /// - [field]: ソート対象フィールド。
  /// - [isDesc]: 降順にする場合は true。
  ISortCondition addSort({required FieldCallBack<T> field, bool? isDesc}) {
    final sort = SortCondition(field: field, isDesc: isDesc);
    addChild(sort);
    return sort;
  }

  /// [toFlatChildren]: 子ツリーを深さ優先で辿り、すべての子条件を平坦化したリストを返します。
  /// この実装はフィールド条件（IFieldCondition）を抽出して返します。
  List<SearchCondition> toFlatChildren() {
    final list = <SearchCondition>[];
    for (var item in children) {
      list.addAll(_toFlatChildren(item));
    }
    return list;
  }

  /// 内部ヘルパー: 指定した条件を再帰的に探索して IFieldCondition を収集します。
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
