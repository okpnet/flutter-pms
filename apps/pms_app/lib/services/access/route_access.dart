import 'package:app_core/app_core_api.dart' show AccessDeniedDestination;
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../graphql/graphql_overrides.dart' show pocketbaseEnabledProvider;
import '../session/pocketbase_user_identity.dart';
import 'menu_access.dart';

/// 権限の確認が要るページの、許可の単位(アクセスパス)にあたるパス。確認が要らないページは null。
///
/// 確認が要らない: ログイン前の画面・裏設定・メンテナンス・エラー・権限なしの画面・ダッシュボード・設定・
/// 自分のイメージ、および選択の画面(`/e/<キー>/pick`。ほかの画面の入力の一部として開くため)。
/// 台帳の新規・編集(`/e/<キー>/new`・`/e/<キー>/<id>`)は、台帳(`/e/<キー>`)の許可に従う。
/// 管理者の画面(`/auth/admin/…`)は、許可の単位ではなく管理者かどうかで決める([isAdminOnlyPath])。
String? gatedAccessPath(String path) {
  final segments = Uri.parse(path).pathSegments;
  if (segments.isEmpty) return null;
  const open = {
    'boot',
    'error',
    'maintenance',
    'backstage',
    'access-denied',
    'dashboard',
    'settings',
    'profile',
  };
  final first = segments.first;
  if (open.contains(first)) return null;
  if (first == 'auth') {
    // ログイン前の画面は確認しない。共有ファイルは許可の単位(`/auth/files`)
    return segments.length >= 2 && segments[1] == 'files' ? '/auth/files' : null;
  }
  if (first == 'e') {
    if (segments.length < 2) return null;
    if (segments.length >= 3 && segments[2] == 'pick') return null;
    return '/e/${segments[1]}';
  }
  return '/$first';
}

/// 管理者だけのページか。
bool isAdminOnlyPath(String path) {
  final p = Uri.parse(path).path;
  return p == '/auth/admin' || p.startsWith('/auth/admin/');
}

/// [path] を開いてよいか。PocketBase を使わないとき(許可を決める元が無い)は常に許可する。
///
/// メニューの絞り込み([menuAccessProvider])と同じ判定を使う(重ねて持たない)。
/// 判定できない(取得に失敗した)ときは、開かない側にする。
Future<bool> routeAllowed(Ref ref, String path) async {
  if (!ref.read(pocketbaseEnabledProvider)) return true;
  if (isAdminOnlyPath(path)) {
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }
  final base = gatedAccessPath(path);
  if (base == null) return true;
  final access = await ref.read(menuAccessProvider(path).future);
  return access.allows(base);
}

/// 画面の遷移(クリック・リンク)を、遷移の前に確認する(Decorator)。
///
/// 許可されないページへは遷移せず、いまの画面にとどまる(ログに残す)。URL を直接開く場合は、
/// ルーターの `redirect`(権限なしの画面へ向ける)が受け持つ。
class AccessGuardNavigator implements DestinationNavigator {
  AccessGuardNavigator({
    required this.inner,
    required this.allowed,
    required this.logger,
  });

  final GoRouterDestinationNavigator inner;
  final Future<bool> Function(String path) allowed;
  final ILoggerProvider logger;

  @override
  Future<R> navigate<R>(PageDestination<R> destination) async {
    final Object target = destination;
    final real = target is TopLevelDestination ? target.inner : destination;
    // 権限なしの画面そのものへの遷移は、常に許可する
    if (real is! AccessDeniedDestination) {
      final path = inner.resolve(real);
      if (!await allowed(path)) {
        logger.warn('[pms_app] 権限が無いため、遷移しませんでした: $path');
        return null as R;
      }
    }
    return inner.navigate(destination);
  }
}
