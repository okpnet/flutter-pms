import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:purchasing/src/entities/purchasing_definitions.dart';

/// 発注明細の金額は、取引の通貨(仕入先の履歴の通貨)の記号で出す。非計上明細は設定の通貨のまま。
void main() {
  FieldDefinition field(String entity, String key) =>
      purchasingDefinitions.firstWhere((d) => d.key == entity).fields.firstWhere((f) => f.key == key);

  test('発注明細の金額の項目は、行の通貨の記号の項目を指す。非計上明細は指さない', () {
    for (final key in ['unit_price', 'price_adjustment', 'fixed_price']) {
      expect(field('purdetail', key).currencyKey, 'currency_symbol', reason: key);
      expect(field('unrecdetail', key).currencyKey, isNull, reason: key);
    }
  });

  test('通貨の記号は読み取り専用・非表示・台帳に出さない。基準通貨の金額と仮は読み取り専用', () {
    final s = field('purdetail', 'currency_symbol');
    expect([s.readOnly, s.hidden, s.inList], [true, true, false]);
    expect(field('purdetail', 'amount_base').readOnly, isTrue);
    expect(field('purdetail', 'rate_provisional').kind, FieldKind.flag);
  });
}
