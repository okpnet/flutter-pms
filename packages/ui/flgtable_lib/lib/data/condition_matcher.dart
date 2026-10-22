import '../column/column_definition.dart';
import 'conditions.dart';

/// フィルタ/ソートをメモリ上で適用する。
///
/// パターン: Strategy(列の型ごとの比較)
class ConditionMatcher {
  const ConditionMatcher._();

  /// 全条件(AND)を満たす項目だけを返す。条件の列が見つからなければ無視する。
  static List<T> filter<T>(
    List<T> items,
    List<ColumnDefinition<T>> columns,
    List<FilterCondition> conditions,
  ) {
    final byKey = {for (final c in columns) c.key: c};
    final active = [
      for (final f in conditions)
        if (byKey.containsKey(f.columnKey)) (byKey[f.columnKey]!, f),
    ];
    if (active.isEmpty) return List.of(items);
    return [
      for (final item in items)
        if (active.every((a) => matches(a.$1.read(item), a.$1.type, a.$2)))
          item,
    ];
  }

  /// 安定ソート。同値の並びは元の順序を保つ。
  static List<T> sort<T>(
    List<T> items,
    List<ColumnDefinition<T>> columns,
    SortCondition? sort,
  ) {
    final column = columns.where((c) => c.key == sort?.columnKey).firstOrNull;
    if (sort == null || column == null) return List.of(items);
    return stableSort(items, (a, b) {
      final r = compare(column.read(a), column.read(b), column.type);
      return sort.ascending ? r : -r;
    });
  }

  /// 同値の順序を保つ並べ替え。
  static List<T> stableSort<T>(List<T> items, int Function(T a, T b) compare) {
    final indexed = [for (var i = 0; i < items.length; i++) (i, items[i])];
    indexed.sort((a, b) {
      final r = compare(a.$2, b.$2);
      return r != 0 ? r : a.$1.compareTo(b.$1);
    });
    return [for (final e in indexed) e.$2];
  }

  /// 型に応じた比較。解釈できない値は末尾に寄せる。
  static int compare(String a, String b, ColumnType type) {
    switch (type) {
      case ColumnType.number:
        return _cmpNullable(num.tryParse(a), num.tryParse(b));
      case ColumnType.time:
        return _cmpNullable(DateTime.tryParse(a), DateTime.tryParse(b));
      case ColumnType.string:
        return a.compareTo(b);
    }
  }

  static int _cmpNullable<V extends Comparable<Object>>(V? a, V? b) {
    if (a == null && b == null) return 0;
    if (a == null) return 1;
    if (b == null) return -1;
    return a.compareTo(b);
  }

  /// 表示文字列[text]が条件を満たすか。大文字小文字は区別しない。
  static bool matches(String text, ColumnType type, FilterCondition c) {
    final values = c.values;
    if (values.isEmpty) return true;
    bool eq(Object? v) => _equals(text, v, type);
    switch (c.operator) {
      case FilterOperator.eq:
        return eq(values.first);
      case FilterOperator.neq:
        return !eq(values.first);
      case FilterOperator.inList:
        return values.any(eq);
      case FilterOperator.notInList:
        return !values.any(eq);
      case FilterOperator.le:
        return _ordered(text, values.first, type, (r) => r <= 0);
      case FilterOperator.lt:
        return _ordered(text, values.first, type, (r) => r < 0);
      case FilterOperator.ge:
        return _ordered(text, values.first, type, (r) => r >= 0);
      case FilterOperator.gt:
        return _ordered(text, values.first, type, (r) => r > 0);
      case FilterOperator.between:
        if (values.length < 2) return true;
        return _ordered(text, values[0], type, (r) => r >= 0) &&
            _ordered(text, values[1], type, (r) => r <= 0);
      case FilterOperator.startsWith:
        return _lower(text).startsWith(_lower(values.first));
      case FilterOperator.notStartsWith:
        return !_lower(text).startsWith(_lower(values.first));
      case FilterOperator.endsWith:
        return _lower(text).endsWith(_lower(values.first));
      case FilterOperator.notEndsWith:
        return !_lower(text).endsWith(_lower(values.first));
      case FilterOperator.like:
        return likeRegExp('${values.first}').hasMatch(text);
      case FilterOperator.notLike:
        return !likeRegExp('${values.first}').hasMatch(text);
    }
  }

  /// LIKEパターン(`%`=任意の文字列、`_`=任意の1文字)を正規表現にする。
  static RegExp likeRegExp(String pattern) {
    final buffer = StringBuffer('^');
    for (final rune in pattern.runes) {
      final ch = String.fromCharCode(rune);
      buffer.write(switch (ch) {
        '%' => '.*',
        '_' => '.',
        _ => RegExp.escape(ch),
      });
    }
    buffer.write(r'$');
    return RegExp(buffer.toString(), caseSensitive: false, dotAll: true);
  }

  static String _lower(Object? v) => '$v'.toLowerCase();

  static bool _equals(String text, Object? v, ColumnType type) {
    switch (type) {
      case ColumnType.number:
        final a = num.tryParse(text);
        final b = v is num ? v : num.tryParse('$v');
        return a != null && b != null && a == b;
      case ColumnType.time:
        final a = DateTime.tryParse(text);
        final b = v is DateTime ? v : DateTime.tryParse('$v');
        return a != null && b != null && a.isAtSameMomentAs(b);
      case ColumnType.string:
        return _lower(text) == _lower(v);
    }
  }

  static bool _ordered(
    String text,
    Object? v,
    ColumnType type,
    bool Function(int) test,
  ) {
    switch (type) {
      case ColumnType.number:
        final a = num.tryParse(text);
        final b = v is num ? v : num.tryParse('$v');
        return a != null && b != null && test(a.compareTo(b));
      case ColumnType.time:
        final a = DateTime.tryParse(text);
        final b = v is DateTime ? v : DateTime.tryParse('$v');
        return a != null && b != null && test(a.compareTo(b));
      case ColumnType.string:
        return test(_lower(text).compareTo(_lower(v)));
    }
  }

  /// 入力文字列を列の型の値へ変換する。変換できなければ null。
  static Object? parseValue(String raw, ColumnType type) {
    final s = raw.trim();
    switch (type) {
      case ColumnType.number:
        return num.tryParse(s);
      case ColumnType.time:
        return DateTime.tryParse(s);
      case ColumnType.string:
        return raw;
    }
  }
}
