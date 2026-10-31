import 'package:flutter_test/flutter_test.dart';
import 'package:selection_result/selection_result.dart';

void main() {
  const full = Selection(
    entityKey: 'supplier',
    id: '5b1f0c1e-0000-4000-8000-000000000001',
    label: 'ABC商事',
    values: {'code': 'S-001'},
  );

  test('短い JSON に変換して戻せる', () {
    final text = full.encode();
    expect(text, contains('"k":"supplier"'));
    expect(Selection.decode(text), full);
  });

  test('空の表示名・値は短い JSON から省く', () {
    const s = Selection(entityKey: 'item', id: 'a');
    expect(s.encode(), '{"k":"item","i":"a"}');
    expect(Selection.decode(s.encode()), s);
  });

  test('エラー追跡用の JSON は読みやすいキー', () {
    expect(full.toJson()['entityKey'], 'supplier');
    expect(Selection.fromJson(full.toJson()), full);
  });

  test('形式が合わないときは FormatException', () {
    expect(() => Selection.decode('{"k":"x"}'), throwsFormatException);
    expect(() => Selection.decode('[]'), throwsFormatException);
  });

  test('等しさは対象・id・表示名・値で決まる', () {
    expect(full, Selection.decode(full.encode()));
    expect(full, isNot(const Selection(entityKey: 'supplier', id: 'x')));
  });
}
