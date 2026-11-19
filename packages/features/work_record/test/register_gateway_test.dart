import 'package:flutter_test/flutter_test.dart';
import 'package:work_record/src/register/in_memory_register_gateway.dart';
import 'package:work_record/src/register/register_models.dart';

void main() {
  late InMemoryWorkRegisterGateway g;
  setUp(() => g = InMemoryWorkRegisterGateway());

  Future<void> expectInvalid(Future<void> f, String key, RegisterError e) =>
      expectLater(
        f,
        throwsA(
          isA<RegisterValidationException>().having(
            (x) => x.errors[key],
            key,
            e,
          ),
        ),
      );

  Future<void> take(int quantity, {String container = 'c1'}) => g.start(
    StartRequest(
      stepId: 'p1-1',
      staffId: 's1',
      containerId: container,
      quantity: quantity,
    ),
  );

  test('最初の工程の候補は、同じ注文の材料。引当あり → 数量の多い順。取り出せないものは理由つき', () async {
    final d = await g.startDefaults('p1-1');
    expect(d.containers.first.id, 'c2', reason: '引当があるものが先(c1 は数量が多いが引当なし)');
    expect(d.defaultContainerId, 'c2');
    expect(d.containers.where((c) => c.available).map((c) => c.id), [
      'c2',
      'c1',
    ]);
    final c3 = d.containers.firstWhere((c) => c.id == 'c3');
    expect(c3.available, isFalse);
    expect(c3.unavailableReason, isNotEmpty);
    expect(
      d.containers.firstWhere((c) => c.id == 'c4').unavailableReason,
      '在庫がありません',
    );
    expect(d.remaining, 100);
  });

  test('検索語でコンテナを絞る', () async {
    expect((await g.containers('p1-1', query: 'a棚')).map((c) => c.id).toSet(), {
      'c1',
      'c2',
    });
    expect(await g.containers('p1-1', query: 'zzz'), isEmpty);
  });

  test('開始: コンテナから払い出し、計画の残りは実施中の取り出し数量ぶん減る', () async {
    final o = await g.start(
      const StartRequest(
        stepId: 'p1-1',
        staffId: 's2',
        containerId: 'c2',
        quantity: 70,
      ),
    );
    expect(o.started, isTrue);
    expect(o.quantity, 70);
    expect(o.round, 1);
    final d = await g.startDefaults('p1-2');
    expect(d.defaultStaffId, 's2', reason: '前回の担当者が既定');
    expect(d.remaining, 30);
    expect(
      (await g.containers('p1-1')).firstWhere((c) => c.id == 'c2').quantity,
      10,
    );
    expect((await g.plans()).first.steps.first.inProgress, isTrue);
  });

  test('開始の検証: 在庫・計画の残り・取り出せないコンテナ・実施中', () async {
    await expectInvalid(
      take(81, container: 'c2'),
      'quantity',
      RegisterError.overStock,
    );
    await expectInvalid(
      take(0, container: 'c2'),
      'quantity',
      RegisterError.notPositive,
    );
    await expectInvalid(
      take(1, container: 'c3'),
      'container',
      RegisterError.notAvailable,
    );
    await take(50);
    await expectInvalid(
      take(51, container: 'c2'),
      'quantity',
      RegisterError.overRemaining,
    );
    await expectLater(
      take(1, container: 'c2'),
      throwsA(isA<RegisterFailedException>()),
    );
  });

  test('終了: 完了数量は取り出した数量まで。差が無ければそのまま払い出し、次の工程の候補になる', () async {
    await take(50);
    await expectInvalid(
      g.finish(
        const FinishRequest(
          stepId: 'p1-1',
          doneQuantity: 51,
          destinationContainerId: 'c1',
        ),
      ),
      'done',
      RegisterError.overTaken,
    );
    final o = await g.finish(
      const FinishRequest(
        stepId: 'p1-1',
        doneQuantity: 50,
        destinationContainerId: 'c1',
      ),
    );
    expect(o.started, isFalse);
    expect(o.quantity, 50);
    expect(o.returnedQuantity, 0);
    final d = await g.startDefaults('p1-2');
    expect(d.defaultContainerId, 'c1');
    expect(d.containers.firstWhere((c) => c.id == 'c1').quantity, 120);
  });

  test('少ないときは意図的か不適合かを選ぶ。意図的は差を返し、次の開始は引継ぎ', () async {
    await take(60);
    await expectInvalid(
      g.finish(
        const FinishRequest(
          stepId: 'p1-1',
          doneQuantity: 40,
          destinationContainerId: 'c1',
        ),
      ),
      'shortfall',
      RegisterError.required,
    );
    await expectInvalid(
      g.finish(
        const FinishRequest(
          stepId: 'p1-1',
          doneQuantity: 40,
          destinationContainerId: 'c1',
          intentional: true,
        ),
      ),
      'intentionalReason',
      RegisterError.reasonRequired,
    );
    final o = await g.finish(
      const FinishRequest(
        stepId: 'p1-1',
        doneQuantity: 40,
        destinationContainerId: 'c1',
        intentional: true,
        intentionalReasonId: 'i1',
      ),
    );
    expect(o.returnedQuantity, 20);
    expect(o.returnedContainerName, 'C-001');
    await take(5);
    expect((await g.plans()).first.steps.first.latest!.handover, isTrue);
  });

  test('不適合は工程異常: 数量・理由・コンテナが揃うと登録し、満たない差は払出元へ返す', () async {
    await take(60);
    await expectInvalid(
      g.finish(
        const FinishRequest(
          stepId: 'p1-1',
          doneQuantity: 40,
          destinationContainerId: 'c1',
          intentional: false,
          defectQuantity: 21,
          defectReasonId: 'd1',
          defectContainerId: 'c5',
        ),
      ),
      'defectQuantity',
      RegisterError.overShortfall,
    );
    final o = await g.finish(
      const FinishRequest(
        stepId: 'p1-1',
        doneQuantity: 40,
        destinationContainerId: 'c1',
        intentional: false,
        defectQuantity: 15,
        defectReasonId: 'd1',
        defectContainerId: 'c5',
      ),
    );
    expect(o.defectNo, isNotNull);
    expect(o.defectQuantity, 15);
    expect(o.defectContainerName, 'C-005');
    expect(o.returnedQuantity, 5);
    expect((await g.plans()).first.steps.first.latest!.defectQuantity, 15);
  });

  test('最終工程の完了数量は生産計画に積まれる。計画の数量ぶん終えると工程は完了', () async {
    Future<void> run(String step) async {
      await g.start(
        StartRequest(
          stepId: step,
          staffId: 's1',
          containerId: 'c3',
          quantity: 60,
        ),
      );
    }

    await run('p2-1');
    await g.finish(
      const FinishRequest(
        stepId: 'p2-1',
        doneQuantity: 60,
        destinationContainerId: 'c3',
      ),
    );
    var plan = (await g.plans()).firstWhere((p) => p.id == 'p2');
    expect(plan.steps.first.completed, isTrue);
    expect(plan.completedQuantity, 0, reason: '最終工程ではない');
    await run('p2-2');
    final o = await g.finish(
      const FinishRequest(
        stepId: 'p2-2',
        doneQuantity: 60,
        destinationContainerId: 'c3',
      ),
    );
    expect(o.stepCompleted, isTrue);
    plan = (await g.plans()).firstWhere((p) => p.id == 'p2');
    expect(plan.completedQuantity, 60);
  });

  test('失敗したときは、登録せず、同じ入力で再試行できる', () async {
    g.failNext = true;
    const r = StartRequest(
      stepId: 'p1-1',
      staffId: 's1',
      containerId: 'c2',
      quantity: 10,
    );
    await expectLater(g.start(r), throwsA(isA<RegisterFailedException>()));
    expect((await g.plans()).first.steps.first.results, isEmpty);
    expect((await g.start(r)).started, isTrue);
  });

  test('終了の前提: 実施中の実績が無ければ失敗', () async {
    await expectLater(
      g.finishContext('p1-1'),
      throwsA(isA<RegisterFailedException>()),
    );
    await take(30);
    final c = await g.finishContext('p1-1');
    expect(c.taken, 30);
    expect(c.sourceContainerName, 'C-001');
  });
}
