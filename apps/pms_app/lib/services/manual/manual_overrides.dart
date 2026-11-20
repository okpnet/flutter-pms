import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:manual/manual.dart' show manualIsAdminProvider;

import '../graphql/graphql_overrides.dart' show pocketbaseEnabledProvider;
import '../session/pocketbase_user_identity.dart';

/// マニュアル(Wiki)の編集権限を、アプリが認証の結果で差し込む。
///
/// - 管理者(`role=admin`)だけが編集できる(それ以外は閲覧のみ)。権限は保持せず、呼ぶたびに今の身元から引く。
///   ログイン・ログアウトで作り直すため、ログインユーザー(`userSummaryProvider`)を見張る。
/// - PocketBase に接続しない環境(サンプル)は、判定する元がないため、編集できる側にする(メニューの許可と同じ)。
/// - 更新者の名前は、既定のまま(ログインユーザーの表示名)。
List<Override> manualOverrides() => [
  manualIsAdminProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }),
];

