import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

import 'account_flow.dart';
import 'auth_mode.dart';
import 'secure_token_store.dart';

/// ログアウト。PocketBase のセッション(メモリ上のトークンと GraphQL 用の JWT)と、保管庫のログイン情報を
/// 破棄し、ログインユーザーの表示と、画面をまたぐ入力(コード・ユーザーID)を消す。
///
/// 失敗しても残りの後始末を続け、例外は投げない(ログアウトできなかったことを画面で止めないため。
/// 失敗は `[auth_files]` 付きでログに残す。トークンは出さない)。何度呼んでも安全。
/// PocketBase のトークンはサーバーで失効させられないため、端末のログイン情報を消すことで
/// ログアウトとする(全端末を止めるときは管理者がパスワードを変更する)。
///
/// 認証サーバーの接続先が未設定([AuthMode.unconfigured])のときは、セッションも保管庫も無いので、
/// ログインユーザーの表示と入力を消すだけ。
Future<void> authFilesSignOut(Ref ref) async {
  final logger = ref.read(loggerProvider);
  Future<void> step(String name, Future<void> Function() body) async {
    try {
      await body();
    } catch (e, s) {
      logger.error('[auth_files] ログアウトの後始末に失敗しました: $name', ex: e, trace: s);
    }
  }

  if (ref.read(authModeProvider) == AuthMode.server) {
    await step('セッション', () => ref.read(sessionServiceProvider).logout());
    await step('保管庫', () => ref.read(tokenStoreProvider).delete());
  }
  await step('入力', () async {
    ref.read(accountFlowProvider.notifier).clear();
    ref.read(authFlashProvider.notifier).clear();
  });
  await step('表示', () async => ref.read(userSummaryProvider.notifier).logout());
}

/// ログアウトの実体。ログアウト画面が、確認のあとに1回呼ぶ。既定は [authFilesSignOut]。
/// テストでは、失敗する実装などに上書きする(失敗しても、ログアウト画面は完了を表示する)。
final signOutProvider = Provider<Future<void> Function()>(
  (ref) =>
      () => authFilesSignOut(ref),
);
