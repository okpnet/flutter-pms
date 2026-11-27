import 'package:approval_stamp/approval_stamp.dart' show AppSettings;
import 'package:document_settings/document_settings.dart'
    show documentSettingsGatewayProvider, savedAppSettingsProvider;
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:system/system.dart'
    show
        ExchangeSettings,
        exchangeFetchAllowedProvider,
        exchangeLockSaverProvider,
        exchangeSettingsProvider;

import '../graphql/graphql_overrides.dart' show pocketbaseEnabledProvider;
import '../session/pocketbase_user_identity.dart';

/// 為替レートの自動取得を、アプリの設定と権限で差し込む。
///
/// - 取得元(優先順位つきで 2〜3 件。ECB・Frankfurter など)は、アプリの設定(`info_app.settings` の JSON の `exchange`)から読む。
///   無い・不正は標準(ECB → Frankfurter/ecb)。設定の画面で保存すると読み直す。
/// - 実行できるのは、設定を開ける管理者だけ。PocketBase に接続しない環境(判定する元が無い)は実行できる。
/// - 確定日(`exchange.lockedUntil`)は、アプリの設定へ保存する(`documentSettingsGatewayProvider`。ほかの設定は消さない)。保存すると読み直す。
///   DB が、前へ戻す・未来・不正な日付を止める(`CUR03`・`CUR04`)。確定できるのは自動取得と同じく管理者だけ。
List<Override> exchangeOverrides() => [
  exchangeSettingsProvider.overrideWith((ref) {
    final settings = ref.watch(savedAppSettingsProvider).value;
    return ExchangeSettings.fromJson(settings?.extra['exchange']);
  }),
  exchangeFetchAllowedProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }),
  // 為替レートの確定日の保存(設定の JSON の `exchange.lockedUntil`。ほかのキーはそのまま残す)
  exchangeLockSaverProvider.overrideWith((ref) {
    return (String date) async {
      final gateway = ref.read(documentSettingsGatewayProvider);
      final json = AppSettings.parse(await gateway.load()).toJson();
      final exchange = {
        ...?(json['exchange'] is Map
            ? (json['exchange'] as Map).cast<String, dynamic>()
            : null),
        'lockedUntil': date,
      };
      await gateway.save({...json, 'exchange': exchange});
      ref.invalidate(savedAppSettingsProvider);
    };
  }),
];
