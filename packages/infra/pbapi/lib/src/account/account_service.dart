import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import '../session/auth_session.dart';
import '../session/session_service.dart';
import 'admin_contact.dart';

/// 新規登録とパスワードの変更・再設定。
class AccountService {
  AccountService(this._connection, this._session, {IAdminContact? adminContact})
    : _adminContact = adminContact;

  final PbConnection _connection;
  final SessionService _session;
  final IAdminContact? _adminContact;

  /// サーバー(PocketBase 既定)が受け付けるパスワードの最小の長さ。
  static const minPasswordLength = 8;

  /// 招待コードで登録し、そのままログインする。
  ///
  /// このサーバーは招待制で、自己登録は閉じている。ユーザーID(`username`)は管理者が招待時に決め、
  /// 利用者は招待コードとパスワードを決める。
  ///
  /// [PbException]: ID/コードの誤り・期限切れ・パスワードの不備は [PbFailureKind.validation]
  /// ([PbException.message]・[PbException.fieldErrors]にサーバーの説明)、
  /// 試行が多すぎれば [PbFailureKind.rateLimited]。
  /// [ArgumentError]: パスワードが短い(通信しない)。
  Future<AuthSession> register({
    required String username,
    required String inviteCode,
    required String password,
    String? name,
  }) async {
    _checkPassword(password);
    await _connection.guard(
      'register',
      () => _connection.pb.send(
        '/api/app/invites/accept',
        method: 'POST',
        body: {
          'username': username.trim(),
          'code': inviteCode.trim(),
          'password': password,
          'passwordConfirm': password,
          'name': ?name,
        },
      ),
    );
    return _session.login(username, password);
  }

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
    final current = _session.current;
    if (current == null) {
      throw const PbException(PbFailureKind.unauthorized);
    }
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

  /// メールアドレスを登録している人へ、パスワード再設定のメールを送る。
  /// 登録の有無は応答からはわからない(存在確認に使われないよう、サーバーは常に成功を返す)。
  /// メールの中のコード(トークン)は [confirmPasswordReset] に渡す。
  Future<void> requestPasswordReset(String email) => _connection.guard(
    'requestPasswordReset',
    () => _connection.pb.collection('users').requestPasswordReset(email.trim()),
  );

  /// メールで届いたコード(トークン)と新しいパスワードで再設定する。成功すると、
  /// コードは使えなくなり、以前のトークンは失効する。続けて [SessionService.login] で入り直す。
  ///
  /// コードの一致の確認と再設定は同時に行われる(確認だけを先に行う API は無い)。
  /// そのため「コードが一致したらパスワード変更画面へ」は、画面でコードと新しいパスワードを
  /// 続けて入力させ、まとめてこのメソッドへ渡す。
  ///
  /// [PbException]: コードが無効・期限切れは [PbFailureKind.validation]。
  Future<void> confirmPasswordReset({
    required String token,
    required String newPassword,
  }) {
    _checkPassword(newPassword);
    return _connection.guard(
      'confirmPasswordReset',
      () => _connection.pb
          .collection('users')
          .confirmPasswordReset(token.trim(), newPassword, newPassword),
    );
  }

  /// メールアドレスを登録していない人のために、管理者へパスワード再設定を依頼する。
  ///
  /// [PbException]: 連絡手段([IAdminContact])が設定されていなければ [PbFailureKind.notConfigured]。
  Future<void> requestAdminPasswordReset(String username) async {
    final contact = _adminContact;
    if (contact == null) {
      throw const PbException(
        PbFailureKind.notConfigured,
        message: '管理者への連絡手段(IAdminContact)が設定されていません',
      );
    }
    await contact.requestPasswordReset(username.trim());
  }

  void _checkPassword(String password) {
    if (password.length < minPasswordLength) {
      throw ArgumentError.value(
        '(非表示)',
        'password',
        'パスワードは$minPasswordLength文字以上にしてください',
      );
    }
  }
}
