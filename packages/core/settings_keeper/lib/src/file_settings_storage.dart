import 'dart:convert';
import 'dart:io';

import 'settings_memento.dart';
import 'settings_storage.dart';

/// 設定1件を [directory] の `<key>.json` に保存する [SettingsStorage]。
///
/// 書き込みは一時ファイルへ書いてから置き換えるため、途中で止まっても元のファイルは壊れない。
/// [directory] はアプリが決める(例: アプリのサポートフォルダ)。無ければ作る。
class FileSettingsStorage implements SettingsStorage {
  FileSettingsStorage(this.directory);

  final Directory directory;

  File _file(String key) {
    validateSettingsKey(key);
    return File('${directory.path}${Platform.pathSeparator}$key.json');
  }

  @override
  Future<SettingsMemento?> read(String key) async {
    final file = _file(key);
    try {
      if (!await file.exists()) return null;
      final json = jsonDecode(await file.readAsString());
      if (json is! Map) throw const FormatException('JSONのオブジェクトではありません');
      return SettingsMemento.fromJson(Map<String, Object?>.from(json));
    } catch (e) {
      throw SettingsStorageException('設定を読めません', key: key, cause: e);
    }
  }

  @override
  Future<void> write(SettingsMemento memento) async {
    final file = _file(memento.key);
    final temp = File('${file.path}.tmp');
    try {
      await directory.create(recursive: true);
      await temp.writeAsString(jsonEncode(memento.toJson()), flush: true);
      await temp.rename(file.path);
    } catch (e) {
      throw SettingsStorageException('設定を書き込めません', key: memento.key, cause: e);
    }
  }

  @override
  Future<void> delete(String key) async {
    final file = _file(key);
    try {
      if (await file.exists()) await file.delete();
    } catch (e) {
      throw SettingsStorageException('設定を削除できません', key: key, cause: e);
    }
  }
}
