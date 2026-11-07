import 'package:flutter_test/flutter_test.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_app/services/router/auth_redirect.dart';

void main() {
  test('authRedirect: セッション切れはセッション切れのページ、ログアウトはログイン', () {
    String? go(PageSessionStatus s) => authRedirect(
      status: s,
      location: '/dashboard',
      loginPath: '/auth/login',
      expiredPath: '/auth/logout?expired=1',
      openPaths: const ['/auth/login', '/auth/logout'],
    );
    expect(go(PageSessionStatus.expired), '/auth/logout?expired=1');
    expect(go(PageSessionStatus.signedOut), '/auth/login');
    expect(go(PageSessionStatus.valid), isNull);
  });
}
