import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ConditionValue', () {
    test('比較・範囲・二値を JSON にでき、読み戻せる', () {
      for (final c in const [
        ConditionValue(ConditionOperator.greaterOrEqual, '10'),
        ConditionValue(ConditionOperator.notEqual, 'A'),
        ConditionValue(ConditionOperator.between, ['1', '5']),
        ConditionValue(ConditionOperator.yesNo, true),
      ]) {
        final parsed = ConditionValue.tryParse(c.toJsonString());
        expect(parsed?.operator, c.operator);
        expect(parsed?.value, c.value);
      }
    });

    test('値が空・演算子が不明・型が合わないものは読めない', () {
      for (final bad in [
        '',
        'abc',
        '{"operator":"=","value":""}',
        '{"operator":"??","value":"1"}',
        '{"operator":"between","value":["1"]}',
        '{"operator":"yesno","value":"yes"}',
      ]) {
        expect(ConditionValue.tryParse(bad), isNull, reason: bad);
      }
    });

    test('台帳の表示', () {
      expect(
        ConditionValue.displayOf('{"operator":">=","value":"10"}'),
        '>= 10',
      );
      expect(
        ConditionValue.displayOf('{"operator":"between","value":["1","5"]}'),
        '1 〜 5',
      );
      expect(
        ConditionValue.displayOf('{"operator":"yesno","value":false}'),
        'No',
      );
      expect(ConditionValue.displayOf('壊れた値'), '壊れた値');
    });
  });

  test('取得元は、条件として読めない値を検証エラーにする', () async {
    final repository = InMemoryEntityRepository(
      const EntityDefinition(
        key: 'formula',
        fields: [FieldDefinition(key: 'expr', kind: FieldKind.condition)],
      ),
    );
    await repository.save(
      EntityRecord(id: '', values: {'expr': '{"operator":"<","value":"3"}'}),
    );
    expect(
      () => repository.save(EntityRecord(id: '', values: {'expr': 'x'})),
      throwsA(
        isA<EntityValidationException>().having(
          (e) => e.errors['expr'],
          'expr',
          EntityFieldError.invalidCondition,
        ),
      ),
    );
  });
}
