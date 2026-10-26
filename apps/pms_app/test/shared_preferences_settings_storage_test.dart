import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/settings/shared_preferences_settings_storage.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';

void main() {
  setUp(() {
    SharedPreferencesAsyncPlatform.instance =
        InMemorySharedPreferencesAsync.empty();
  });

  test('保存した設定を読み戻せ、削除できる', () async {
    final storage = SharedPreferencesSettingsStorage(SharedPreferencesAsync());
    expect(await storage.read('user_settings'), isNull);

    await storage.write(
      SettingsMemento(key: 'user_settings', values: {'sidebarIconOnly': true}),
    );
    final read = await storage.read('user_settings');
    expect(read?.values['sidebarIconOnly'], isTrue);

    await storage.delete('user_settings');
    expect(await storage.read('user_settings'), isNull);
  });

  test('壊れた保存は SettingsStorageException', () async {
    await SharedPreferencesAsync().setString(
      '${SharedPreferencesSettingsStorage.prefix}user_settings',
      'not json',
    );
    final storage = SharedPreferencesSettingsStorage(SharedPreferencesAsync());
    expect(
      storage.read('user_settings'),
      throwsA(isA<SettingsStorageException>()),
    );
  });
}
