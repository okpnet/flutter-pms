import 'package:query_builder/query_builder.dart';

import 'conditions.dart';
import 'load_models.dart';

/// テーブルのフィルタ/ソート条件を、`query_builder`の式(`Expression`/`SortExpression`)にする。
///
/// ローダー(データの取得元)は、この式をそのまま `data_strategist` の `IDataRepository.find` に渡せる。
/// 列のキー(`columnKey`)は式のフィールド名(平坦化キー)になる。
///
/// 制限: 文字列の大文字小文字を区別しない比較(テーブル内の標準)は、式では区別する。
/// 取得元で区別しない比較が必要なときは、取得元側で扱う。
///
/// パターン: Adapter(テーブルの条件 -> query_builder の式)
extension FilterConditionExpression on FilterCondition {
  Expression toExpression() {
    final field = NameFieldExpression(columnKey);
    Expression value(Object? v) => ValueExpression(v);
    Object? first() {
      if (values.isEmpty) {
        throw ArgumentError('$columnKey: ${operator.sqlName}には値が必要です');
      }
      return values.first;
    }

    switch (operator) {
      case FilterOperator.eq:
        return EqualExpression(field, value(first()));
      case FilterOperator.neq:
        return EqualExpression(field, value(first()), isNot: true);
      case FilterOperator.inList:
        return InExpression(field, value(values));
      case FilterOperator.notInList:
        return InExpression(field, value(values), isNot: true);
      case FilterOperator.ge:
        return GreaterExpression(field, value(first()), isEqulity: true);
      case FilterOperator.gt:
        return GreaterExpression(field, value(first()));
      case FilterOperator.le:
        return GreaterExpression(field, value(first()), isLess: true, isEqulity: true);
      case FilterOperator.lt:
        return GreaterExpression(field, value(first()), isLess: true);
      case FilterOperator.between:
        if (values.length < 2) {
          throw ArgumentError('$columnKey: BETWEENには2つの値が必要です');
        }
        return AndExpression([
          GreaterExpression(field, value(values[0]), isEqulity: true),
          GreaterExpression(field, value(values[1]), isLess: true, isEqulity: true),
        ]);
      case FilterOperator.startsWith:
        return StartWithExpression(field, value(first()));
      case FilterOperator.notStartsWith:
        return StartWithExpression(field, value(first()), isNot: true);
      case FilterOperator.endsWith:
        return EndWithExpression(field, value(first()));
      case FilterOperator.notEndsWith:
        return EndWithExpression(field, value(first()), isNot: true);
      case FilterOperator.like:
        return _like(field, '${first()}', isNot: false);
      case FilterOperator.notLike:
        return _like(field, '${first()}', isNot: true);
    }
  }

  /// LIKEパターン(`%`=任意の文字列、`_`=任意の1文字)を、式で表せる形に直す。
  /// ワイルドカードが無ければ一致、`x%`は前方一致、`%x`は後方一致、`%x%`は部分一致。
  /// それ以外(途中のワイルドカード、`_`)は式にできないので[UnsupportedError]とする。
  Expression _like(NameFieldExpression field, String pattern, {required bool isNot}) {
    final starts = pattern.startsWith('%');
    final ends = pattern.endsWith('%') && pattern.length > (starts ? 1 : 0);
    final core = pattern.substring(starts ? 1 : 0, ends ? pattern.length - 1 : pattern.length);
    if (core.contains('%') || core.contains('_')) {
      throw UnsupportedError('$columnKey: LIKEのパターン「$pattern」は式にできません(前方・後方・部分一致のみ)');
    }
    final v = ValueExpression(core);
    if (starts && ends) return LikeExpression(field, v, isNot: isNot);
    if (starts) return EndWithExpression(field, v, isNot: isNot);
    if (ends) return StartWithExpression(field, v, isNot: isNot);
    return EqualExpression(field, v, isNot: isNot);
  }
}

extension SortConditionExpression on SortCondition {
  SortExpression toSortExpression() =>
      SortNameFieldExpression(columnKey, isDesc: !ascending);
}

extension FilterConditionsExpression on List<FilterCondition> {
  /// 全条件のAND。条件が無ければnull(条件なし)。
  Expression? toExpression() {
    if (isEmpty) return null;
    if (length == 1) return first.toExpression();
    return AndExpression([for (final c in this) c.toExpression()]);
  }
}

extension LoadQueryExpression on LoadQuery {
  /// 抽出条件。条件が無ければnull。
  Expression? get predicate => filters?.toExpression();

  /// 並び順。指定が無ければnull。
  SortExpression? get orders => sort?.toSortExpression();
}
