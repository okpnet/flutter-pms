import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:manual/manual.dart' show GraphqlManualApprovalSource, ManualGraphqlClient;
import 'package:pms_app/services/manual/document_approval_adapter.dart';
import 'package:quality_document/quality_document.dart' show DocumentApproval;

/// 品質管理文書の承認の取得元(アプリがマニュアルの取得元につなぐ)の通信テスト(検証用サーバー。読み取りだけ)。
void main() {
  serverTest('検証用サーバー(読み取りだけ): 文書コンテンツの ID から、文書の承認の状態を読める。存在しない ID は承認なし', (server) async {
    final client = server.provider.client;
    final adapter = GraphqlDocumentApprovalAdapter(client, GraphqlManualApprovalSource(ManualGraphqlClient(client)));

    final none = await adapter.of('00000000-0000-0000-0000-000000000000');
    expect(none.steps, isEmpty);
    expect(none.pending, isFalse);

    final r = await client.query(
      QueryOptions(
        document: gql('query { allMstrDocumentContents(first: 1, filter: {remove: {equalTo: false}}) { nodes { mstrDocumentContentId mstrDocumentId } } }'),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final nodes = ((r.data?['allMstrDocumentContents'] as Map?)?['nodes'] as List?) ?? const [];
    if (nodes.isEmpty) {
      markTestSkipped('文書コンテンツが無いため、中止した');
      return;
    }
    final a = await adapter.of((nodes.first as Map)['mstrDocumentContentId'] as String);
    expect(a, isA<DocumentApproval>());
    // 公開の判定は DB のビューの値(読めない・承認待ち・公開済みのどれかに必ず決まる)
    expect(a.readable || a.pending || a.statusLabel.isNotEmpty || a.steps.isEmpty, isTrue);
  });
}
