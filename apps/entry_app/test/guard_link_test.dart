import 'package:entry_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_graphql/pms_graphql.dart' show SessionUnavailableException;

class _Session implements IPageSessionMediator {
  _Session(this.status);

  final PageSessionStatus status;

  @override
  Future<PageSessionStatus> check() async => status;

  @override
  Future<PageSessionStatus> refresh() async => status;

  @override
  Map<String, Object?> toJson() => {};
}

class _Terminal extends Link {
  var requests = 0;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests++;
    return Stream.value(const Response(data: {'ok': true}, response: {}));
  }
}

Request _request() =>
    Request(operation: Operation(document: gql('query { ok }')));

void main() {
  test('メンテナンス中は、通信せずに中断し、メンテナンスのページへ向ける', () async {
    var navigated = 0;
    final terminal = _Terminal();
    final link = GuardLink(
      GraphqlAccessGuard(
        session: _Session(PageSessionStatus.maintenance),
        onMaintenance: () => navigated++,
        onSessionExpired: () {},
      ),
    ).concat(terminal);
    await expectLater(
      link.request(_request()).first,
      throwsA(isA<SessionUnavailableException>()),
    );
    expect(terminal.requests, 0);
    expect(navigated, 1);
  });

  test('有効なら通信する', () async {
    final terminal = _Terminal();
    final link = GuardLink(
      GraphqlAccessGuard(
        session: _Session(PageSessionStatus.valid),
        onMaintenance: () {},
        onSessionExpired: () {},
      ),
    ).concat(terminal);
    await link.request(_request()).first;
    expect(terminal.requests, 1);
  });
}
