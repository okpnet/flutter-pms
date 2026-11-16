import 'package:current_user/current_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

/// ログイン中のユーザーの身元(current_user)の、PocketBase(pbapi)の実装。
///
/// PocketBase の型(`AuthSession`)を、状態管理・データ取得の側へ出さない。
///
/// パターン: Adapter(`SessionService` を `IUserIdentitySource` に適合させる)
class PocketBaseUserIdentity implements IUserIdentitySource {
  PocketBaseUserIdentity(this._session);

  final SessionService _session;

  @override
  UserIdentity? get current {
    final s = _session.current;
    if (s == null || s.appUserId.isEmpty) return null;
    return UserIdentity(staffId: s.appUserId, isAdmin: s.isAdmin);
  }
}

/// 今のユーザーの身元(認証側)。
final userIdentitySourceProvider = Provider<IUserIdentitySource>(
  (ref) => PocketBaseUserIdentity(ref.read(sessionServiceProvider)),
);
