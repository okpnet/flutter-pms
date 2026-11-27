import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/system.dart';

void main() {
  testWidgets('通貨・為替レートは、システムメニュー(管理者のユーザーメニュー)へ。単位は機能のグループのまま', (tester) async {
    late List<MenuEntry> entries;
    await tester.pumpWidget(
      ProviderScope(
        child: Consumer(
          builder: (context, ref, _) {
            entries = const SystemModule().menuEntries(ref);
            return const SizedBox();
          },
        ),
      ),
    );
    String keyOf(MenuEntry e) => (e.destination as EntityListDestination).entityKey;
    final inSystemMenu = {for (final e in entries.where((e) => e.groupId == systemMenuGroupId)) keyOf(e)};
    expect(inSystemMenu, {'currency', 'exchangerate'});
    final unit = entries.singleWhere((e) => keyOf(e) == 'unit');
    expect(unit.groupId, 'system');
  });
}
