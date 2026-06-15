import 'condition.dart';

/// 同じブランチや階層の条件を結合するときのルールを表します。
/// - [and]: 子条件を全て満たす（論理積）
/// - [or]: 子条件のいずれかを満たす（論理和）
enum GruleRule { and, or }

/// 検索条件の基底クラス。
/// すべての条件は親を持つ可能性があり、親子関係を通じてツリー構造を構成します。
abstract class SearchCondition {
  // 親条件への参照（nullable）
  SearchCondition? _parent;

  /// [parent]: 親条件を取得します。親が存在しなければ [null] を返します。
  SearchCondition? get parent => _parent;

  /// コンストラクタ。引数 [parent] に親条件を指定してインスタンスを作成できます。
  SearchCondition({SearchCondition? parent}) : _parent = parent;

  /// [setParent]: 親条件を設定します。
  void setParent(SearchCondition? parent) {
    _parent = parent;
  }

  /// [getRoot]: ルートの [SearchCondition] を取得します。
  /// - この条件が [RootCondition] の場合はそれ自体を返します。
  /// - そうでない場合は親を上へ辿っていき、最上位に達した条件（ルート）を返します。
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
}

/// フィールド条件の基底インターフェイス。
abstract interface class IFieldCondition<T> {
  /// [field]: 対象フィールドを取得する [FieldCallBack]。
  FieldCallBack<T> get field;

  /// [operator]: フィールドに適用する演算子（等価、不等、部分一致など）。
  FieldOperator get operator;
}

/// 任意の値と比較するインターフェイス。
abstract interface class IValueFieldCondition<T> extends IFieldCondition<T> {
  /// [value]: 比較に用いる基準値を返す [ConditionValue]。
  ConditionValue get value;
}

/// フィールド同士を比較するインターフェイス。
abstract interface class IFieldReferenceCondition<T>
    extends IFieldCondition<T> {
  /// [toField]: 比較対象となる右辺のフィールドを取得する [FieldCallBack]。
  FieldCallBack<T> get toField;
}

/// ソート条件インターフェイス。
abstract interface class ISortCondition<T> {
  /// [field]: ソート対象のフィールドを取得する [FieldCallBack]。
  FieldCallBack<T> get field;

  /// [operator]: ソートに用いる [SortOperator]。
  SortOperator get operator;
}
