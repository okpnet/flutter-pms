import 'package:condition_pipeline/condition_pipeline.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';

/// Trina から検索条件へ変換するためのマーカーインターフェース。
/// 実装はこのインターフェースを使って `ToSerarchCondition` mixin を組み合わせます。
abstract class IToSerarchCondition {}

class ToConditionHelper {
  static FieldOperator toOperator(TrinaRow filterRow) {
    return switch (filterRow.cells[FilterHelper.filterFieldType]!.value) {
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
  }

  /// Trina のフィルタ行から `SearchCondition` を生成するユーティリティ。
  ///
  /// - `filterRow`: Trina のフィルタ行（フィールド、演算子、値を含む）
  /// - `parent`: 生成する条件の親条件（必要な場合）
  ///
  /// 戻り値は対応する `FieldCondition`（または `NullOperator` 等）です。
  static Expression toConditionFromFilterRow(TrinaRow filterRow) {
    // フィルタ行のセル値に応じて、対応する FieldOperator を選択する
    final operator = toOperator(filterRow);
    final condition = toConditionFromDataRow(
      row: filterRow,
      fieldId: FilterHelper.filterFieldColumn,
      operator: operator,
    );
    return condition;
  }

  /// 複数のフィルタ行から `RootCondition` を作成し、各条件を AND で結合して返す。
  static Expression toConditionsFromFilterRows(List<TrinaRow> filterRows) {
    final root = RootCondition();
    // ルート条件に AND ブランチを追加
    final branch = root.addBranch(siblingsRule: .and);
    if (filterRows.isNotEmpty) {
      final conditions = filterRows
          .map((t) => toConditionFromFilterRow(t))
          .toList();
      branch.addChildren(conditions);
    }
    return root;
  }

  ///
  /// データ行とフィールド情報から単一の `BranchCondition`（AND）を生成する。
  /// この関数は、行のセル値を条件の値として使用します。
  static Expression toConditionFromDataRow({
    required TrinaRow row,
    required String fieldId,
    required FieldOperator operator,
  }) {
    final branch = BranchCondition(siblingsRule: .and);
    final condition = ValueFieldCondition(
      field: (Map<String, dynamic> val) => val[fieldId],
      operator: operator,
      value: ConditionValueFactory.getFromValueType(row.cells[fieldId]!.value),
    );
    branch.addChild(condition);
    return branch;
  }

  ///列同士の参照
  static SearchCondition toFieldRefCondition({
    required String fieldId,
    required String toField,
    required FieldOperator operator,
  }) {
    final branch = BranchCondition(siblingsRule: .and);
    final condition = FieldReferenceCondition(
      field: (Map<String, dynamic> val) => val[fieldId],
      toField: (Map<String, dynamic> val) => val[toField],
      operator: operator,
    );
    branch.addChild(condition);
    return branch;
  }
}
