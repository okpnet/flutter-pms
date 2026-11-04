
import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import '../session/auth_session.dart';
import '../session/session_service.dart';

/// 登録申請・コード入力・パスワードの変更と再設定・プロフィール変更。
///
/// 申請→承認→有効化の流れと、各応答の意味はサーバーの README(`tools/docker/pocketbase/README.md`)。
/// ユーザーの状態(申請中・承認済み・有効・無効)の判定はサーバーが行い、ここでは判定しない。
class AccountService {
  AccountService(this._connection, this._session);

  final PbConnection _connection;
  final SessionService _session;

  /// サーバー(PocketBase 既定)が受け付けるパスワードの最小の長さ。
  static const minPasswordLength = 8;

  /// 新規登録を申請する(ログイン不要)。管理者の承認とコードの発行を経て、[acceptCode] で有効になる。
  ///
  /// サーバーの応答はいつも同じで、希望ID([requestedUsername])が使われているかはわからない。
  /// [profile] は担当者の本人情報(自由な形式のJSON、16KBまで)。
  ///
  /// [PbException]: 項目の不備は [PbFailureKind.validation]([PbException.fieldErrors])、
  /// 未処理の申請が多く受付停止中は [PbFailureKind.unavailable]、
  /// 試行が多すぎれば [PbFailureKind.rateLimited]。
  Future<void> requestSignup({
    required String fullName,
    String? requestedUsername,
    String? contactEmail,
    Map<String, Object?>? profile,
    String? note,
  }) async {
    await _connection.guard(
      'requestSignup',
      () => _connection.pb.send(
        '/api/app/signup',
        method: 'POST',
        body: {
          'full_name': fullName.trim(),
          'requested_username': ?_trimmed(requestedUsername),
          'contact_email': ?_trimmed(contactEmail),
          'profile': ?profile,
          'note': ?_trimmed(note),
        },
      ),
    );
  }

  /// 管理者が渡した(またはメールで届いた)コードと新しいパスワードで、有効化またはパスワードの再設定を行う。
  /// 有効化と再設定は同じ入口。成功するとコードは使えなくなり、以前のトークンは失効する。
  /// ログインはしない(続けて [SessionService.login] を呼ぶかは呼び出し側が決める)。
  ///
  /// コードの誤り・期限切れ・回数超過・ユーザーIDの誤りは、サーバーが区別せず同じ
  /// [PbFailureKind.validation] で返す。
  /// [ArgumentError]: パスワードが短い(通信しない)。
  Future<void> acceptCode({
    required String username,
    required String code,
    required String password,
  }) async {
    _checkPassword(password);
    await _connection.guard(
      'acceptCode',
      () => _connection.pb.send(
        '/api/app/codes/accept',
        method: 'POST',
        body: {
          'username': username.trim(),
          'code': code.trim(),
          'password': password,
          'passwordConfirm': password,
        },
      ),
    );
  }

  /// パスワードを忘れたときの依頼(ログイン不要)。[identity] はユーザーIDまたはEメール。
  ///
  /// 応答はいつも同じで、登録の有無はわからない。メールでコードを送るか、管理者に手渡しを依頼するかは
  /// サーバーが判断する(クライアントは分岐しない)。届いたコードは [acceptCode] に渡す。
  Future<void> requestPasswordReset(String identity) => _connection.guard(
    'requestPasswordReset',
    () => _connection.pb.send(
      '/api/app/password-reset/request',
      method: 'POST',
      body: {'identity': identity.trim()},
    ),
  );

  /// ログイン中のユーザーのパスワードを変更する。古いパスワードが一致したときだけ適用される。
  /// 変更するとトークンが失効するため、新しいパスワードで入り直して新しいセッションを返す。
  ///
  /// [PbException]: 古いパスワードの不一致は [PbFailureKind.validation]
  /// (`fieldErrors['oldPassword']`)、未ログインは [PbFailureKind.unauthorized]。
  Future<AuthSession> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    _checkPassword(newPassword);
    final current = _requireSession('changePassword');
    await _connection.guard(
      'changePassword',
      () => _connection.pb
          .collection('users')
          .update(
            current.userId,
            body: {
              'oldPassword': oldPassword,
              'password': newPassword,
              'passwordConfirm': newPassword,
            },
          ),
    );
    return _session.login(current.username, newPassword);
  }

  /// ログイン中のユーザーが変えられる項目([name])を更新する。
  /// `username`・`app_user_id`・`role`・`email`・`disabled`・`avatar` は変えられない(サーバーが拒否する)。
  /// アバター画像は `AvatarService`(`user_avatars`)で登録する。
  /// 指定しなかった項目は変えない。
  ///
  /// [PbException]: 未ログインは [PbFailureKind.unauthorized]。
  Future<void> updateProfile({String? name}) async {
    final current = _requireSession('updateProfile');
    await _connection.guard(
      'updateProfile',
      () => _connection.pb
          .collection('users')
          .update(current.userId, body: {'name': ?name}),
    );
  }

  AuthSession _requireSession(String operation) {
    final current = _session.current;
    if (current == null) {
      throw PbException(
        PbFailureKind.unauthorized,
        operation: operation,
        message: 'not logged in (checked before sending)',
      );
    }
    return current;
  }

  void _checkPassword(String password) {
    if (password.length < minPasswordLength) {
      // 値は例外に含めない(長さの条件だけ)。
      throw ArgumentError.value(
        '(hidden)',
        'password',
        'length is below the minimum ($minPasswordLength)',
      );
    }
  }

  static String? _trimmed(String? v) {
    final t = v?.trim();
    return (t == null || t.isEmpty) ? null : t;
  }
}
