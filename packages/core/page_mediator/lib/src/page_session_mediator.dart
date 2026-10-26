/// ページを表示してよいセッションの状態。
enum PageSessionStatus {
  /// 認証済みで、サーバーも利用できる。
  valid,

  /// 認証の有効期限が切れた(更新できなかった)。
  expired,

  /// ログインしていない。
  signedOut,

  /// サーバーがメンテナンス中。
  maintenance,

  /// 確認できなかった(通信の失敗など)。
  unknown;

  /// そのままページを使ってよいか。
  bool get isUsable => this == PageSessionStatus.valid;
}

/// ページの表示・更新のタイミングで、セッション(認証・メンテナンス)を確認する窓口。
///
/// 実装(pms_authenticator による認証の確認、サーバーのメンテナンス確認)はアプリが差し込む。
/// ライブラリのテストでは、何もしない [NoopPageSessionMediator](既定)を使う。
abstract interface class IPageSessionMediator {
  /// 現在の状態を確認する(通信しない・軽い確認)。
  Future<PageSessionStatus> check();

  /// 認証・メンテナンスの状態を更新して確認する(ページの切り替え・更新のタイミングで呼ぶ)。
  Future<PageSessionStatus> refresh();

  Map<String, Object?> toJson();
}

/// 何も確認せず、常に [PageSessionStatus.valid] を返す。既定の実装で、テストで使う。
///
/// パターン: Null Object
class NoopPageSessionMediator implements IPageSessionMediator {
  const NoopPageSessionMediator();

  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.valid;

  @override
  Future<PageSessionStatus> refresh() async => PageSessionStatus.valid;

  @override
  Map<String, Object?> toJson() => {'type': 'NoopPageSessionMediator'};
}
