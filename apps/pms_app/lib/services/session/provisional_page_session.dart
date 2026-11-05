import 'package:page_mediator_extension/page_mediator_extension.dart';

import '../../imports.dart';

/// セッション確認(page_mediator_extension)の、認証サーバーに接続しない開発用の実装
/// (`AuthMode.provisional`。`POCKETBASE_URL` を指定しないとき)。
///
/// 通信はせず、ログインユーザー(`userSummaryProvider`)がいれば有効、いなければログアウトとして返す。
/// 開発用はログインへ向ける処理(`authRedirect`)を使わないので、ここでの確認はページを止めない。
class ProvisionalPageSession implements IPageSessionMediator {
  ProvisionalPageSession(this._ref);

  final Ref _ref;

  PageSessionStatus get _status => _ref.read(userSummaryProvider) == null
      ? PageSessionStatus.signedOut
      : PageSessionStatus.valid;

  @override
  Future<PageSessionStatus> check() async => _status;

  @override
  Future<PageSessionStatus> refresh() async => _status;

  @override
  Map<String, Object?> toJson() => {'type': 'ProvisionalPageSession'};
}
