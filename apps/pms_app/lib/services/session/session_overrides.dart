import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

import '../../imports.dart';
import 'authenticator_page_session.dart';

/// メンテナンスの確認先(サーバーの状態を返す URL)。ビルド時に
/// `--dart-define=MAINTENANCE_URL=https://.../health` で渡す。未指定のときは、常に利用可能とする。
const maintenanceUrl = String.fromEnvironment('MAINTENANCE_URL');

/// ページ用の拡張(page_mediator_extension)・メンテナンスの実体(アプリが差し込む)。
///
/// - メンテナンスの確認: [maintenanceUrl] があれば HTTP 503 をメンテナンス中とする確認、無ければ常に利用可能
/// - セッション確認: メンテナンスの確認を先に行い、使えるときだけ認証(pms_authenticator)を確認する
///   (ページの切り替え・更新で呼ばれる。ログイン中の処理でも、ここでメンテナンスへ切り替わる)
List<Override> sessionOverrides({String url = maintenanceUrl}) => [
  if (url.isNotEmpty)
    maintenanceCheckerProvider.overrideWith(
      (ref) => HttpMaintenanceChecker(
        uri: Uri.parse(url),
        logger: ref.watch(loggerProvider),
      ),
    ),
  pageSessionMediatorProvider.overrideWith(
    (ref) => MaintenanceAwarePageSession(
      refreshMaintenance: () async =>
          (await ref.read(maintenanceStatusProvider.notifier).refresh())
              .isUnderMaintenance,
      inner: AuthenticatorPageSession(ref),
    ),
  ),
];
