import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:manual/manual.dart';

/// 検証用サーバー(DB)の実物に対する通信テスト。**データを変更する**(書き込みのテスト)。
/// 作ったデータは、マニュアルの操作からは消せない(論理削除の操作が無い)ため、検証用 DB に残る(DB を作り直すときに消える)。
/// 読み取りだけにしたいときは `--exclude-tags server` で除外する。
/// 管理者の資格情報で実行する(`PMS_TEST_USER`・`PMS_TEST_PASSWORD`)。
void main() {
  serverTest('変更する: ルートの作成 → 子ページ → 本文の保存 → ページ名の変更 → 履歴の復元 → 承認の状態', (server) async {
    final client = GraphQLClient(
      link: HttpLink(server.url, defaultHeaders: server.provider.headers),
      cache: GraphQLCache(),
    );
    final api = ManualGraphqlClient(client);
    final repo = GraphqlManualRepository(api);
    final stamp = DateTime.now().microsecondsSinceEpoch.toRadixString(36);

    // 前提: ルートの文書には文書階層が要る。無ければ(検証用 DB は空のことがある)、テスト用に 1 件作る
    final tiers = await client.query(
      QueryOptions(
        document: gql('query { allMstrDocumentTiers(first: 1, filter: {remove: {equalTo: false}}) { totalCount } }'),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    expect(tiers.exception, isNull);
    if (((tiers.data!['allMstrDocumentTiers'] as Map)['totalCount'] as int) == 0) {
      final name = await api.run(
        gql(r'mutation($n: JSON) { sharedAppellationSave(input: {pName: $n}) { sharedAppellation { sharedAppellationsId } } }'),
        {'n': '{"ja":"テスト階層 $stamp"}'},
        mutation: true,
      );
      final names = ((name['sharedAppellationSave'] as Map)['sharedAppellation'] as Map)['sharedAppellationsId'];
      final tier = await api.run(
        gql(
          r'mutation($c: String!, $n: UUID, $i: String!) { createMstrDocumentTier(input: {mstrDocumentTier: {code: $c, names: $n, attributiveNoun: "文書", identifier: $i, tierNumber: 1}}) { mstrDocumentTier { mstrDocumentTierId } } }',
        ),
        {'c': 'TT-$stamp', 'n': names, 'i': 'T'},
        mutation: true,
      );
      expect(tier['createMstrDocumentTier'], isNotNull);
    }

    final ManualPageRecord root;
    try {
      root = await repo.create(
        parentId: null,
        title: 'テスト文書 $stamp',
        md: '',
        updatedBy: 'test',
        canEdit: true,
        controlNumber: 'TEST-$stamp',
      );
    } on ManualException catch (e) {
      if (e.error != ManualError.approvalPatternMissing) rethrow;
      // 検証用 DB に、文書の承認パターンの設定(info_app.document_approval_pattern_id)が無いと、文書は登録できない
      markTestSkipped('文書の承認パターンが設定されていないため、書き込みのテストを中止した');
      return;
    }
    expect(root.isRoot, isTrue);
    expect(root.title, 'テスト文書 $stamp');

    final child = await repo.create(parentId: root.id, title: '章 $stamp', md: '# 初版', updatedBy: 'test', canEdit: true);
    expect(child.parentId, root.id);
    expect(child.md, '# 初版');
    expect(child.rev, 1);

    final grand = await repo.create(parentId: child.id, title: '節 $stamp', md: '節の本文', updatedBy: 'test', canEdit: true);
    expect(grand.parentId, child.id);

    final saved = await repo.update(child.id, title: child.title, md: '# 第 2 版\n\n[[節 $stamp]]', updatedBy: 'test', canEdit: true);
    expect(saved.md, '# 第 2 版\n\n[[節 $stamp]]');
    expect(saved.rev, 2);
    expect(saved.history.map((h) => h.rev), [1]);
    expect(saved.history.single.md, '# 初版');

    // ページ名を変えると、ほかのページのリンクが追従する
    await repo.update(grand.id, title: '節 $stamp 改', md: '節の本文', updatedBy: 'test', canEdit: true);
    final pages = await repo.list();
    expect(pages.firstWhere((p) => p.id == child.id).md, '# 第 2 版\n\n[[節 $stamp 改]]');

    final restored = await repo.restore(child.id, 1, updatedBy: 'test', canEdit: true);
    expect(restored.md, '# 初版');

    // 公開・承認の状態(承認の設定が無ければ承認なし = 公開)
    final approval = await GraphqlManualApprovalSource(api).of(root.id);
    expect(approval.readable, isTrue);
  }, timeout: const Timeout(Duration(minutes: 2)));
}
