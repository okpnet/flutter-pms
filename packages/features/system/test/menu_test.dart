import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/system.dart';

void main() {
  _canEditTests();

  testWidgets('通貨・為替レートは、システムメニュー(管理者のユーザーメニュー)へ。単位は機能のグループのまま', (
    tester,
  ) async {
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
    String keyOf(MenuEntry e) =>
        (e.destination as EntityListDestination).entityKey;
    final inSystemMenu = {
      for (final e in entries.where((e) => e.groupId == systemMenuGroupId))
        keyOf(e),
    };
    expect(inSystemMenu, {'currency', 'exchangerate'});
    final unit = entries.singleWhere((e) => keyOf(e) == 'unit');
    expect(unit.groupId, 'system');
  });
}

// 為替レートの登録・変更は管理者だけ(DB も ADM01 で止める)。管理者でない人には、台帳は閲覧だけ。
void _canEditTests() {
  testWidgets('為替レートの台帳は、管理者だけが編集できる。単位・通貨は、これまでどおり編集できる', (tester) async {
    late bool Function(String key) canEdit;
    Future<void> pump(bool admin) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [exchangeFetchAllowedProvider.overrideWithValue(admin)],
          child: Consumer(
            builder: (context, ref, _) {
              canEdit = (key) => const SystemModule().listCanEdit(ref, key);
              return const SizedBox();
            },
          ),
        ),
      );
    }

    await pump(false);
    expect(canEdit('exchangerate'), isFalse);
    expect(canEdit('currency'), isTrue);
    expect(canEdit('unit'), isTrue);
    await pump(true);
    expect(canEdit('exchangerate'), isTrue);
  });
}
