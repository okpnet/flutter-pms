import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // a(ルート) → b → c、d は別のルート
  const parents = {'a': null, 'b': 'a', 'c': 'b', 'd': null};
  final guard = TreeCycleGuard.walkingParents((id) async => parents[id]);

  Future<EntityFieldError?> run(String id, String? parent) async {
    try {
      await guard.ensureAllowed(id: id, newParentId: parent);
      return null;
    } on EntityValidationException catch (e) {
      return e.errors[EntityValidationException.parentKey];
    }
  }

  test('自分自身・子孫を親にすると循環', () async {
    expect(await run('a', 'a'), EntityFieldError.parentCycle);
    expect(await run('a', 'c'), EntityFieldError.parentCycle);
    expect(await run('b', 'c'), EntityFieldError.parentCycle);
  });

  test('別の系統・トップ・新規は通る', () async {
    expect(await run('c', 'd'), isNull);
    expect(await run('a', 'd'), isNull);
    expect(await run('c', null), isNull);
    expect(await run('', 'c'), isNull);
  });

  test('閉包を引く版も同じ判定', () async {
    const closure = {
      ('a', 'a'),
      ('a', 'b'),
      ('a', 'c'),
      ('b', 'b'),
      ('b', 'c'),
    };
    final g = TreeCycleGuard((a, d) async => closure.contains((a, d)));
    await expectLater(
      g.ensureAllowed(id: 'a', newParentId: 'c'),
      throwsA(isA<EntityValidationException>()),
    );
    await g.ensureAllowed(id: 'c', newParentId: 'a');
  });

  test('トリガーのエラーの文を見分ける', () {
    expect(TreeCycleGuard.isTriggerMessage('体系の循環: 自分自身を親にできません(x)'), isTrue);
    expect(TreeCycleGuard.isTriggerMessage('ほかのエラー'), isFalse);
  });
}
