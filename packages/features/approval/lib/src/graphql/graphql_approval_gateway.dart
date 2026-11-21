import 'package:document_approval_model/document_approval_model.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';

import '../data/approval_data.dart';

/// 承認待ちの取得と承認の登録の GraphQL 版の取得元。モデルは `document_approval_model`
/// (`ApprovalPendingPage`: DB のビュー `v_approval_pending`、`ApprovalApproveManyPageCall`: DB 関数 `approval_approve_many`)。
///
/// - 承認待ち: ログイン中の担当者が承認者(`approver`)で、いま承認できる(`actionable`)行だけ。
/// - 承認: 承認前の ID を 1 回の呼び出しで渡す。結果は行ごと(失敗した行だけ登録されない)。担当者は DB が JWT の `staff_id` から決める。
/// - 区分は、ビューの boolean(`is_*`)で決める。件名には、対象の番号(リニアシンボル)を入れる(対象の名称は、対象の画面で見る)。
class GraphqlApprovalGateway implements IApprovalGateway {
  GraphqlApprovalGateway(this.client, {this.languageCode = 'ja'});

  final GraphQLClient client;

  /// 名称(承認の段・申請者)を出す言語。
  final String languageCode;

  String? _languageId;

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _language() async {
    final cached = _languageId;
    if (cached != null) return cached;
    final data = await _run(
      gql('query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }'),
      const {},
    );
    final nodes = (data['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) {
        return _languageId = n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  /// 呼称(`labels`)の、指定の言語の値。
  static String _label(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final nodes = (dict['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  static const _kinds = <(String flag, String kind, String idColumn)>[
    ('isDocument', 'document', 'mstrDocumentId'),
    ('isComplaint', 'complaint', 'transComplaintId'),
    ('isDisposal', 'disposal', 'transDisposalId'),
    ('isRecurrencePrevention', 'recurrence_prevention', 'transRecurrencePreventionId'),
    ('isOrder', 'order', 'transOrderId'),
    ('isPurchase', 'purchase', 'transPurchaseId'),
    ('isUnrecognized', 'unrecognized', 'transUnrecognizedId'),
    ('isShippingOrder', 'shipping_order', 'transShippingOrderId'),
  ];

  @override
  Future<List<PendingApproval>> loadPending() async {
    final data = await _run(
      documentNodeQueryApprovalPendingPageRead,
      Variables$Query$ApprovalPendingPageRead(
        first: 500,
        languageCodeId: await _language(),
        filter: Input$VApprovalPendingFilter(
          approver: Input$BooleanFilter(equalTo: true),
          actionable: Input$BooleanFilter(equalTo: true),
        ),
      ).toJson(),
    );
    final nodes = (data['allVApprovalPendings'] as Map?)?['nodes'] as List? ?? const [];
    final out = <PendingApproval>[];
    for (final n in nodes.whereType<Map>()) {
      String? kind;
      String targetId = '';
      for (final (flag, k, idColumn) in _kinds) {
        if (n[flag] == true) {
          kind = k;
          targetId = '${n[idColumn] ?? ''}';
          break;
        }
      }
      if (kind == null) continue; // 区分を決められない行は出さない
      final approval = n['approval'];
      out.add(
        PendingApproval(
          preapprovalId: '${n['transPreapprovalId']}',
          kind: kind,
          targetId: targetId,
          reference: '${n['targetSymbol'] ?? ''}',
          subject: '${n['targetSymbol'] ?? ''}',
          applicant: _label((n['applicant'] as Map?)?['labels']),
          appliedAt: n['appliedAt'] == null ? null : DateTime.tryParse('${n['appliedAt']}'),
          stepPriority: (n['approvalPriority'] as num?)?.toInt() ?? 1,
          stepName: approval is Map ? _label(approval['labels']) : '',
        ),
      );
    }
    return out;
  }

  @override
  Future<List<ApprovalOutcome>> approve(List<String> preapprovalIds, {String? remarks}) async {
    final data = await _run(
      documentNodeMutationApprovalApproveManyPageCall,
      Variables$Mutation$ApprovalApproveManyPageCall(pPreapprovalIds: preapprovalIds, pApproved: true, pRemarks: remarks).toJson(),
      mutation: true,
    );
    final results = (data['approvalApproveMany'] as Map?)?['results'] as List? ?? const [];
    return [
      for (final r in results.whereType<Map>())
        ApprovalOutcome(
          preapprovalId: '${r['preapprovalId']}',
          ok: r['ok'] == true,
          errorCode: r['errorCode'] as String?,
          errorMessage: r['errorMessage'] as String?,
        ),
    ];
  }
}
