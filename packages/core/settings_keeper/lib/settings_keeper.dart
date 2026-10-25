/// ローカル設定の保存と復元。
///
/// 設定の持ち主([SettingsOriginator])が自分の状態を [SettingsMemento] にし、
/// [SettingsKeeper] が [SettingsStorage] を通して保存・復元する。
/// 保存の手段は、アプリが [settingsStorageProvider] を上書きして差し替える。
library;

export 'src/file_settings_storage.dart';
export 'src/in_memory_settings_storage.dart';
export 'src/settings_keeper.dart';
export 'src/settings_memento.dart';
export 'src/settings_originator.dart';
export 'src/settings_providers.dart';
export 'src/settings_storage.dart';
