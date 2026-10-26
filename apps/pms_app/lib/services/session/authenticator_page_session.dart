import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_authenticator/auth_controller.dart' as auth;

import '../../imports.dart';

/// セッション確認(page_mediator_extension)の、認証(pms_authenticator)の実装。
///
/// ページの切り替え・更新のタイミング([refresh])で、トークンの有効期限を確認し、
/// 切れていれば更新する。認証がまだ初期化されていない(ログインしていない)ときは、
/// 例外にせず、ログアウトまたは不明として返す。
class AuthenticatorPageSession implements IPageSessionMediator {
  AuthenticatorPageSession(this._ref);

  final Ref _ref;

  PageSessionStatus _map(auth.AuthStateType state) => switch (state) {
    auth.AuthStateType.authenticated => PageSessionStatus.valid,
    auth.AuthStateType.expired => PageSessionStatus.expired,
    auth.AuthStateType.signedOut => PageSessionStatus.signedOut,
    auth.AuthStateType.fail => PageSessionStatus.unknown,
  };

  @override
  Future<PageSessionStatus> check() async =>
      _map(_ref.read(auth.authControllerProvider));

  @override
  Future<PageSessionStatus> refresh() async {
    final controller = _ref.read(auth.authControllerProvider.notifier);
    // ログインしていない(認証が未初期化)ときは、確認する通信が無い
    if (!controller.isInitialized) return PageSessionStatus.signedOut;
    try {
      if (await controller.checkAndApplyExpiration()) {
        await controller.refreshToken();
      }
    } catch (e, s) {
      _ref
          .read(loggerProvider)
          .warn('[pms_app] セッションの確認に失敗しました', ex: e, trace: s);
      return PageSessionStatus.unknown;
    }
    return _map(_ref.read(auth.authControllerProvider));
  }

  @override
  Map<String, Object?> toJson() => {'type': 'AuthenticatorPageSession'};
}
