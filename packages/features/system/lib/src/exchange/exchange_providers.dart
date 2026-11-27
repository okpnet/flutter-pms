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

/// 為替レートの操作(登録・変更・自動取得・確定)ができるか(管理者)。アプリが、管理者かどうかで上書きする(既定はできる)。
/// DB も、管理者でない一般ユーザーの登録・変更を止める(`ADM01`)。
final exchangeFetchAllowedProvider = Provider<bool>((ref) => true);

/// 為替レートの確定日(`yyyy-MM-dd`)を保存する窓口。null のときは、確定の操作を出さない(既定)。
/// アプリが、アプリの設定(`info_app.settings` の `exchange.lockedUntil`)への保存で差し込む。DB が、前へ戻す・未来・不正な日付を止める。
final exchangeLockSaverProvider = Provider<Future<void> Function(String date)?>(
  (ref) => null,
);
