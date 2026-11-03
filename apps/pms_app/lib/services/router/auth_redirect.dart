import 'package:page_mediator_extension/page_mediator_extension.dart';

/// ログインしていないときのルーターの向け先。
///
/// [status] が [PageSessionStatus.signedOut] または [PageSessionStatus.expired] で、
/// [location] が [openPaths](ログイン前の画面など、ログインなしで開いてよいパス)でなければ、
/// [loginPath] を返す。それ以外(有効・メンテナンス・不明)は null で、そのまま表示する。
///
/// 不明([PageSessionStatus.unknown])は、通信できないだけの可能性があるため、ログインへ向けない。
String? authRedirect({
  required PageSessionStatus status,
  required String location,
  required String loginPath,
  required Iterable<String> openPaths,
}) {
  if (status != PageSessionStatus.signedOut &&
      status != PageSessionStatus.expired) {
    return null;
  }
  final path = Uri.parse(location).path;
  final open = openPaths.any((p) => path == p || path.startsWith('$p/'));
  return open ? null : loginPath;
}
