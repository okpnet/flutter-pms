import 'dart:convert';
import 'dart:io';

import 'package:backstage/backstage.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/services.dart' show rootBundle;
import 'package:logger_provider/logger_provider.dart';

import '../graphql/graphql_overrides.dart' show graphqlUrl;
import '../pocketbase/pocketbase_overrides.dart' show pocketbaseUrl;
import '../session/session_overrides.dart' show maintenanceUrl;

/// アセットの裏設定(入口のハッシュ・既定値)。
const backstageAssetPath = 'assets/backstage.json';

/// 暗号化した裏設定のファイル名。実行ファイル(exe)と同じフォルダに置く(外部から置き換えられる)。
const backstageEncryptedConfigFileName = 'backstage_config.enc.json';

/// デバッグ時にコピーして使う、暗号化した裏設定のアセット(`tools/config_generator` の出力。Git に入れない)。
const backstageDebugEncryptedConfigAsset =
    'assets/debug/backstage_config.enc.json';

/// 暗号化した裏設定の本文を読む。無い・読めないときは null(標準を使う。通知しない)。
/// exe と同じフォルダを先に見る。無ければ、デバッグビルドだけアセットを見る。
Future<String?> loadEncryptedBackstageConfig() async {
  final file = readEncryptedBackstageConfig();
  if (file != null || !kDebugMode) return file;
  try {
    return await rootBundle.loadString(backstageDebugEncryptedConfigAsset);
  } catch (_) {
    return null;
  }
}

/// 暗号化した裏設定の本文を読む。無い・読めないときは null(標準を使う。通知しない)。
String? readEncryptedBackstageConfig() {
  try {
    final dir = File(Platform.resolvedExecutable).parent.path;
    final file = File('$dir${Platform.pathSeparator}$backstageEncryptedConfigFileName');
    return file.existsSync() ? file.readAsStringSync() : null;
  } catch (_) {
    return null;
  }
}

/// 起動時の値(`--dart-define`)。裏設定より優先する。
BackstageLaunch backstageLaunchFromEnvironment() => BackstageLaunch(
  isChangeUserImage: const bool.hasEnvironment('IS_CHANGE_USER_IMAGE')
      ? const bool.fromEnvironment('IS_CHANGE_USER_IMAGE')
      : null,
  graphqlUrl: graphqlUrl,
  pocketbaseUrl: pocketbaseUrl,
  maintenanceUrl: maintenanceUrl,
  logLevel: const String.fromEnvironment('LOG_LEVEL'),
  sidebarIconOnly: const bool.hasEnvironment('SIDEBAR_ICON_ONLY')
      ? const bool.fromEnvironment('SIDEBAR_ICON_ONLY')
      : null,
);

/// 裏設定の材料を読み込む(アセット・保管庫・起動時の値)。ログの作成の前に呼ぶため、保管庫のログは出さない。
Future<BackstageBoot> loadBackstageForStartup({IBackstageStore? store}) async {
  String? asset;
  try {
    asset = await rootBundle.loadString(backstageAssetPath);
  } catch (_) {
    asset = null; // アセットが無くても止めない(入口なし・既定値なし)
  }
  return loadBackstageBoot(
    store: store ?? SecureBackstageStore(),
    assetJson: asset,
    launch: backstageLaunchFromEnvironment(),
    encryptedConfigJson: await loadEncryptedBackstageConfig(),
  );
}

/// ログを作る。レベルは裏設定の値(起動時の値 > 保管庫 > アセットの既定値)。無ければログの設定のまま。
Future<ILoggerProvider> createLoggerWithLevel(
  String assetPath,
  String? level,
) async {
  final source = await rootBundle.loadString(assetPath);
  final map = Map<String, Object?>.from(jsonDecode(source) as Map);
  if (level != null) {
    final logger = Map<String, Object?>.from(
      (map['logger'] as Map?) ?? const {},
    );
    logger['level'] = level;
    map['logger'] = logger;
  }
  return DefaultLoggerProvider.fromMap(map);
}
