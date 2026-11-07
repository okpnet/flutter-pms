import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';

const _ship = EntityDefinition(
  key: 'ship',
  fields: [
    FieldDefinition(key: 'date', kind: FieldKind.date),
    FieldDefinition(
      key: 'arrival',
      kind: FieldKind.date,
      required: false,
      notBefore: 'date',
    ),
    FieldDefinition(
      key: 'progress',
      kind: FieldKind.number,
      required: false,
      ge: 0,
      le: 100,
    ),
    FieldDefinition(
      key: 'rate',
      kind: FieldKind.number,
      required: false,
      lt: 1,
    ),
  ],
);

EntityRecord _r(Map<String, String> v) => EntityRecord(id: '', values: v);

Future<Map<String, EntityFieldError>> _errors(Map<String, String> v) async {
  try {
    await InMemoryEntityRepository(_ship).save(_r(v));
    return {};
  } on EntityValidationException catch (e) {
    return e.errors;
  }
}

void main() {
  group('上限と日付の前後', () {
    test('le(以下)・lt(より小さい)', () async {
      expect(await _errors({'date': '2026-11-01', 'progress': '100'}), isEmpty);
      expect(await _errors({'date': '2026-11-01', 'progress': '101'}), {
        'progress': EntityFieldError.aboveMaximum,
      });
      expect(await _errors({'date': '2026-11-01', 'rate': '1'}), {
        'rate': EntityFieldError.notBelowMaximum,
      });
      expect(await _errors({'date': '2026-11-01', 'rate': '0.9'}), isEmpty);
    });

    test('notBefore: 同じ日は可、前は不可、どちらかが空なら検証しない', () async {
      expect(
        await _errors({'date': '2026-11-05', 'arrival': '2026-11-05'}),
        isEmpty,
      );
      expect(await _errors({'date': '2026-11-05', 'arrival': '2026-11-04'}), {
        'arrival': EntityFieldError.beforeOtherDate,
      });
      expect(await _errors({'date': '2026-11-05'}), isEmpty);
    });

    test('toJson に含まれる', () {
      final j = _ship.fields[1].toJson();
      expect(j['notBefore'], 'date');
      expect(_ship.fields[2].toJson()['le'], 100);
    });
  });
}
