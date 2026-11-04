import 'package:feature_shared/feature_shared.dart';

import 'backstage_settings.dart';

/// 値の出どころ。
enum BackstageSource { launch, stored, asset, none }

/// 起動時の値(`--dart-define`)。アプリが `String.fromEnvironment` などで作って渡す。空は「指定なし」。
class BackstageLaunch {
  const BackstageLaunch({
    this.isChangeUserImage,
    this.graphqlUrl = '',
    this.pocketbaseUrl = '',
    this.maintenanceUrl = '',
    this.logLevel = '',
    this.sidebarIconOnly,
  });

  final bool? isChangeUserImage;
  final String graphqlUrl;
  final String pocketbaseUrl;
  final String maintenanceUrl;
  final String logLevel;
  final bool? sidebarIconOnly;

  BackstageSettings toSettings() => BackstageSettings(
    isChangeUserImage: isChangeUserImage,
    graphqlUrl: graphqlUrl.isEmpty ? null : graphqlUrl,
    pocketbaseUrl: pocketbaseUrl.isEmpty ? null : pocketbaseUrl,
    maintenanceUrl: maintenanceUrl.isEmpty ? null : maintenanceUrl,
    logLevel: logLevel.isEmpty ? null : logLevel,
    sidebarIconOnly: sidebarIconOnly,
  );
}

/// 値の優先順位(高い順): 起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値。
///
/// 検証に通らない値(不正な URL・知らないログレベル)は、無いものとして次の優先順位へ進む
/// (壊れた保存値・誤った起動時の値でアプリを止めない)。
class BackstageResolver {
  const BackstageResolver({required this.launch, this.stored, this.defaults});

  final BackstageSettings launch;
  final BackstageSettings? stored;
  final BackstageSettings? defaults;

  (T?, BackstageSource) _pick<T>(
    T? Function(BackstageSettings) read,
    bool Function(T) ok,
  ) {
    const sources = [
      BackstageSource.launch,
      BackstageSource.stored,
      BackstageSource.asset,
    ];
    final layers = [launch, stored, defaults];
    for (var i = 0; i < layers.length; i++) {
      final layer = layers[i];
      if (layer == null) continue;
      final v = read(layer);
      if (v != null && ok(v)) return (v, sources[i]);
    }
    return (null, BackstageSource.none);
  }

  static bool _any(Object _) => true;
  static bool _url(String v) => BackstageUrlRules.check(v) == null;
  static bool _level(String v) => backstageLogLevels.contains(v);

  (Object?, BackstageSource) _of(BackstageField field) => switch (field) {
    BackstageField.isChangeUserImage => _pick<bool>(
      (s) => s.isChangeUserImage,
      _any,
    ),
    BackstageField.graphqlUrl => _pick<String>((s) => s.graphqlUrl, _url),
    BackstageField.pocketbaseUrl => _pick<String>((s) => s.pocketbaseUrl, _url),
    BackstageField.maintenanceUrl => _pick<String>(
      (s) => s.maintenanceUrl,
      _url,
    ),
    BackstageField.logLevel => _pick<String>((s) => s.logLevel, _level),
    BackstageField.sidebarIconOnly => _pick<bool>(
      (s) => s.sidebarIconOnly,
      _any,
    ),
  };

  /// 項目ごとの出どころ(画面が「起動時の指定」などを表示する)。
  BackstageSource sourceOf(BackstageField field) => _of(field).$2;

  BackstageValues resolve() => BackstageValues(
    isChangeUserImage: _of(BackstageField.isChangeUserImage).$1 as bool?,
    graphqlUrl: _of(BackstageField.graphqlUrl).$1 as String?,
    pocketbaseUrl: _of(BackstageField.pocketbaseUrl).$1 as String?,
    maintenanceUrl: _of(BackstageField.maintenanceUrl).$1 as String?,
    logLevel: _of(BackstageField.logLevel).$1 as String?,
    sidebarIconOnly: _of(BackstageField.sidebarIconOnly).$1 as bool?,
  );
}
