import 'package:baton_lib/baton_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quality/quality_api.dart';
import 'package:purchasing/purchasing.dart';

class _Bus implements CommandBus {
  final List<Object> executed = [];

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    executed.add(command);
    return null as R;
  }
}

void main() {
  const module = PurchasingModule();

  test('purchaserec の台帳に、行の操作「complaint」がある(生成物ではなく、モジュールが足す)', () {
    final d = module.definitions.firstWhere((d) => d.key == 'purchaserec');
    expect(d.rowActions.map((a) => a.key), contains('complaint'));
    expect(d.rowActions.firstWhere((a) => a.key == 'complaint').target, isEmpty); // 機能が処理する操作
  });

  testWidgets('行の操作で、異常の登録の画面へ、種類(purchaseRec)と対象の ID・表示名を渡して進む。ほかの操作は処理しない', (tester) async {
    final bus = _Bus();
    late WidgetRef ref;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [commandBusProvider.overrideWithValue(bus)],
        child: Consumer(builder: (context, r, _) {
          ref = r;
          return const SizedBox();
        }),
      ),
    );
    final record = const EntityRecord(id: 'r1', values: {'receive_at': '2026-11-20'});
    expect(await module.handleRowAction(ref, const RowAction(key: 'other', target: ''), record), isFalse);
    expect(bus.executed, isEmpty);
    expect(await module.handleRowAction(ref, const RowAction(key: 'complaint', target: ''), record), isTrue);
    final d = bus.executed.single as ComplaintRegisterDestination;
    expect(d.target, 'purchaseRec');
    expect(d.targetId, 'r1');
    expect(d.targetLabel, '2026-11-20');
  });
}
