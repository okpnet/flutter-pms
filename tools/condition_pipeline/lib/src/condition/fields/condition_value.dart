import '../condition.dart';

abstract interface class IConditionValue {
  dynamic get value;
}

/// 右辺：比較に使う基準値。
abstract class ConditionValue<T> implements IConditionValue {
  @override
  T? get value;
}

/// 右辺：ソートに使用する基準値。
class SortValue<T> implements ConditionValue<SortValueItem<T>> {
  @override
  final SortValueItem<T> value;
  SortValue(this.value);
}

/// ソート対象のフィールドを表すアイテム。
final class SortValueItem<T> {
  final FieldCallBack<T> field;
  SortValueItem({required this.field});
}

/// 右辺：null 値と比較するための値。
class NullValue implements ConditionValue<dynamic> {
  @override
  final dynamic value;
  NullValue() : value = null;
}

/// 右辺：文字列の基準値。
class StringleValue implements ConditionValue<String> {
  @override
  final String value;

  StringleValue(this.value);
}

/// 右辺：リストの基準値。Contain や Like で使用。
class ListValue<T> implements ConditionValue<List<T>> {
  @override
  final List<T> value;

  ListValue(this.value);
}

/// 右辺：数値の基準値。
class NumberValue implements ConditionValue<num> {
  @override
  final num value;

  NumberValue(this.value);
}

/// 右辺：日時の基準値。
class DateValue implements ConditionValue<DateTime> {
  @override
  final DateTime value;

  DateValue(this.value);
}

/// 右辺：Between の開始・終了を表す ConditionValue。
class BetweenValue<T> implements ConditionValue<BetweenItem<T>> {
  @override
  final BetweenItem<T> value;
  BetweenValue(this.value);
}

final class BetweenItem<T> {
  final ConditionValue<T> start;
  final ConditionValue<T> end;

  BetweenItem({required this.start, required this.end});
}

/// 右辺：フィールド同士を比較するための値。
class FieldReferenceValue<T> implements ConditionValue<FieldReferenceItem<T>> {
  @override
  final FieldReferenceItem<T>? value;

  FieldReferenceValue(this.value);
}

final class FieldReferenceItem<T> {
  final FieldCallBack<T> left;
  final FieldCallBack<T> right;
  FieldReferenceItem({required this.left, required this.right});
}

/// ConditionValue を生成するファクトリ。
final class ConditionValueFactory {
  static ConditionValue getFromValueType<T>(T value) {
    return switch (value) {
      String s => string(s),
      num n => number(n),
      DateTime d => date(d),
      List l => list(l),
      null => nullValue(),
      _ => throw UnsupportedError('Unsupported type: ${value.runtimeType}'),
    };
  }

  static ConditionValue<String> string(String value) => StringleValue(value);
  static ConditionValue<List<T>> list<T>(List<T> value) => ListValue(value);
  static ConditionValue<num> number(num value) => NumberValue(value);
  static ConditionValue<DateTime> date(DateTime value) => DateValue(value);
  static ConditionValue<BetweenItem<T>> between<T>(T start, T end) =>
      BetweenValue(
        BetweenItem(
          start: getFromValueType(start) as ConditionValue<T>,
          end: getFromValueType(end) as ConditionValue<T>,
        ),
      );
  static ConditionValue<dynamic> nullValue() => NullValue();
  static ConditionValue<FieldReferenceItem<T>> fieldToField<T>(
    FieldCallBack<T> field,
    FieldCallBack<T> toField,
  ) => FieldReferenceValue<T>(
    FieldReferenceItem<T>(left: toField, right: field),
  );
}
