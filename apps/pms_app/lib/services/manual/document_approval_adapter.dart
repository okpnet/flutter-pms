import 'package:graphql/client.dart';
import 'package:manual/manual.dart' show GraphqlManualApprovalSource, ManualApproval;
import 'package:quality_document/quality_document.dart' show DocumentApproval, IDocumentApprovalSource;

/// 品質管理文書の本文の画面・PDF の承認の状態を、DB のビュー(`v_document_publication`・`v_document_approval_stamp`)から読む取得元。
///
/// 判定は DB のビューが持つ。ここは、文書コンテンツの ID から文書(`mstr_document`)の ID を引き、
/// マニュアルの取得元(`GraphqlManualApprovalSource`)の結果を詰め替えるだけ(2 つの機能は互いに依存しないため、アプリがつなぐ)。
///
/// パターン: Adapter(マニュアルの承認の状態 → 文書の承認の状態)
class GraphqlDocumentApprovalAdapter implements IDocumentApprovalSource {
  GraphqlDocumentApprovalAdapter(this.client, this.manual);

  final GraphQLClient client;
  final GraphqlManualApprovalSource manual;

  static final _contentQuery = gql(r'''
query DocumentOfContent($id: UUID!) {
  allMstrDocumentContents(first: 1, filter: {mstrDocumentContentId: {equalTo: $id}}) {
    nodes { mstrDocumentId }
  }
}
''');

  @override
  Future<DocumentApproval> of(String contentId) async {
    final result = await client.query(
      QueryOptions(document: _contentQuery, variables: {'id': contentId}, fetchPolicy: FetchPolicy.noCache),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes = ((result.data?['allMstrDocumentContents'] as Map?)?['nodes'] as List?) ?? const [];
    final documentId = nodes.isEmpty ? null : (nodes.first as Map)['mstrDocumentId'] as String?;
    if (documentId == null) return DocumentApproval.none; // 内容が無い(まだ登録されていない)ときは、承認なし
    return _of(await manual.of(documentId));
  }

  static DocumentApproval _of(ManualApproval a) => DocumentApproval(
    pending: a.pending,
    readable: a.readable,
    steps: a.steps,
    statusLabel: a.statusLabel,
    controlNumber: a.controlNumber,
    versionCode: a.versionCode,
    stampStyleOverride: a.stampStyleOverride,
  );
}
