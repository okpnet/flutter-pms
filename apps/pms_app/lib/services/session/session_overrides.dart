import 'package:app_core/app_core_api.dart';
import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

import '../../imports.dart';
import '../graphql/graphql_overrides.dart' show pocketbaseEnabledProvider;
import 'authenticator_page_session.dart';
import 'pocketbase_page_session.dart';

/// メンテナンスの確認先(サーバーの状態を返す URL)。ビルド時に
/// `--dart-define=MAINTENANCE_URL=https://.../health` で渡す。未指定のときは、常に利用可能とする。
const maintenanceUrl = String.fromEnvironment('MAINTENANCE_URL');

/// ページ用の拡張(page_mediator_extension)・メンテナンスの実体(アプリが差し込む)。
///
/// - メンテナンスの確認: [maintenanceUrl] があれば HTTP 503 をメンテナンス中とする確認、無ければ常に利用可能
/// - セッション確認: メンテナンスの確認を先に行い、使えるときだけ認証を確認する
///   (ページの切り替え・更新で呼ばれる。ログイン中の処理でも、ここでメンテナンスへ切り替わる)。
///   認証は、PocketBase を使うとき(`POCKETBASE_URL` の指定あり)は pbapi([PocketBasePageSession])、
///   使わないときは pms_authenticator([AuthenticatorPageSession])
List<Override> sessionOverrides({String url = maintenanceUrl}) => [
  if (url.isNotEmpty)
    maintenanceCheckerProvider.overrideWith(
      (ref) => HttpMaintenanceChecker(
        uri: Uri.parse(url),
        logger: ref.watch(loggerProvider),
      ),
    ),
  // ログアウト: PocketBase を使うとき、セッションと保管庫のログイン情報を破棄し、ボタンはログイン画面へ
  // (使わないときは、これまでの仮の動き)
  signOutProvider.overrideWith(
    (ref) => ref.read(pocketbaseEnabledProvider)
        ? () => authFilesSignOut(ref)
        : () async {},
  ),
  signInDestinationProvider.overrideWith(
    (ref) =>
        ref.read(pocketbaseEnabledProvider) ? const LoginDestination() : null,
  ),
  pageSessionMediatorProvider.overrideWith(
    (ref) => MaintenanceAwarePageSession(
      refreshMaintenance: () async =>
          (await ref.read(maintenanceStatusProvider.notifier).refresh())
              .isUnderMaintenance,
      inner: ref.read(pocketbaseEnabledProvider)
          ? PocketBasePageSession(ref)
          : AuthenticatorPageSession(ref),
    ),
  ),
];
