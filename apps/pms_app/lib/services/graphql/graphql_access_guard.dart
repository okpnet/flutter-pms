import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_graphql/pms_graphql.dart' show SessionUnavailableException;

/// GraphQL にアクセスする前の確認。通信のたびに、サーバーへ送る前に呼ぶ。
///
/// 1. メンテナンスサーバーの情報を確認し、メンテナンス中なら中断して、メンテナンスのページへ向ける
/// 2. ユーザーのセッションを評価し、切れていれば中断して、セッション切れのページへ向ける
///    (ページはログインへの遷移を促す)
///
/// 中断は [SessionUnavailableException] を投げる(通信しない)。メンテナンス中は `transient`(やり直せる)、
/// セッション切れ・ログアウト中は `transient` でない。確認(2つの問い合わせ)は、[minInterval] の間に
/// 通ったものは省く(1画面で続けて呼ばれても、サーバーへ毎回問い合わせない)。中断したときは省かない。
///
/// パターン: Guard(Chain of Responsibility の前段。確認 → 通信)
class GraphqlAccessGuard {
  GraphqlAccessGuard({
    required this.session,
    required this.onMaintenance,
    required this.onSessionExpired,
    this.minInterval = const Duration(seconds: 15),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  /// メンテナンスとセッションの確認(アプリの `pageSessionMediatorProvider`)。
  final IPageSessionMediator session;

  /// メンテナンス中と分かったときの遷移(メンテナンスのページへ)。
  final void Function() onMaintenance;

  /// セッション切れと分かったときの遷移(セッション切れのページへ)。
  final void Function() onSessionExpired;

  final Duration minInterval;
  final DateTime Function() _clock;
  DateTime? _lastPassed;

  Future<void> ensure() async {
    final last = _lastPassed;
    if (last != null && _clock().difference(last) < minInterval) return;
    final status = await session.refresh();
    switch (status) {
      case PageSessionStatus.maintenance:
        _lastPassed = null;
        onMaintenance();
        throw const SessionUnavailableException(
          transient: true,
          message: 'under maintenance',
        );
      case PageSessionStatus.expired:
        _lastPassed = null;
        onSessionExpired();
        throw const SessionUnavailableException(message: 'session expired');
      case PageSessionStatus.signedOut:
        _lastPassed = null;
        throw const SessionUnavailableException(message: 'signed out');
      case PageSessionStatus.valid:
      case PageSessionStatus.unknown:
        // 不明(通信できないだけ)は止めない。トークンの取得が失敗すれば、そこで transient として扱う
        _lastPassed = status == PageSessionStatus.valid ? _clock() : null;
    }
  }
}
