import 'dart:convert';

import 'package:settings_keeper/settings_keeper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 設定1件を`shared_preferences`にJSON文字列で保存する[SettingsStorage]。
/// Windowsでは`%APPDATA%`以下のファイルになる。識別子の前に[prefix]を付けて他の値と区別する。
///
/// パターン: Strategy(保存の手段。アプリが`settingsStorageProvider`へ差し込む)
class SharedPreferencesSettingsStorage implements SettingsStorage {
  SharedPreferencesSettingsStorage(this._preferences);

  static const prefix = 'settings_keeper.';

  final SharedPreferencesAsync _preferences;

  String _name(String key) {
    validateSettingsKey(key);
    return '$prefix$key';
  }

  @override
  Future<SettingsMemento?> read(String key) async {
    final name = _name(key);
    try {
      final text = await _preferences.getString(name);
      if (text == null) return null;
      final json = jsonDecode(text);
      if (json is! Map) throw const FormatException('JSONのオブジェクトではありません');
      return SettingsMemento.fromJson(Map<String, Object?>.from(json));
    } catch (e) {
      throw SettingsStorageException('設定を読めません', key: key, cause: e);
    }
  }

  @override
  Future<void> write(SettingsMemento memento) async {
    final name = _name(memento.key);
    try {
      await _preferences.setString(name, jsonEncode(memento.toJson()));
    } catch (e) {
      throw SettingsStorageException('設定を書き込めません', key: memento.key, cause: e);
    }
  }

  @override
  Future<void> delete(String key) async {
    final name = _name(key);
    try {
      await _preferences.remove(name);
    } catch (e) {
      throw SettingsStorageException('設定を削除できません', key: key, cause: e);
    }
  }
}
