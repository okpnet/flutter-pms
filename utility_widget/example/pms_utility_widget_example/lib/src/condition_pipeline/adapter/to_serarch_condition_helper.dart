import 'package:trina_grid/trina_grid.dart';

import '../condition/fields/value_field_condition.dart';
import '../condition/nodes/branch_condition.dart';
import '../condition/fields/field_operator.dart';
import '../condition/nodes/root_condition.dart';
import '../condition/search_condition.dart';

/// Trina から検索条件へ変換するためのマーカーインターフェース。
/// 実装はこのインターフェースを使って `ToSerarchCondition` mixin を組み合わせます。
abstract class IToSerarchCondition {}

class ToSerarchConditionHelper {
  /// Trina のフィルタ行から `SearchCondition` を生成するユーティリティ。
  ///
  /// - `filterRow`: Trina のフィルタ行（フィールド、演算子、値を含む）
  /// - `parent`: 生成する条件の親条件（必要な場合）
  ///
  /// 戻り値は対応する `FieldCondition`（または `NullOperator` 等）です。
  static SearchCondition toConditionFromFilterRow(
    TrinaRow filterRow,
    SearchCondition? parent,
  ) {
    // フィルタ行のセル値に応じて、対応する FieldOperator を選択する
    final operator = switch (filterRow
        .cells[FilterHelper.filterFieldType]!
        .value) {
      TrinaFilterTypeEquals _ => EqualOperator(),
      TrinaFilterTypeContains _ => InOperator(),
      TrinaFilterTypeIsEmpty _ => NullOperator(),
      TrinaFilterTypeIsNotEmpty _ => NullOperator(isNot: true),
      TrinaFilterTypeStartsWith _ => StartWithOperator(),
      TrinaFilterTypeEndsWith _ => EndWithOperator(),
      TrinaFilterTypeLessThan _ => LessOperator(),
      TrinaFilterTypeLessThanOrEqualTo _ => LessOperator(isThanEquals: true),
      TrinaFilterTypeGreaterThan _ => GreaterOperator(),
      TrinaFilterTypeGreaterThanOrEqualTo _ => GreaterOperator(
        isThanEquals: true,
      ),
      _ => NullOperator(isNot: true),
    };
    return ValueFieldCondition(
      parent: parent,
      field: filterRow.cells[FilterHelper.filterFieldColumn]!.value,
      operator: operator,
      value: filterRow.cells[FilterHelper.filterFieldValue]!.value,
    );
  }

  /// 複数のフィルタ行から `RootCondition` を作成し、各条件を AND で結合して返す。
  static SearchCondition toConditionsFromFilterRows(List<TrinaRow> filterRows) {
    // ルート条件に AND ブランチを追加
    final branch = RootCondition().addBranch(siblingsRule: .and);
    final conditions = filterRows
        .map((t) => toConditionFromFilterRow(t, branch))
        .toList();
    branch.addChildren(conditions);
    return branch.getRoot();
  }

  ///
  /// データ行とフィールド情報から単一の `BranchCondition`（AND）を生成する。
  /// この関数は、行のセル値を条件の値として使用します。
  static SearchCondition toConditionFromDataRow(
    TrinaRow row,
    String fieldId,
    FieldOperator operator,
  ) {
    final branch = BranchCondition(siblingsRule: .and);
    final condition = ValueFieldCondition(
      field: fieldId,
      operator: operator,
      value: row.cells[fieldId]?.value,
    );
    branch.addChild(condition);
    return branch;
  }
}
