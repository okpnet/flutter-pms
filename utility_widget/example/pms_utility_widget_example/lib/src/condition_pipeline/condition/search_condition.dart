import 'package:utility_widget_example/src/condition_pipeline/condition/condition_value.dart';

import 'field_operator.dart';
import 'root_condition.dart';

/// 同じブランチや階層の条件を結合するときのルールを表します。
/// - `and`: 子条件を全て満たす（論理積）
/// - `or`: 子条件のいずれかを満たす（論理和）
enum GruleRule { and, or }

/// ソートするときのルールを表します。
/// - `asc`: 順
/// - `desc`: 逆順
enum Order { asc, desc }

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
}

/// 単一のフィールドに対する検索条件を表すクラス
///
/// 例: `age > 30` のような条件を保持します。
class FieldCondition extends SearchCondition {
  /// 対象フィールド名
  final String field;

  /// フィールドに適用する演算子（等価、不等、部分一致など）
  final FieldOperator operator;

  /// 比較に用いる値
  final ConditionValue value;

  /// コンストラクタ：親を指定することも可能です。
  FieldCondition({
    super.parent,
    required this.field,
    required this.operator,
    required this.value,
  }) : super();
}

class SortCondition extends SearchCondition {
  /// 対象フィールド名
  final String field;

  final Order order;

  SortCondition({required this.field, Order? order}) : order = order ?? .asc;
}
