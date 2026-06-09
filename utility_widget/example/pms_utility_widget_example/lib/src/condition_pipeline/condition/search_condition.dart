import 'package:utility_widget_example/src/condition_pipeline/condition/root_condition.dart';

import 'branch_condition.dart';
import 'field_operator.dart';

/// 同じブランチや階層の条件を結合するときのルールを表します。
/// - `and`: 子条件を全て満たす（論理積）
/// - `or`: 子条件のいずれかを満たす（論理和）
enum GruleRule { and, or }

/// 検索条件の基底クラス
///
/// すべての条件は親を持つ可能性があり、親子関係を通じてツリー構造を構成します。
abstract class SearchCondition {
  // 親条件への参照（nullable）
  SearchCondition? _parent;

  /// 親条件を取得します。親が存在しなければ `null` を返します。
  SearchCondition? get parent => _parent;

  /// コンストラクタ。親を指定してインスタンスを作成できます。
  SearchCondition({SearchCondition? parent}) : _parent = parent;

  /// 親条件を設定します。
  void setParent(SearchCondition? parent) {
    _parent = parent;
  }
}

/// 子要素を持つ親条件の抽象クラス
///
/// 子条件の追加や列挙、平坦化（フラット化）などのユーティリティを提供します。
abstract class ParentCondition extends SearchCondition {
  /// この親が保持する子条件のリストを返します（実装側で保持すること）。
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
  FieldCondition addField({
    required String field,
    required IFieldOperator operator,
    required dynamic value,
  }) {
    final condition = FieldCondition(
      field: field,
      operator: operator,
      value: value,
    );
    addChild(condition);
    return condition;
  }

  /// ルートの `SearchCondition` を取得します。
  ///
  /// この条件が `RootCondition` の場合はそれ自体を返します。
  /// そうでない場合は親を上へ辿っていき、最上位に達した条件（ルート）を返します。
  SearchCondition getRoot() {
    if (this is RootCondition) {
      return this;
    }
    var parent = this.parent;
    while (parent != null) {
      parent = parent.parent;
    }
    return parent ?? this;
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
    if (condtion is FieldCondition) {
      list.add(condtion);
    }

    if (condtion case ParentCondition parent) {
      for (var item in parent.children) {
        list.addAll(_toFlatChildren(item));
      }
    }
    return list;
  }
}

/// 単一のフィールドに対する検索条件を表すクラス
///
/// 例: `age > 30` のような条件を保持します。
class FieldCondition extends SearchCondition {
  /// 対象フィールド名
  final String field;

  /// フィールドに適用する演算子（等価、不等、部分一致など）
  final IFieldOperator operator;

  /// 比較に用いる値
  final dynamic value;

  /// コンストラクタ：親を指定することも可能です。
  FieldCondition({
    super.parent,
    required this.field,
    required this.operator,
    required this.value,
  }) : super();
}
