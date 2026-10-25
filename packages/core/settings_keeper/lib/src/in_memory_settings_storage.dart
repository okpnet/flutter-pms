import 'settings_memento.dart';
import 'settings_storage.dart';

/// メモリにだけ保存する [SettingsStorage]。アプリを閉じると消える。テストや未設定時の既定。
class InMemorySettingsStorage implements SettingsStorage {
  final _store = <String, Map<String, Object?>>{};

  @override
  Future<SettingsMemento?> read(String key) async {
    validateSettingsKey(key);
    final json = _store[key];
    return json == null ? null : SettingsMemento.fromJson(json);
  }

  @override
  Future<void> write(SettingsMemento memento) async {
    validateSettingsKey(memento.key);
    _store[memento.key] = memento.toJson();
  }

  @override
  Future<void> delete(String key) async {
    validateSettingsKey(key);
    _store.remove(key);
  }
}
