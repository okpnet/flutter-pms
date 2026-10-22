import '../data/conditions.dart';

/// テーブルが使うラベル。アプリが言語ごとに渡す。既定は日本語。
///
/// 動作確認用に英語([TableLabels.english])だけ同梱する。
/// パターン: Value Object
class TableLabels {
  const TableLabels({
    this.previous = '前へ',
    this.next = '次へ',
    this.loading = '読み込み中...',
    this.noData = 'データがありません',
    this.delete = '削除',
    this.flag = 'フラグ',
    this.unflag = 'フラグ解除',
    this.moveUp = '上へ',
    this.moveDown = '下へ',
    this.filter = 'フィルタ',
    this.apply = '適用',
    this.clear = '解除',
    this.cancel = 'キャンセル',
    this.operator = '条件',
    this.value = '値',
    this.valueTo = '〜',
    this.listHint = 'カンマ区切り',
    this.addCondition = '条件を追加',
    this.removeCondition = '条件を削除',
    this.search = '検索',
    this.sortBy = '並び替え',
    this.ascending = '昇順',
    this.descending = '降順',
    this.filterColumn = '対象列',
    this.countTotal = '全{n}件',
    this.countFiltered = 'フィルタ適用{n}件',
    this.countLoaded = '読込{n}件',
    this.operators = const {},
  });

  /// 動作確認用の英語ラベル。
  static const english = TableLabels(
    previous: 'Previous',
    next: 'Next',
    loading: 'Loading...',
    noData: 'No data',
    delete: 'Delete',
    flag: 'Flag',
    unflag: 'Unflag',
    moveUp: 'Move up',
    moveDown: 'Move down',
    filter: 'Filter',
    apply: 'Apply',
    clear: 'Clear',
    cancel: 'Cancel',
    operator: 'Condition',
    value: 'Value',
    valueTo: 'to',
    listHint: 'Comma separated',
    addCondition: 'Add condition',
    removeCondition: 'Remove condition',
    search: 'Search',
    sortBy: 'Sort by',
    ascending: 'Ascending',
    descending: 'Descending',
    filterColumn: 'Column',
    countTotal: 'Total {n}',
    countFiltered: 'Filtered {n}',
    countLoaded: 'Loaded {n}',
    operators: {
      FilterOperator.eq: 'Equals',
      FilterOperator.neq: 'Not equals',
      FilterOperator.inList: 'In',
      FilterOperator.notInList: 'Not in',
      FilterOperator.le: 'Less or equal',
      FilterOperator.lt: 'Less than',
      FilterOperator.ge: 'Greater or equal',
      FilterOperator.gt: 'Greater than',
      FilterOperator.between: 'Between',
      FilterOperator.startsWith: 'Starts with',
      FilterOperator.notStartsWith: 'Not starts with',
      FilterOperator.endsWith: 'Ends with',
      FilterOperator.notEndsWith: 'Not ends with',
      FilterOperator.like: 'Like',
      FilterOperator.notLike: 'Not like',
    },
  );

  final String previous;
  final String next;
  final String loading;
  final String noData;
  final String delete;
  final String flag;
  final String unflag;
  final String moveUp;
  final String moveDown;
  final String filter;
  final String apply;
  final String clear;
  final String cancel;
  final String operator;
  final String value;
  final String valueTo;
  final String listHint;
  final String addCondition;
  final String removeCondition;
  final String search;
  final String sortBy;
  final String ascending;
  final String descending;
  final String filterColumn;

  /// 件数表示の書式。`{n}`が件数に置き換わる。
  final String countTotal;
  final String countFiltered;
  final String countLoaded;

  /// 演算子名の上書き。未指定は既定の名称。
  final Map<FilterOperator, String> operators;

  static const _defaultOperators = {
    FilterOperator.eq: '等しい',
    FilterOperator.neq: '等しくない',
    FilterOperator.inList: 'いずれかに一致',
    FilterOperator.notInList: 'いずれにも一致しない',
    FilterOperator.le: '以下',
    FilterOperator.lt: '未満',
    FilterOperator.ge: '以上',
    FilterOperator.gt: 'より大きい',
    FilterOperator.between: '範囲内',
    FilterOperator.startsWith: 'で始まる',
    FilterOperator.notStartsWith: 'で始まらない',
    FilterOperator.endsWith: 'で終わる',
    FilterOperator.notEndsWith: 'で終わらない',
    FilterOperator.like: 'LIKE',
    FilterOperator.notLike: 'NOT LIKE',
  };

  String operatorLabel(FilterOperator op) =>
      operators[op] ?? _defaultOperators[op] ?? op.sqlName;

  /// 件数の書式`{n}`を置き換える。
  static String format(String template, int n) =>
      template.replaceAll('{n}', '$n');

  Map<String, dynamic> toJson() => {
    'previous': previous,
    'next': next,
    'loading': loading,
    'noData': noData,
    'countTotal': countTotal,
    'countFiltered': countFiltered,
    'countLoaded': countLoaded,
    'operators': {
      for (final op in FilterOperator.values) op.name: operatorLabel(op),
    },
  };
}
