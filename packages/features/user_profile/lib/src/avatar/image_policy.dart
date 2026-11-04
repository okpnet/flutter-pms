import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ユーザーが自分のイメージを変更できるか(起動時のプロパティ `isChangeUserImage`)。
///
/// 標準は `false`(変更できるのはユーザーを追加できる管理者)。
/// 優先順位は、起動時の値(`--dart-define=IS_CHANGE_USER_IMAGE=true|false`)を最優先とし、
/// 次にアプリケーションの裏設定の値([backstageValuesProvider])、最後に標準(`false`)。
/// テストでは、この Provider を上書きしてよい。
final isChangeUserImageProvider = Provider<bool>((ref) {
  if (const bool.hasEnvironment('IS_CHANGE_USER_IMAGE')) {
    return const bool.fromEnvironment('IS_CHANGE_USER_IMAGE');
  }
  return ref.watch(backstageValuesProvider).isChangeUserImage ?? false;
});
