import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// トップメニューの1項目。機能が提供し、アプリが集めてサイドバー・ハンバーガーメニューにする。
///
/// 同じ [groupId] の項目は1つのグループにまとまる(複数の機能が同じグループに項目を出せる。
/// 例: 配送区分は「営業」と「購買」の両方のグループから開く)。
class MenuEntry {
  const MenuEntry({
    required this.groupId,
    required this.groupLabel,
    required this.label,
    required this.destination,
  });

  /// グループの識別子(並び順・アイコンはアプリが決める)。
  final String groupId;

  /// グループの表示名(言語ごと)。
  final String groupLabel;

  /// 項目の表示名(言語ごと)。
  final String label;

  /// 選んだときの遷移先。
  final PageDestination<Object?> destination;

  Map<String, Object?> toJson() => {
    'groupId': groupId,
    'groupLabel': groupLabel,
    'label': label,
    'destination': destination.toJson(),
  };
}

/// [inner] を、積み重ねずに枠の中の画面として開く遷移先(メニューの項目用)。
///
/// 通常の遷移は画面を積む(戻れる)が、メニューの項目は枠の中の画面を入れ替える。
/// どちらも CommandBus を通る(ログ・権限などの Middleware が掛かる)。
final class TopLevelDestination extends PageDestination<Object?> {
  const TopLevelDestination(this.inner);

  final PageDestination<Object?> inner;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'inner': inner.toJson()};
}

/// トップメニューの項目を提供する機能。[FeatureModule] と合わせて実装する(任意)。
///
/// 表示名は言語ごとなので、[ref] から文字列の Provider を読んで返す。
abstract interface class MenuContributor {
  List<MenuEntry> menuEntries(WidgetRef ref);
}

/// ログインユーザーの表示用の情報。実体は AppCore(ログイン・設定)が提供し、
/// アプリの枠(タイトルバー・サイドバー)が表示する。
class UserSummary {
  const UserSummary({required this.name, this.role = ''});

  final String name;
  final String role;
}

/// ログインユーザーの表示用の情報。標準値([standard])から始まり、設定画面で変更できる。
/// ログアウトすると null(メニューもユーザーも出さない)。
///
/// 標準値はアプリが差し込む(認証を導入するまでは固定の利用者)。変更は保存しない(起動のたびに標準値へ戻る)。
final userSummaryProvider = NotifierProvider<UserSummaryNotifier, UserSummary?>(
  UserSummaryNotifier.new,
);

class UserSummaryNotifier extends Notifier<UserSummary?> {
  UserSummaryNotifier([this.standard]);

  /// 標準値(起動時と [reset] のときの値)。
  final UserSummary? standard;

  @override
  UserSummary? build() => standard;

  /// 設定値を与える。
  void set(UserSummary user) => state = user;

  /// 標準値へ戻す。
  void reset() => state = standard;

  /// ログアウト(ユーザーなし)にする。
  void logout() => state = null;
}
