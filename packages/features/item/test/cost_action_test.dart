import 'package:item/item.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _Bus implements CommandBus {
  final List<Object> executed = [];

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    executed.add(command);
    return null as R;
  }
}

void main() {
  const module = ItemModule();

  test('item の台帳に、行の操作「cost」がある(機能が処理する操作)', () {
    final d = module.definitions.firstWhere((d) => d.key == 'item');
    final a = d.rowActions.firstWhere((a) => a.key == 'cost');
    expect(a.target, isEmpty);
  });

  testWidgets('行の操作で、標準原価の一覧を、その品目(行の ID)で絞って開く。ほかの操作は処理しない', (tester) async {
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
    const record = EntityRecord(id: 'i1', values: {});
    expect(await module.handleRowAction(ref, const RowAction(key: 'other', target: ''), record), isFalse);
    expect(bus.executed, isEmpty);
    expect(await module.handleRowAction(ref, const RowAction(key: 'cost', target: ''), record), isTrue);
    final d = bus.executed.single as EntityListDestination;
    expect(d.entityKey, 'costunit');
    expect(d.filter, {'item': 'i1'});
  });
}
