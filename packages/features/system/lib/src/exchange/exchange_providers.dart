import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'exchange_settings.dart';
import 'text_fetcher.dart';

/// 為替レートの自動取得の設定。既定は標準(ECB → Frankfurter)。アプリが、アプリの設定(`info_app.settings` の `exchange`)で上書きする。
final exchangeSettingsProvider = Provider<ExchangeSettings>(
  (ref) => ExchangeSettings.standard,
);

/// 通信(URL の本文の取得)。テストで差し替える。
final exchangeTextFetcherProvider = Provider<TextFetcher>(
  (ref) => httpsTextFetcher,
);

/// 自動取得を実行できるか。アプリが、管理者かどうかで上書きする(既定は実行できる)。
final exchangeFetchAllowedProvider = Provider<bool>((ref) => true);
