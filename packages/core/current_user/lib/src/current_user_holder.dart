import 'current_user.dart';
import 'user_identity.dart';

/// ログイン中のユーザー([CurrentUser])を、一度引いて保持する。
///
/// 担当者の ID は [IUserIdentitySource](認証側)から、履歴の ID は [StaffHistoryLookup](データ側)から貰う。
/// 同じ担当者は履歴の ID を取り直さない。担当者が変わった(ログインし直し)・[clear](ログアウト)で捨てる。
/// ログインしていない・担当者の履歴が無いときは null(更新者を送らない)。通信の失敗は、そのまま投げる
/// (更新者を欠いたまま保存しないため)。
///
/// 権限(メニューの許可など)は保持しない(ページのアクセスごとに取り直す)。
///
/// パターン: Proxy(履歴の ID の取得と使い回しを、呼び出し側から隠す)
class CurrentUserHolder {
  CurrentUserHolder({
    required IUserIdentitySource identity,
    required StaffHistoryLookup lookupHistory,
    String Function()? languageCode,
  }) : _identity = identity,
       _lookupHistory = lookupHistory,
       _languageCode = languageCode ?? (() => 'ja');

  final IUserIdentitySource _identity;
  final StaffHistoryLookup _lookupHistory;
  final String Function() _languageCode;
  CurrentUser? _cache;

  /// 今のユーザー。言語コードは呼ぶたびにユーザーの環境から取り直す。
  Future<CurrentUser?> call() async {
    final id = _identity.current;
    if (id == null || id.staffId.isEmpty) {
      _cache = null;
      return null;
    }
    var user = _cache;
    if (user == null || user.staffId != id.staffId) {
      final history = await _lookupHistory(id.staffId);
      if (history == null) return null;
      user = CurrentUser(
        staffId: id.staffId,
        staffHistoryId: history,
        languageCode: _languageCode(),
        isAdmin: id.isAdmin,
      );
      _cache = user;
    }
    final language = _languageCode();
    if (language != user.languageCode) {
      user = CurrentUser(
        staffId: user.staffId,
        staffHistoryId: user.staffHistoryId,
        languageCode: language,
        isAdmin: user.isAdmin,
      );
      _cache = user;
    }
    return user;
  }

  /// 保持を捨てる(ログアウト)。
  void clear() => _cache = null;
}
