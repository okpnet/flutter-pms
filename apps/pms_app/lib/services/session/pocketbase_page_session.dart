import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pbapi/pbapi.dart';

import '../../imports.dart';

/// セッション確認(page_mediator_extension)の、PocketBase(pbapi)の実装。
///
/// ページの切り替え・更新のタイミング([refresh])で、`SessionService.ensureSession` により
/// PocketBase のトークンを検証・延長する。ページを移るたびにサーバーへ問い合わせないよう、
/// [minInterval] 内に確認済みなら問い合わせを省く。
///
/// - ログインしていない: [PageSessionStatus.signedOut]
/// - ログインしていたが、期限切れ・無効化・削除でセッションが無くなった: [PageSessionStatus.expired]
/// - 通信できない: [PageSessionStatus.unknown](ログアウトにはしない。オフラインで入り直しを強いないため)
///
/// パターン: Adapter(`SessionService` を `IPageSessionMediator` に適合させる)
class PocketBasePageSession implements IPageSessionMediator {
  PocketBasePageSession(
    this._ref, {
    this.minInterval = const Duration(seconds: 30),
  });

  final Ref _ref;

  /// この間隔内に確認済みなら、サーバーへ問い合わせない。
  final Duration minInterval;

  /// 直前に有効なセッションを確認できたか(期限切れとログアウトを区別するため)。
  bool _hadSession = false;

  PageSessionStatus get _gone {
    final status = _hadSession
        ? PageSessionStatus.expired
        : PageSessionStatus.signedOut;
    _hadSession = false;
    return status;
  }

  @override
  Future<PageSessionStatus> check() async =>
      _ref.read(sessionServiceProvider).current != null
      ? PageSessionStatus.valid
      : _gone;

  @override
  Future<PageSessionStatus> refresh() async {
    final session = _ref.read(sessionServiceProvider);
    // ログインしていない(または、保存済みの期限が切れている)ときは、確認する通信が無い。
    if (session.current == null) return _gone;
    try {
      if (await session.ensureSession(minInterval: minInterval)) {
        _hadSession = true;
        return PageSessionStatus.valid;
      }
      return _gone;
    } on PbException catch (e) {
      _ref
          .read(loggerProvider)
          .warn('[pms_app] セッションの確認に失敗しました: ${e.logMessage}');
      return PageSessionStatus.unknown;
    }
  }

  @override
  Map<String, Object?> toJson() => {'type': 'PocketBasePageSession'};
}
