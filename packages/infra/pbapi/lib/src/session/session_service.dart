import 'package:pocketbase/pocketbase.dart';

import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import 'auth_session.dart';

/// ログイン・ログアウトとセッションの確認。
class SessionService {
  SessionService(this._connection);

  final PbConnection _connection;
  DateTime? _lastVerified;

  PocketBase get _pb => _connection.pb;

  /// 保存済みのセッション。ログインしていない・期限切れなら null(通信しない)。
  AuthSession? get current => AuthSession.fromAuthStore(_pb.authStore);

  /// 「ユーザーIDまたはEメール」とパスワードでログインし、トークンを含むセッションを返す。
  /// 判定はサーバー側で行う。
  ///
  /// [PbException]: ID/パスワードの不一致は [PbFailureKind.invalidCredentials]、
  /// 試行が多すぎれば [PbFailureKind.rateLimited]。
  Future<AuthSession> login(String identity, String password) async {
    await _connection.guard(
      'login',
      () => _pb.collection('users').authWithPassword(identity.trim(), password),
      badRequestAs: PbFailureKind.invalidCredentials,
    );
    _lastVerified = DateTime.now();
    return current!;
  }

  /// この端末のトークンを破棄する。PocketBase のトークンはサーバーで失効させられないため、
  /// 全端末を止めたいときは管理者がパスワードを変更する。
  Future<void> logout() async {
    _pb.authStore.clear();
    _lastVerified = null;
  }

  /// セッションが有効かをサーバーに問い合わせ(トークンの検証と延長)、有効なら true。
  /// 画面の切り替え・保存・呼び出しの直前に呼ぶ。
  ///
  /// [minInterval] 内に確認済みなら問い合わせを省く(既定は毎回)。
  /// 無効(期限切れ・失効)ならトークンを破棄して false を返す。
  /// 通信できないときは [PbException]([PbFailureKind.network])を投げる(有効か無効かは決めない)。
  Future<bool> ensureSession({Duration minInterval = Duration.zero}) async {
    if (!_pb.authStore.isValid) {
      _pb.authStore.clear();
      return false;
    }
    final last = _lastVerified;
    if (last != null && DateTime.now().difference(last) < minInterval) {
      return true;
    }
    try {
      await _connection.guard(
        'ensureSession',
        () => _pb.collection('users').authRefresh(),
      );
      _lastVerified = DateTime.now();
      return true;
    } on PbException catch (e) {
      if (e.kind == PbFailureKind.unauthorized ||
          e.kind == PbFailureKind.forbidden ||
          e.kind == PbFailureKind.notFound) {
        _pb.authStore.clear();
        _lastVerified = null;
        return false;
      }
      rethrow;
    }
  }

  /// 一定間隔でセッションを確認し、結果を流す。通信できなかった回は何も流さない
  /// (次の間隔でやり直す)。購読をやめると確認も止まる。
  Stream<bool> watch({Duration interval = const Duration(minutes: 5)}) async* {
    while (true) {
      await Future<void>.delayed(interval);
      try {
        yield await ensureSession();
      } on PbException {
        continue;
      }
    }
  }
}
