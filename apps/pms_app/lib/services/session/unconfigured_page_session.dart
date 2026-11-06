import 'package:page_mediator_extension/page_mediator_extension.dart';

/// セッション確認(page_mediator_extension)の、認証サーバーの接続先が未設定のときの実装
/// (`AuthMode.unconfigured`。`POCKETBASE_URL` も裏設定も持たないとき)。
///
/// 通信はせず、常にログアウトとして返す。ログインできる接続先が無いので、ログイン前の画面
/// (ログイン・メンテナンス・裏設定)以外は、ログインへ向ける。
///
/// パターン: Null Object(接続先が無いときの、何もしない認証の確認)
class UnconfiguredPageSession implements IPageSessionMediator {
  const UnconfiguredPageSession();

  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.signedOut;

  @override
  Future<PageSessionStatus> refresh() async => PageSessionStatus.signedOut;

  @override
  Map<String, Object?> toJson() => {'type': 'UnconfiguredPageSession'};
}
