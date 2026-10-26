import 'package:page_mediator/page_mediator.dart';

/// メンテナンスの確認を先に行い、使えるときだけ内側(認証の確認など)へ任せるセッション確認。
///
/// ログイン中に処理していても、ページの切り替え・更新のタイミング([refresh])でメンテナンスを確認し、
/// メンテナンス中ならそれを優先する(認証の状態は確認しない)。
///
/// パターン: Decorator(内側の [IPageSessionMediator] にメンテナンスの確認を足す)
class MaintenanceAwarePageSession implements IPageSessionMediator {
  /// [refreshMaintenance] は、サーバーへ確認して、メンテナンス中かを返す
  /// (例: `ref.read(maintenanceStatusProvider.notifier).refresh` の結果の `isUnderMaintenance`)。
  MaintenanceAwarePageSession({
    required this.refreshMaintenance,
    required this.inner,
  });

  final Future<bool> Function() refreshMaintenance;
  final IPageSessionMediator inner;

  @override
  Future<PageSessionStatus> check() => inner.check();

  @override
  Future<PageSessionStatus> refresh() async {
    if (await refreshMaintenance()) return PageSessionStatus.maintenance;
    return inner.refresh();
  }

  @override
  Map<String, Object?> toJson() => {
    'type': 'MaintenanceAwarePageSession',
    'inner': inner.toJson(),
  };
}
