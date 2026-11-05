import 'package:pms_app/services/core/core_service/app_standard_time.dart';

import '../../../imports.dart';
import '../../router/router.dart';

part 'mock_core_serveice.g.dart';

///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
///
///ログイン・ログアウトの画面とセッションは`auth_files`が持つ。ページの切り替え・更新での
///セッション確認とログインへの向け先は、`rootRouter`の`redirect`が行う。
@Riverpod(keepAlive: true)
Future<void> mockCoreService(Ref ref) async {
  debugPrint('init start');

  ///時間操作のインスタンス化
  await ref.watch(appStandardTimeProvider.notifier).reinquire();
  final reflesh = ref.watch(refreshListenableProvider);
  reflesh.addListener(() {
    //ページの変更通知
    //ここにページ切り替えを入れてはいけない
  });

  ///ルーターのインスタンス化
  final _ = ref.read(rootRouterProvider);

  ref.onDispose(() {
    reflesh.dispose();
  });
  debugPrint('end init');
}
