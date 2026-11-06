import 'dart:convert';

import 'package:feature_shared/feature_shared.dart' show BackstageValues;

import 'entry/entry_hash.dart';
import 'settings/backstage_resolver.dart';
import 'settings/backstage_settings.dart';
import 'settings/backstage_store.dart';

/// 起動時に読み込んだ裏設定の材料(アプリが `runApp` の前に作り、Provider へ差し込む)。
///
/// URL・ログのレベルは、アプリの起動時(接続・ログの作成)に使うため、Provider が使えるようになる前に
/// 値を決める必要がある。そのため、材料の読み込みと解決を `runApp` の前に行える形にしている。
class BackstageBoot {
  const BackstageBoot({
    required this.store,
    this.launch = const BackstageSettings(),
    this.defaults,
    this.entry,
    this.stored,
    this.encryptedConfig,
  });

  /// 材料なし(入口なし・既定値なし・メモリ上の保存先)。テスト・`example` 用。
  factory BackstageBoot.empty() =>
      BackstageBoot(store: InMemoryBackstageStore());

  /// 保存先(保管庫)。
  final IBackstageStore store;

  /// 起動時の値(`--dart-define`)。最優先。
  final BackstageSettings launch;

  /// アセットの既定値。
  final BackstageSettings? defaults;

  /// 入口の条件のハッシュ(アセットの設定)。無ければ入口なし。
  final EntryHash? entry;

  /// 保管庫から読んだ裏設定。
  final BackstageSettings? stored;

  /// 暗号化した裏設定(`tools/config_generator` の出力)の本文。入口のパスワードで復号する。無ければ null。
  final String? encryptedConfig;

  /// 保存先だけを替える(ログの作成のあとで、ログつきの保管庫へ)。
  BackstageBoot withStore(IBackstageStore next) => BackstageBoot(
    store: next,
    launch: launch,
    defaults: defaults,
    entry: entry,
    stored: stored,
    encryptedConfig: encryptedConfig,
  );

  BackstageResolver get resolver =>
      BackstageResolver(launch: launch, stored: stored, defaults: defaults);

  /// 解決済みの値(起動時の接続・ログの作成に使う)。
  BackstageValues get values => resolver.resolve();
}

/// アセットの設定(JSON)。
/// ```json
/// {"entry": {"salt": "...", "iterations": 100000, "hash": "..."},
///  "defaults": {"isChangeUserImage": false, "logLevel": "info"}}
/// ```
class BackstageAssetConfig {
  const BackstageAssetConfig({this.entry, this.defaults});

  final EntryHash? entry;
  final BackstageSettings? defaults;

  /// 読めない・無いときは空の設定(入口なし・既定値なし)。アプリは止めない。
  factory BackstageAssetConfig.parse(String? json) {
    if (json == null || json.trim().isEmpty) return const BackstageAssetConfig();
    try {
      final decoded = jsonDecode(json);
      if (decoded is! Map) return const BackstageAssetConfig();
      final defaults = decoded['defaults'];
      return BackstageAssetConfig(
        entry: EntryHash.tryParse(decoded['entry']),
        defaults: defaults is Map
            ? BackstageSettings.fromJson(Map<String, Object?>.from(defaults))
            : null,
      );
    } on FormatException {
      return const BackstageAssetConfig();
    }
  }
}

/// 裏設定の材料を読み込む。
///
/// - [assetJson]: アセットの設定(`rootBundle.loadString` の結果。無ければ null)
/// - [store]: 保管庫(読めなければ「保存なし」)
/// - [launch]: 起動時の値(`--dart-define`)
Future<BackstageBoot> loadBackstageBoot({
  required IBackstageStore store,
  String? assetJson,
  BackstageLaunch launch = const BackstageLaunch(),
  String? encryptedConfigJson,
}) async {
  final asset = BackstageAssetConfig.parse(assetJson);
  return BackstageBoot(
    store: store,
    launch: launch.toSettings(),
    defaults: asset.defaults,
    entry: asset.entry,
    stored: BackstageSettings.tryParse(await store.read()),
    encryptedConfig: encryptedConfigJson,
  );
}
