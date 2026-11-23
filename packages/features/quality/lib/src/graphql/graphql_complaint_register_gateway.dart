import 'dart:convert';

import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

import '../complaint_register/complaint_register_gateway.dart';

/// 異常の登録の GraphQL 版の取得元(Issue 20261123_0001 C-1)。
///
/// 登録は、DB の関数 `complaint_register`(題名・内容のラベルと文章・異常本体・種類の子の表を 1 トランザクションで登録する。
/// 生成モデル `ComplaintRegisterPageCall`)。種類は、対象の ID のうちどれを渡すかで決まる(コード値では分岐しない)。
/// 題名・内容は言語別の JSON(`{"ja": "…"}`。PostGraphile v4 は JSON を文字列で受け取るため `jsonEncode` する)。
/// 作業実績・ロットは、入力が ID(UUID)でなければ、シンボルとして ID に解決する(`ComplaintWorkRecordLookupPage`・`ComplaintVisiterLookupPage`)。
/// 見つからないときは、対象の誤り([ComplaintRegisterError.targetRequired])。DB の検査の誤り(`OPR01`・`OPR02` など)は、例外のまま投げる。
///
/// パターン: Adapter(画面の [ComplaintRegisterInput] を、DB の関数の引数に変換する)
class GraphqlComplaintRegisterGateway implements IComplaintRegisterGateway {
  GraphqlComplaintRegisterGateway(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;
  final String languageCode;
  final AuditUserSource? auditUser;

  static final _uuid = RegExp(r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$');

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  /// シンボル(または ID)から、対象の ID を引く。見つからないときは null。
  Future<String?> _resolve(String value, DocumentNode document, String listKey, String idKey) async {
    final v = value.trim();
    if (_uuid.hasMatch(v)) return v;
    final data = await _run(document, {
      'first': 1,
      'filter': {
        'symbol': {'equalTo': v},
      },
    });
    final nodes = (data[listKey] as Map?)?['nodes'] as List? ?? const [];
    return nodes.isEmpty ? null : '${(nodes.first as Map)[idKey]}';
  }

  @override
  Future<String> register(ComplaintRegisterInput input) async {
    final errors = validateComplaintRegister(input);
    if (errors.isNotEmpty) throw ComplaintRegisterException(errors);

    var targetId = input.targetId.trim();
    if (input.target == ComplaintTarget.work) {
      targetId = await _resolve(targetId, documentNodeQueryComplaintWorkRecordLookupPageRead, 'allTransWorkRecords', 'transWorkRecordId') ?? '';
    } else if (input.target == ComplaintTarget.visiter) {
      targetId = await _resolve(targetId, documentNodeQueryComplaintVisiterLookupPageRead, 'allTransVisiters', 'transVisiterId') ?? '';
    }
    if (targetId.isEmpty) throw const ComplaintRegisterException([ComplaintRegisterError.targetRequired]);

    String ml(String v) => jsonEncode({languageCode: v});
    final au = auditUser == null ? null : await auditUser!();
    final quantity = input.quantity.trim();
    final data = await _run(
      documentNodeMutationComplaintRegisterPageCall,
      {
        'pTitles': ml(input.title.trim()),
        if (input.details.trim().isNotEmpty) 'pDetails': ml(input.details.trim()),
        if (input.occurredAt != null) 'pOccurredAt': input.occurredAt!.toIso8601String(),
        // 対象の ID は、種類の引数 1 つだけに入れる
        switch (input.target) {
          ComplaintTarget.equipment => 'pEquipmentId',
          ComplaintTarget.process => 'pTaskId',
          ComplaintTarget.work => 'pWorkRecordId',
          ComplaintTarget.purchaseRec => 'pPurchaseRecId',
          ComplaintTarget.visiter => 'pVisiterId',
          ComplaintTarget.order => 'pOrderId',
          ComplaintTarget.stakeholder => 'pStakeholderId',
        }: targetId,
        if (quantity.isNotEmpty) 'pQuantity': quantity,
        'pStaffId': au?.staffId,
      },
      mutation: true,
    );
    final id = ((data['complaintRegister'] as Map?)?['transComplaint'] as Map?)?['transComplaintId'];
    if (id == null) throw StateError('異常を登録できませんでした');
    return '$id';
  }
}
