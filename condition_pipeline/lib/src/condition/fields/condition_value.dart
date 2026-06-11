abstract interface class IConditionValue {
  dynamic get value;
}

abstract class ConditionValue<T> implements IConditionValue {
  @override
  T? get value;
}

class StringleValue implements ConditionValue<String> {
  @override
  final String value;

  StringleValue(this.value);
}

class ListValue<T> implements ConditionValue<List<T>> {
  @override
  final List<T> value;

  ListValue(this.value);
}

class NumberValue implements ConditionValue<num> {
  @override
  final num value;

  NumberValue(this.value);
}

class DateValue implements ConditionValue<DateTime> {
  @override
  final DateTime value;

  DateValue(this.value);
}

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

final class ConditionValueFactory {
  static ConditionValue getFromValueType<T>(T value) {
    return switch (value) {
      String s => string(s),
      num n => number(n),
      DateTime d => date(d),
      List l => list(l),
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
}
