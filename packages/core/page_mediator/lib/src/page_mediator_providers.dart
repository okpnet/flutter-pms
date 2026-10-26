import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';

import 'page_data_mediator.dart';
import 'page_session_mediator.dart';
import 'page_settings_mediator.dart';

/// データ取得の窓口。標準の実装は `loggerProvider` を使う。
final pageDataMediatorProvider = Provider<IPageDataMediator>(
  (ref) => PageDataMediator(ref.watch(loggerProvider)),
);

/// 設定の保存の窓口。保存先は `settingsStorageProvider`(settings_keeper)で決まる。
final pageSettingsMediatorProvider = Provider<IPageSettingsMediator>(
  (ref) => PageSettingsMediator(ref.watch(settingsKeeperProvider)),
);

/// セッション確認の窓口。既定は何もしない実装。アプリが認証・メンテナンスの実装へ差し替える。
final pageSessionMediatorProvider = Provider<IPageSessionMediator>(
  (ref) => const NoopPageSessionMediator(),
);
