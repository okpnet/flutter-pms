import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/scalars.dart';

void main() {
  test('Datetime は往復で同じ時刻になる', () {
    final value = fromJsonDatetime('2026-10-27T01:02:03.000Z');
    expect(value, DateTime.utc(2026, 10, 27, 1, 2, 3));
    expect(fromJsonDatetime(toJsonDatetime(value)), value);
  });

  test('BigInt は文字列・数値のどちらからも読め、文字列に戻る', () {
    expect(fromJsonBigInt('9007199254740993'), BigInt.parse('9007199254740993'));
    expect(fromJsonBigInt(12), BigInt.from(12));
    expect(toJsonBigInt(BigInt.from(7)), '7');
  });
}
