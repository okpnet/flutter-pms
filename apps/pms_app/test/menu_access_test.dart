import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/access/menu_access.dart';
import 'package:pms_app/services/graphql/graphql_overrides.dart';

void main() {
  test('許可したアクセスパスだけが通る(クエリは無視する)', () {
    final access = MenuAccess.of(['/e/item', '/e/company']);
    expect(access.allows('/e/item'), isTrue);
    expect(access.allows('/e/item?f.x=1'), isTrue);
    expect(access.allows('/e/staff'), isFalse);
    expect(MenuAccess.all.allows('/e/staff'), isTrue);
    expect(MenuAccess.none.allows('/e/item'), isFalse);
  });

  test('PocketBase を使わないとき(判定する元がない)は、すべて許可する', () async {
    final container = ProviderContainer(
      overrides: [pocketbaseEnabledProvider.overrideWithValue(false)],
    );
    addTearDown(container.dispose);
    final access = await container.read(
      menuAccessProvider('/dashboard').future,
    );
    expect(access.allowAll, isTrue);
  });
}
