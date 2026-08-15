import 'package:mock_up/contents/_models/error/error.dart';
import 'package:mock_up/contents/_notice/route/notice_extenssion.dart';
import 'package:mock_up/contents/_notice/route/router.dart';
import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/services/core/core.dart';
import 'package:mock_up/services/core/core_service/app_standard_time.dart';

import '../../../contents/_models/authorization/auth_state_type.dart';
import '../../../imports.dart';
import '../../authorization/authorization.dart';
import '../../router/router.dart';

part 'mock_core_serveice.g.dart';

///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
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

  ///問題なければ認証状態でページを切り替える機能登録
  final _ = ref.read(rootRouterProvider);

  ///メンテナンス中
  final maintenance = ref.watch(mockMaintenanceProviderProvider.notifier);
  ref.listen(mockMaintenanceProviderProvider, (prev, next) {
    if (!next.isMaintenance) {
      return;
    }
    final router = ref.read(rootRouterProvider);
    router.toNotice(MaintenanceConstant.path, next);
  });

  final timeState = ref.read(appStandardTimeProvider);

  ///問題なければ認証状態でページを切り替える機能登録
  final router = ref.read(rootRouterProvider);
  ref.listen(mockAutorizeServiceProvider, (prev, next) {
    ///エラーで移動
    void goError(Map<String, dynamic> argment) => router.go(
      Uri(
        path: ContentsErrorConstant.path,
        queryParameters: argment,
      ).toString(),
    );

    ///時間取得で例外が発生している
    if (timeState.hasException) {
      goError(timeState.exception!.toMap());
      return;
    }

    ///標準時間がセットされていない
    if (!timeState.isEnable) {
      final error = AppError(.standardTimeRelated).toMap();
      goError(error);
      return;
    }

    ///途中で時間を不正操作した
    if (!timeState.timeState!.getNow().isSameTimeWithTolerance(
      DateTime.now().toUtc(),
    )) {
      final error = ManipulationError(.timeManipulation).toMap();
      goError(error);
      return;
    }

    ///標準
    next.authStateType.go(router);
  });

  ref.onDispose(() {
    reflesh.dispose();
    maintenance.dispose();
  });
  debugPrint('end init');
}

extension AutoTypeEx on AuthStateType {
  void go(GoRouter router) {
    switch (this) {
      case .expired:
        router.push(LoginConstant.path);
        break;
      case .fail:
        final error = ServerError(.authorize, .timeout);
        final uri = Uri(
          path: ContentsErrorConstant.path,
          queryParameters: error.toMap(),
        );
        router.go(uri.toString());
        break;
      case .authenticated:
        if (router.canPop()) {
          router.pop();
        } else {
          router.go(DashboardConstant.path);
        }
        break;
      case .signedOut:
        router.go(LoginConstant.path);
        break;
    }
  }
}

extension DataTimeExtenssion on DateTime {
  /// 60秒以内なら「同じ時刻」とみなす比較
  bool isSameTimeWithTolerance(
    DateTime a, {
    Duration tolerance = const Duration(seconds: 60),
  }) {
    final diff = difference(a).inSeconds.abs();
    return diff <= tolerance.inSeconds;
  }
}
