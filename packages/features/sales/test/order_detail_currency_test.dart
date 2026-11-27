import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sales/src/entities/sales_definitions.dart';

/// 受注明細の金額は、取引の通貨(顧客の履歴の通貨)の記号で出す。通貨の記号の項目は、読み取り専用・非表示・台帳に出さない。
void main() {
  final detail = salesDefinitions.firstWhere((d) => d.key == 'orderdetail');
  FieldDefinition field(String key) => detail.fields.firstWhere((f) => f.key == key);

  test('金額の項目は、行の通貨の記号の項目を指す', () {
    for (final key in ['unit_price', 'price_adjustment', 'fixed_price', 'settlement_amount']) {
      expect(field(key).money, isTrue, reason: key);
      expect(field(key).currencyKey, 'currency_symbol', reason: key);
    }
  });

  test('通貨の記号の項目は、読み取り専用で、画面にも台帳にも出さない', () {
    final f = field('currency_symbol');
    expect(f.readOnly, isTrue);
    expect(f.hidden, isTrue);
    expect(f.inList, isFalse);
    expect(f.required, isFalse);
  });

  test('基準通貨の金額(目安)は読み取り専用の数値で、レートが仮かは真偽', () {
    expect(field('amount_base').readOnly, isTrue);
    expect(field('amount_base').kind, FieldKind.number);
    expect(field('rate_provisional').kind, FieldKind.flag);
    expect(field('rate_provisional').readOnly, isTrue);
  });
}
