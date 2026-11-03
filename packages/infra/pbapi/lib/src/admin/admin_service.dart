import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import 'issued_code.dart';
import 'reset_request.dart';
import 'signup_request.dart';

/// 管理者の操作(申請の承認・却下、先に登録、コードの発行、無効化)。
///
/// 使えるのは `role=admin` で有効なユーザー(または superuser)だけ。権限はサーバーが判定し、
/// 一般ユーザーが呼ぶと [PbFailureKind.forbidden] になる(ここでは判定しない)。
/// 管理者アカウントを対象にした操作(再設定コード・無効化など)は superuser だけ。
///
/// 承認の順序は「アプリのDBに担当者を登録 → [activate]」で固定。[activate] は同じ `appUserId` で
/// 何度でも呼べ、呼ぶたびにコードを発行し直して前のコードを無効にする。
class AdminService {
  AdminService(this._connection);

  final PbConnection _connection;

  /// 申請の一覧(古い順)。
  Future<List<SignupRequest>> listSignupRequests() async {
    _connection.requireLogin();
    final records = await _connection.guard(
      'listSignupRequests',
      () => _connection.pb
          .collection('signup_profiles')
          .getFullList(sort: 'created', expand: 'user'),
    );
    return records.map(SignupRequest.fromRecord).toList();
  }

  /// 申請を承認し、有効化コードを発行する。[userId] は [SignupRequest.userId]、
  /// [appUserId] はアプリのDBに登録した担当者のID。
  ///
  /// [username] を省くと申請時の希望ID、[email] を省くと申請時の連絡先を使う
  /// (空文字を指定すると「メールなし」)。[mail] が false ならメールを送らない。
  ///
  /// [PbException]: 入力の不備(ユーザーID・Eメール・`appUserId` の重複など)は
  /// [PbFailureKind.validation]、対象が無ければ [PbFailureKind.notFound]。
  Future<IssuedCode> activate({
    required String userId,
    required String appUserId,
    String? username,
    String? email,
    String? name,
    bool mail = true,
  }) => _issue('activate', '/api/app/admin/users/${_id(userId)}/activate', {
    'app_user_id': appUserId.trim(),
    'username': ?username?.trim(),
    'email': ?email?.trim(),
    'name': ?name?.trim(),
    if (!mail) 'mail': false,
  });

  /// 申請を却下する。申請中のユーザーと本人情報をまとめて削除する。
  Future<void> reject(String userId) async {
    _connection.requireLogin();
    final path = '/api/app/admin/users/${_id(userId)}/reject';
    await _connection.guard(
      'reject',
      () => _connection.pb.send(path, method: 'POST'),
    );
  }

  /// 管理者が先にユーザーを登録する(「承認済み」で作り、有効化コードを発行する)。
  /// [role] に `admin` を付けられるのは superuser だけ。
  Future<IssuedCode> createUser({
    required String username,
    required String appUserId,
    String? email,
    String? name,
    String role = 'user',
    bool mail = true,
  }) => _issue('createUser', '/api/app/admin/users', {
    'username': username.trim(),
    'app_user_id': appUserId.trim(),
    'email': ?email?.trim(),
    'name': ?name?.trim(),
    'role': role,
    if (!mail) 'mail': false,
  });

  /// メールを登録していないユーザーの、未対応の再設定依頼の一覧(古い順)。
  Future<List<ResetRequest>> listResetRequests() async {
    _connection.requireLogin();
    final records = await _connection.guard(
      'listResetRequests',
      () => _connection.pb
          .collection('reset_requests')
          .getFullList(
            sort: 'created',
            filter: "status = 'open'",
            expand: 'user',
          ),
    );
    return records.map(ResetRequest.fromRecord).toList();
  }

  /// 再設定コードを発行する。本人確認をしたうえで手渡す。未対応の依頼は自動でクローズされる。
  Future<IssuedCode> issueResetCode(String userId, {bool mail = true}) =>
      _issue(
        'issueResetCode',
        '/api/app/admin/users/${_id(userId)}/reset-code',
        {if (!mail) 'mail': false},
      );

  /// 無効化する(すべての端末のトークンが即座に失効し、ログインできなくなる)。
  /// [disabled] を false にすると元に戻す。退職などは削除ではなく無効化にする。
  Future<void> setDisabled(String userId, {bool disabled = true}) async {
    _connection.requireLogin();
    final path = '/api/app/admin/users/${_id(userId)}/disable';
    await _connection.guard(
      'setDisabled',
      () => _connection.pb.send(
        path,
        method: 'POST',
        body: {'disabled': disabled},
      ),
    );
  }

  Future<IssuedCode> _issue(
    String operation,
    String path,
    Map<String, Object?> body,
  ) async {
    _connection.requireLogin();
    final response = await _connection.guard(
      operation,
      () => _connection.pb.send(path, method: 'POST', body: body),
    );
    if (response is! Map<String, dynamic>) {
      throw PbException(
        PbFailureKind.unknown,
        operation: operation,
        message: 'unexpected response (not an object)',
      );
    }
    return IssuedCode.fromJson(response);
  }

  static String _id(String userId) {
    final id = userId.trim();
    if (id.isEmpty) {
      throw ArgumentError.value(userId, 'userId', 'must not be empty');
    }
    return Uri.encodeComponent(id);
  }
}
