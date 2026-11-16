/// 認証(ログイン)側が分かっているユーザーの身元。
///
/// [staffId] はアプリの DB の担当者の ID(`info_staff_id`)。認証の実装(PocketBase など)の型を、
/// 状態管理・データ取得の側へ出さないための値。
class UserIdentity {
  const UserIdentity({required this.staffId, this.isAdmin = false});

  /// 担当者の ID。
  final String staffId;

  /// 管理者か(権限の判定は認証側の役割。ここでは運ぶだけ)。
  final bool isAdmin;

  Map<String, Object?> toJson() => {'staffId': staffId, 'isAdmin': isAdmin};

  @override
  String toString() => 'UserIdentity(${toJson()})';
}

/// 認証側(ログイン)が、今のユーザーの身元を返す窓口。ログインしていなければ null。
///
/// 実装は認証のライブラリ(`pbapi` の `SessionService` など)をアプリが包む。
/// パターン: Bridge(認証とデータの間のつなぎ)
abstract interface class IUserIdentitySource {
  UserIdentity? get current;
}

/// 担当者の最新の履歴の ID を引く関数(データ側。GraphQL など)。無ければ null。通信の失敗は投げる。
typedef StaffHistoryLookup = Future<String?> Function(String staffId);
