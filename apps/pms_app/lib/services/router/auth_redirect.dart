import 'package:page_mediator_extension/page_mediator_extension.dart';

/// ログインしていないときのルーターの向け先。
///
/// [status] が [PageSessionStatus.signedOut] または [PageSessionStatus.expired] で、
/// [location] が [openPaths](ログイン前の画面など、ログインなしで開いてよいパス)でなければ、
/// ログインしていない([PageSessionStatus.signedOut])は [loginPath]、セッションが切れた
/// ([PageSessionStatus.expired])は [expiredPath](セッション切れのページ。ログインへの遷移を促す。
/// 省略したときは [loginPath])を返す。それ以外(有効・メンテナンス・不明)は null で、そのまま表示する。
///
/// 不明([PageSessionStatus.unknown])は、通信できないだけの可能性があるため、ログインへ向けない。
String? authRedirect({
  required PageSessionStatus status,
  required String location,
  required String loginPath,
  required Iterable<String> openPaths,
  String? expiredPath,
}) {
  if (status != PageSessionStatus.signedOut &&
      status != PageSessionStatus.expired) {
    return null;
  }
  final path = Uri.parse(location).path;
  final open = openPaths.any((p) => path == p || path.startsWith('$p/'));
  if (open) return null;
  return status == PageSessionStatus.expired
      ? (expiredPath ?? loginPath)
      : loginPath;
}
