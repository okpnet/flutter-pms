import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import 'in_memory_settings_storage.dart';
import 'settings_keeper.dart';
import 'settings_storage.dart';

/// 設定の保存手段。既定はメモリだけ(アプリを閉じると消える)。
///
/// アプリは起動時に上書きして、保存の手段を決める。
/// `settingsStorageProvider.overrideWithValue(FileSettingsStorage(dir))`
final settingsStorageProvider = Provider<SettingsStorage>(
  (ref) => InMemorySettingsStorage(),
);

/// [settingsStorageProvider] と [loggerProvider] で組み立てた [SettingsKeeper]。
final settingsKeeperProvider = Provider<SettingsKeeper>(
  (ref) => SettingsKeeper(
    storage: ref.watch(settingsStorageProvider),
    logger: ref.watch(loggerProvider),
  ),
);
