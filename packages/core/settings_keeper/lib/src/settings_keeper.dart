import 'package:logger_provider/logger_provider.dart';

import 'settings_originator.dart';
import 'settings_storage.dart';

/// 設定の保存と復元を行う。
///
/// GoFパターン: Memento の Caretaker。メメントの中身は見ず、[SettingsStorage] に預けて返すだけ。
/// 失敗は例外にせず、ログ(`[settings_keeper]` 接頭辞付き)に残して false を返す。
/// 設定が保存できなくてもアプリは動かし続けるため。
class SettingsKeeper {
  SettingsKeeper({
    required SettingsStorage storage,
    required ILoggerProvider logger,
  }) : _storage = storage,
       _log = logger;

  final SettingsStorage _storage;
  final ILoggerProvider _log;

  /// [originator] の状態を保存する。成功したら true。
  Future<bool> save(SettingsOriginator originator) async {
    final key = originator.settingsKey;
    try {
      await _storage.write(originator.createMemento());
      return true;
    } catch (e, s) {
      _log.error('[settings_keeper] 保存に失敗しました key=$key', ex: e, trace: s);
      return false;
    }
  }

  /// 保存済みの状態を [originator] へ戻す。保存が無い・読めない・戻せない場合は false。
  Future<bool> restore(SettingsOriginator originator) async {
    final key = originator.settingsKey;
    try {
      final memento = await _storage.read(key);
      if (memento == null) return false;
      originator.restoreFrom(memento);
      return true;
    } catch (e, s) {
      _log.error('[settings_keeper] 復元に失敗しました key=$key', ex: e, trace: s);
      return false;
    }
  }

  /// 保存済みの設定を消す。成功したら true。
  Future<bool> clear(String key) async {
    try {
      await _storage.delete(key);
      return true;
    } catch (e, s) {
      _log.error('[settings_keeper] 削除に失敗しました key=$key', ex: e, trace: s);
      return false;
    }
  }
}
