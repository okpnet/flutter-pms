/// 列の値の型。フィルタ演算子とソートの比較方法を決める。
enum ColumnType { string, number, time }

/// フィルタ演算子。
enum FilterOperator {
  eq('EQ'),
  neq('NEQ'),
  inList('IN'),
  notInList('NOT IN'),
  le('LE'),
  lt('LT'),
  ge('GE'),
  gt('GT'),
  between('BETWEEN'),
  startsWith('START WITH'),
  notStartsWith('NOT START WITH'),
  endsWith('END WITH'),
  notEndsWith('NOT END WITH'),
  like('LIKE'),
  notLike('NOT LIKE');

  const FilterOperator(this.sqlName);

  final String sqlName;

  /// 複数の値を取る演算子。
  bool get isList => this == inList || this == notInList;

  /// 列の型で選択できる演算子。
  static List<FilterOperator> of(ColumnType type) => [
    eq,
    neq,
    inList,
    notInList,
    if (type != ColumnType.string) ...[le, lt, ge, gt, between],
    if (type == ColumnType.string) ...[
      startsWith,
      notStartsWith,
      endsWith,
      notEndsWith,
      like,
      notLike,
    ],
  ];
}

/// ソート条件。
class SortCondition {
  const SortCondition(this.columnKey, {this.ascending = true});

  final String columnKey;
  final bool ascending;

  SortCondition get reversed => SortCondition(columnKey, ascending: !ascending);

  static SortCondition? tryFromJson(Object? json) {
    if (json is! Map || json['columnKey'] is! String) return null;
    return SortCondition(
      json['columnKey'] as String,
      ascending: json['ascending'] is bool ? json['ascending'] as bool : true,
    );
  }

  Map<String, dynamic> toJson() => {
    'columnKey': columnKey,
    'ascending': ascending,
  };

  @override
  String toString() => 'Sort($columnKey ${ascending ? 'ASC' : 'DESC'})';
}

/// フィルタ条件。値は`List<Object?>`(BETWEENは2要素)。
class FilterCondition {
  const FilterCondition(this.columnKey, this.operator, this.values);

  final String columnKey;
  final FilterOperator operator;
  final List<Object?> values;

  static FilterCondition? tryFromJson(Object? json) {
    if (json is! Map || json['columnKey'] is! String) return null;
    final op = FilterOperator.values
        .where((o) => o.name == json['operator'])
        .firstOrNull;
    final values = json['values'];
    if (op == null || values is! List) return null;
    return FilterCondition(json['columnKey'] as String, op, values);
  }

  Map<String, dynamic> toJson() => {
    'columnKey': columnKey,
    'operator': operator.name,
    'values': [for (final v in values) v is DateTime ? v.toIso8601String() : v],
  };

  @override
  String toString() => 'Filter($columnKey ${operator.sqlName} $values)';
}
