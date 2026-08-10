import '../../constants/constants.dart';
import '../import.dart';

///TrinaGridのフィルターから、条件式モデルを生成する
abstract interface class IFilterExpressionAdapter<R> {
  ///フィールドの取得
  ///Listレポジトリでは必須
  GridExtensionFieldExpression? get fieldExpression;

  IPredicateModel build(
    IQueryState<R> state, {
    List<TrinaRow> filterRows,
    List<TrinaColumn>? columns,
    int skip,
  });
}

///TrinaGridのフィルターから、条件式モデルを生成する
class FilterExpressionAdapter<R> implements IFilterExpressionAdapter<R> {
  ///フィールドの取得
  ///Listレポジトリでは必須
  @override
  final GridExtensionFieldExpression? fieldExpression;

  FilterExpressionAdapter({this.fieldExpression});

  @override
  IPredicateModel build(
    IQueryState<R> state, {
    List<TrinaRow<dynamic>>? filterRows,
    List<TrinaColumn>? columns,
    int skip = 0,
  }) {
    if (fieldExpression == null && state.expressionVisitorType == .list) {
      throw AssertionError(
        'The repository state is of the list type, but the FieldExpression property is null. If the repository is of the list type, this property should not be null.',
      );
    }

    final expressions = filterRows != null && filterRows.isNotEmpty
        ? filterRows.map((row) => _rowTransrater(state, row)).toList()
        : null;
    final sortColumns = columns?.where(
      (t) => !t.sort.isNone && t.field != KeyConstant.uniqKey,
    );
    final sortEx = sortColumns != null && sortColumns.isNotEmpty
        ? sortColumns.map((t) => _columnTransrater(state, t)).toList()
        : null;
    return PredicateModel(
      take: state.fetchLimit,
      skip: skip,
      pridicate: expressions == null ? null : AndExpression(expressions),
      orders: sortEx == null ? null : SortListExpression(sortOrderList: sortEx),
    );
  }

  ///TrinaGridのフィルタのRowをExpressionに変換する
  Expression _rowTransrater(IQueryState<R> state, TrinaRow row) {
    final operation = row.cells[FilterHelper.filterFieldType]!.value;

    final field = row.cells[FilterHelper.filterFieldColumn]!.value;
    final filterValue = row.cells[FilterHelper.filterFieldValue]!.value;

    ///レポジトリのタイプに応じて切り替える

    final fieldEx = state.expressionVisitorType == .list
        ? FieldExpression(
            (t) => fieldExpression!(t, field.toString()),
          ) //とりあえずマップ
        : NameFieldExpression(field.toString());

    final valueEx = ValueExpression(filterValue);

    return _toExpresisonOperator(operation, fieldEx, valueEx);
  }

  ///TrinaGridのフィルタのRowから取得した比較式をExpressionの式に変換する
  Expression _toExpresisonOperator(
    TrinaFilterType operation,
    Expression left,
    Expression right,
  ) {
    final result = switch (operation) {
      TrinaFilterTypeEquals _ => EqualExpression(left, right),
      TrinaFilterTypeContains _ => LikeExpression(left, right),
      TrinaFilterTypeIsEmpty _ => NullExpression(left),
      TrinaFilterTypeIsNotEmpty _ => NullExpression(left, isNot: true),
      TrinaFilterTypeStartsWith _ => StartWithExpression(left, right),
      TrinaFilterTypeEndsWith _ => EndWithExpression(left, right),
      TrinaFilterTypeLessThan _ => GreaterExpression(right, left),
      TrinaFilterTypeLessThanOrEqualTo _ => GreaterExpression(
        right,
        left,
        isEqulity: true,
      ),
      TrinaFilterTypeGreaterThan _ => GreaterExpression(left, right),
      TrinaFilterTypeGreaterThanOrEqualTo _ => GreaterExpression(
        left,
        right,
        isEqulity: true,
      ),
      //   isThanEquals: true,
      // ),
      _ => throw AssertionError(),
    };
    return result;
  }

  ///TrinaGridのColumnをSortExpressionに変換する
  ISortDirectionExpression _columnTransrater(
    IQueryState<R> state,
    TrinaColumn column,
  ) {
    final sortexpression = state.expressionVisitorType == .list
        ? SortFieldExpression(
            (t) => fieldExpression!(t, column.field),
            isDesc: column.sort.isDescending,
          )
        : SortNameFieldExpression(
            column.field,
            isDesc: column.sort.isDescending,
          );
    return sortexpression as ISortDirectionExpression;
  }
}
