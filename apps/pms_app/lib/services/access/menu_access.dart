import 'package:access_control_model/access_control_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

import '../graphql/graphql_overrides.dart';

/// サイドバーのメニューに出してよいページ(アクセスパス)。
///
/// 管理者(`role=admin`)はすべて許可([MenuAccess.all])。それ以外は、担当者の実効アクセスパス
/// (`usecase_path`)に含まれるページだけ。判定できない(接続先がない・取得に失敗)ときは、
/// 出さない側([MenuAccess.none])にする。ただし GraphQL に接続しない環境(サンプルの取得元)は、
/// 判定する元がないため、すべて許可する。
///
/// パターン: Value Object(判定の結果。画面をまたいで持ち回らない — [menuAccessProvider] を参照)
class MenuAccess {
  const MenuAccess._(this.allowAll, this.paths);

  /// すべて許可する。
  static const all = MenuAccess._(true, {});

  /// 何も許可しない。
  static const none = MenuAccess._(false, {});

  /// 許可するアクセスパスの一覧([paths])から作る。
  factory MenuAccess.of(Iterable<String> paths) =>
      MenuAccess._(false, Set.unmodifiable(paths));

  final bool allowAll;
  final Set<String> paths;

  /// [location](パス。クエリは無視する)のページを出してよいか。
  bool allows(String location) =>
      allowAll || paths.contains(Uri.parse(location).path);

  Map<String, Object?> toJson() => {
    'allowAll': allowAll,
    'paths': paths.length,
  };
}

/// ページのアクセスごとに1回、メニューの許可を取り出す。
///
/// ロール・許可は保持しない(画面をまたいで持ち回らない)。[location] ごとに取り直し、使われなくなれば
/// 捨てる(`autoDispose`)。方針は `packages/features/auth_files/CLAUDE.md`(権限は保持しない)。
final menuAccessProvider = FutureProvider.autoDispose
    .family<MenuAccess, String>((ref, location) async {
      if (!ref.read(pocketbaseEnabledProvider)) return MenuAccess.all;
      final session = ref.read(sessionServiceProvider).current;
      if (session == null) return MenuAccess.none;
      if (session.isAdmin) return MenuAccess.all;
      final client = ref.read(graphqlClientProvider);
      if (client == null) return MenuAccess.all;
      try {
        final effective = await AccessControlClient(
          client: client,
        ).listEffectiveAccessPaths(staffId: session.appUserId);
        return MenuAccess.of(effective.map((e) => e.usecasePath));
      } catch (e, s) {
        ref
            .read(loggerProvider)
            .error('[pms_app] メニューの許可を取り出せませんでした', ex: e, trace: s);
        return MenuAccess.none;
      }
    });
