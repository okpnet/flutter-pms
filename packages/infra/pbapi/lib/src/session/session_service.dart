import 'package:pocketbase/pocketbase.dart';

import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import 'auth_session.dart';
import 'graphql_token.dart';

/// ログイン・ログアウトとセッションの確認。
class SessionService {
  SessionService(this._connection);

  final PbConnection _connection;
  DateTime? _lastVerified;
  GraphqlToken? _graphqlToken;

  PocketBase get _pb => _connection.pb;

  /// 保存済みのセッション。ログインしていない・期限切れなら null(通信しない)。
  AuthSession? get current => AuthSession.fromAuthStore(_pb.authStore);

  /// 「ユーザーIDまたはEメール」とパスワードでログインし、トークンを含むセッションを返す。
  /// 判定はサーバー側で行う。
  ///
  /// [PbException]: ID/パスワードの不一致は [PbFailureKind.invalidCredentials]、
  /// 試行が多すぎれば [PbFailureKind.rateLimited]。
  Future<AuthSession> login(String identity, String password) async {
    try {
      await _connection.guard(
        'login',
        () =>
            _pb.collection('users').authWithPassword(identity.trim(), password),
        badRequestAs: PbFailureKind.invalidCredentials,
      );
    } on PbException catch (e) {
      // 未承認・未有効化・無効のユーザーが正しいパスワードで入ると、サーバーは400ではなく403を返す。
      // 区別するとパスワードが合っていることがわかるため、他の不一致と同じ invalidCredentials にそろえる。
      if (e.kind != PbFailureKind.forbidden) rethrow;
      throw PbException(
        PbFailureKind.invalidCredentials,
        statusCode: e.statusCode,
        operation: e.operation,
        message: e.message,
      );
    }
    // 別のユーザーでログインし直したとき、前のユーザーの JWT(担当者のID)を使い回さない。
    _graphqlToken = null;
    _lastVerified = DateTime.now();
    return current!;
  }

  /// この端末のトークンを破棄する。PocketBase のトークンはサーバーで失効させられないため、
  /// 全端末を止めたいときは管理者がパスワードを変更する。
  Future<void> logout() async {
    _pb.authStore.clear();
    _lastVerified = null;
    _graphqlToken = null;
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
        _graphqlToken = null;
        return false;
      }
      rethrow;
    }
  }

  /// GraphQL サーバー用の短期の JWT を返す。期限の [margin] 前までは取得済みのものを使い回し、
  /// 過ぎていれば取り直す。失敗が続くときは、先に [ensureSession] で確認する。
  ///
  /// [PbException]: 未ログインは [PbFailureKind.unauthorized]。サーバーが GraphQL 用に
  /// 設定されていないときは [PbFailureKind.notFound]。
  Future<GraphqlToken> graphqlToken({
    Duration margin = const Duration(seconds: 60),
  }) async {
    _connection.requireLogin();
    final cached = _graphqlToken;
    if (cached != null &&
        DateTime.now().add(margin).isBefore(cached.expiresAt)) {
      return cached;
    }
    final response = await _connection.guard(
      'graphqlToken',
      () => _pb.send('/api/app/graphql-token', method: 'GET'),
    );
    final token = response is Map ? response['token'] : null;
    final seconds = response is Map ? response['expires_in'] : null;
    if (token is! String || token.isEmpty || seconds is! num) {
      throw const PbException(
        PbFailureKind.unknown,
        operation: 'graphqlToken',
        message: 'unexpected response (token or expires_in is missing)',
      );
    }
    return _graphqlToken = GraphqlToken(
      token: token,
      expiresAt: DateTime.now().add(Duration(seconds: seconds.toInt())),
    );
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
