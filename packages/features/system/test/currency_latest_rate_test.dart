import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/src/entities/system_definitions.dart';

/// 通貨の台帳に、最新のレート(DB のビュー v_currency_rate_latest の値。基準通貨は 1・適用開始日なし)を読み取り専用で出す。
/// レートの登録は為替レートの画面(適用開始日 = 年月日)で行う。
void main() {
  final currency = systemDefinitions.firstWhere((d) => d.key == 'currency');
  FieldDefinition field(String key) =>
      currency.fields.firstWhere((f) => f.key == key);

  test('最新のレート・基準通貨・適用開始日は、読み取り専用', () {
    expect(field('latest_rate').kind, FieldKind.number);
    expect(field('latest_rate_date').kind, FieldKind.date);
    expect(field('is_base').kind, FieldKind.flag);
    for (final key in ['latest_rate', 'latest_rate_date', 'is_base']) {
      expect(field(key).readOnly, isTrue, reason: key);
      expect(field(key).required, isFalse, reason: key);
    }
  });

  test('為替レートの適用開始日は年月日(日付)', () {
    final rate = systemDefinitions.firstWhere((d) => d.key == 'exchangerate');
    expect(
      rate.fields.firstWhere((f) => f.key == 'rate_date').kind,
      FieldKind.date,
    );
  });
}
