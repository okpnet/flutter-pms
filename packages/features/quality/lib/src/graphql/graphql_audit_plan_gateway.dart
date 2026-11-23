import 'dart:convert';

import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

import '../audit_plan/audit_plan_gateway.dart';

/// 監査の計画の登録の GraphQL 版の取得元(モデルは `quality_model` の `AuditPlanStdOptionPage`・`AuditPlanStaffOptionPage`。Issue 20261123_0001)。
///
/// 選択肢(監査標準・担当者。名称は言語 [languageCode])は、生成モデルで読む。登録は、DB の関数 `audit_plan_register`(監査・チーム・監査員・
/// 監査実施詳細・ラベル・文章を 1 トランザクションで登録する)を呼ぶ。題名・詳細・チーム名は言語別の JSON(`{"ja": "…"}`)、行は JSON の配列
/// (PostGraphile v4 は JSON を文字列で受け取るため `jsonEncode` する)。責任者は担当者([auditUser]。無いときは DB が JWT の担当者を使う)。
/// 入力の検査は、通信の前に行う([AuditPlanException])。DB の検査の誤り(`AUD07`・`AUD08`・`AUD09` など)は、例外のまま投げる。
///
/// **暫定**: 登録の問い合わせは、スキーマの再取得(`melos run gql:schema`)ができなかったため、ここに手書きしている(入力・戻り値は
/// PostGraphile の命名規則どおり)。スキーマを取得できたら、`quality_model` の `AuditPlanRegisterPageCall`(`kind: function`)に移す。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [AuditPlanOption] を変換する)
class GraphqlAuditPlanGateway implements IAuditPlanGateway {
  GraphqlAuditPlanGateway(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;
  final String languageCode;
  final AuditUserSource? auditUser;

  static final DocumentNode _registerMutation = gql(r'''
mutation AuditPlanRegister(
  $pTitles: JSON
  $pDetails: JSON
  $pAuditStdId: UUID
  $pLines: JSON
  $pStaffId: UUID
) {
  auditPlanRegister(
    input: {pTitles: $pTitles, pDetails: $pDetails, pAuditStdId: $pAuditStdId, pLines: $pLines, pStaffId: $pStaffId}
  ) {
    transAudit {
      transAuditId
    }
  }
}
''');

  Future<String>? _languageId;

  Future<Map<String, dynamic>> _query(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _language() => _languageId ??= _loadLanguage();

  Future<String> _loadLanguage() async {
    final data = await _query(
      gql('query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }'),
      const {},
    );
    for (final n in ((data['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) return '${n['sharedLanguageCodeId']}';
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  static String _name(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final value = dict['value'];
    final nodes = value is Map ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  Future<List<AuditPlanOption>> _options(DocumentNode document, String listKey, String idKey) async {
    final data = await _query(document, {'first': 500, 'languageCodeId': await _language()});
    final nodes = (data[listKey] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes.whereType<Map>())
        AuditPlanOption(id: '${n[idKey]}', name: _name(n['labels']), code: '${n['code'] ?? ''}'),
    ];
  }

  @override
  Future<List<AuditPlanOption>> standards() =>
      _options(documentNodeQueryAuditPlanStdOptionPageRead, 'allMstrAuditStds', 'mstrAuditStdId');

  @override
  Future<List<AuditPlanOption>> staff() => _options(documentNodeQueryAuditPlanStaffOptionPageRead, 'allInfoStaffs', 'infoStaffId');

  @override
  Future<String> register(AuditPlanInput input) async {
    final errors = validateAuditPlan(input);
    if (errors.isNotEmpty) throw AuditPlanException(errors);
    final au = auditUser == null ? null : await auditUser!();
    String ml(String v) => jsonEncode({languageCode: v});
    final data = await _query(_registerMutation, {
      'pTitles': ml(input.title.trim()),
      if (input.details.trim().isNotEmpty) 'pDetails': ml(input.details.trim()),
      'pAuditStdId': input.standardId,
      'pLines': jsonEncode([
        for (final l in input.lines)
          {
            'team_names': {languageCode: l.teamName.trim()},
            'auditor_ids': l.auditorIds,
            if (l.scheduledAt != null) 'scheduled_at': l.scheduledAt!.toIso8601String(),
            if (l.expectedEndAt != null) 'expected_end_at': l.expectedEndAt!.toIso8601String(),
          },
      ]),
      'pStaffId': au?.staffId,
    }, mutation: true);
    final id = ((data['auditPlanRegister'] as Map?)?['transAudit'] as Map?)?['transAuditId'];
    if (id == null) throw StateError('監査計画を登録できませんでした');
    return '$id';
  }
}
