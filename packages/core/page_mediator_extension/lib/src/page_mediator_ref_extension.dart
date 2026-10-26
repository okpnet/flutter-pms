import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'page_data_mediator.dart';
import 'page_mediator_providers.dart';
import 'page_session_mediator.dart';
import 'page_settings_mediator.dart';

/// `ConsumerWidget` のページから、窓口を使う拡張(`ref.pageData` など)。
extension PageMediatorRef on WidgetRef {
  IPageDataMediator get pageData => read(pageDataMediatorProvider);
  IPageSettingsMediator get pageSettings => read(pageSettingsMediatorProvider);
  IPageSessionMediator get pageSession => read(pageSessionMediatorProvider);
}

/// `ConsumerStatefulWidget` のページへ、窓口とセッション確認を足す(`with PageMediatorMixin`)。
///
/// ページの表示・更新のタイミングで [enterPage] を呼ぶと、セッションを更新して確認し、
/// 使えないとき(期限切れ・ログアウト・メンテナンス中)は [onSessionUnusable] を呼ぶ。
mixin PageMediatorMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  IPageDataMediator get pageData => ref.read(pageDataMediatorProvider);
  IPageSettingsMediator get pageSettings =>
      ref.read(pageSettingsMediatorProvider);
  IPageSessionMediator get pageSession => ref.read(pageSessionMediatorProvider);

  /// ページの表示・更新のタイミングで、セッションを更新して確認する。
  Future<PageSessionStatus> enterPage() async {
    final status = await pageSession.refresh();
    if (!mounted) return status;
    if (!status.isUsable) onSessionUnusable(status);
    return status;
  }

  /// セッションが使えないときの処理(既定は何もしない。メンテナンスページなどへ遷移する)。
  @protected
  void onSessionUnusable(PageSessionStatus status) {}
}
