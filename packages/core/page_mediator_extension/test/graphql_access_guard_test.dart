import 'package:flutter_test/flutter_test.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_graphql/pms_graphql.dart' show SessionUnavailableException;

class _Session implements IPageSessionMediator {
  _Session(this.status);

  PageSessionStatus status;
  var refreshes = 0;

  @override
  Future<PageSessionStatus> check() async => status;

  @override
  Future<PageSessionStatus> refresh() async {
    refreshes++;
    return status;
  }

  @override
  Map<String, Object?> toJson() => {};
}

void main() {
  late _Session session;
  late int maintenance;
  late int expired;
  late DateTime now;

  GraphqlAccessGuard guard() => GraphqlAccessGuard(
    session: session,
    onMaintenance: () => maintenance++,
    onSessionExpired: () => expired++,
    clock: () => now,
  );

  setUp(() {
    session = _Session(PageSessionStatus.valid);
    maintenance = 0;
    expired = 0;
    now = DateTime(2026, 11, 7, 9);
  });

  test('有効なら通す。続けて呼んでも、間隔内はサーバーへ問い合わせない', () async {
    final g = guard();
    await g.ensure();
    await g.ensure();
    expect(session.refreshes, 1);
    now = now.add(const Duration(seconds: 16));
    await g.ensure();
    expect(session.refreshes, 2);
  });

  test('メンテナンス中は中断し、メンテナンスのページへ向ける(やり直せる)', () async {
    session.status = PageSessionStatus.maintenance;
    await expectLater(
      guard().ensure(),
      throwsA(
        isA<SessionUnavailableException>().having(
          (e) => e.transient,
          'transient',
          isTrue,
        ),
      ),
    );
    expect(maintenance, 1);
    expect(expired, 0);
  });

  test('セッション切れは中断し、セッション切れのページへ向ける', () async {
    session.status = PageSessionStatus.expired;
    await expectLater(
      guard().ensure(),
      throwsA(
        isA<SessionUnavailableException>().having(
          (e) => e.transient,
          'transient',
          isFalse,
        ),
      ),
    );
    expect(expired, 1);
    expect(maintenance, 0);
  });

  test('中断した後は省かず、毎回確認する。回復すれば通る', () async {
    final g = guard();
    session.status = PageSessionStatus.maintenance;
    await expectLater(g.ensure(), throwsA(isA<SessionUnavailableException>()));
    session.status = PageSessionStatus.valid;
    await g.ensure();
    expect(session.refreshes, 2);
  });

  test('ログアウト中は中断する(ページへは向けない)。不明(通信できない)は止めない', () async {
    session.status = PageSessionStatus.signedOut;
    await expectLater(
      guard().ensure(),
      throwsA(isA<SessionUnavailableException>()),
    );
    expect(expired, 0);
    session.status = PageSessionStatus.unknown;
    await guard().ensure();
  });
}
