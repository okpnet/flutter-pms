import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../approval_defaults/approval_defaults_gateway.dart';

/// 標準の承認パターンの GraphQL 版の取得元。モデルは `organization_model` の `ApprovalDefaultsPage`・`ApprovalDefaultsPageEdit`
/// (`info_app` の対象ごとの承認パターンの列。外部キー)・`ApprovalPatternOptionPage`(選択肢の承認パターン。名称は言語 [languageCode])。
///
/// 保存は、8 つの列をすべて書く(NULL にするには、キーを残したまま null を送る。省略すると変わらないため)。更新者つき([auditUser])。
/// 外部キーで守られるため、存在しない承認パターンは保存できない。通信の失敗は例外のまま投げる(画面が「保存できませんでした」にする)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [ApprovalDefaults] を変換する)
class GraphqlApprovalDefaultsGateway implements IApprovalDefaultsGateway {
  GraphqlApprovalDefaultsGateway(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;
  final String languageCode;
  final AuditUserSource? auditUser;

  String? _infoAppId;

  /// DB の列名(camelCase)。対象 → 列。
  static String _field(String kind) {
    final parts = '${kind}_approval_pattern_id'.split('_');
    return parts.first + parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1)).join();
  }

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _languageId() async {
    final data = await _run(documentNodeQueryApprovalDefaultsLanguagePageRead, {'first': 50});
    final nodes = (data['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) return '${n['sharedLanguageCodeId']}';
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  @override
  Future<ApprovalDefaults> load() async {
    final data = await _run(documentNodeQueryApprovalDefaultsPageRead, {'first': 1});
    final nodes = (data['allInfoApps'] as Map?)?['nodes'] as List? ?? const [];
    final app = nodes.whereType<Map>().firstOrNull;
    if (app == null) throw StateError('info_app が見つかりません');
    _infoAppId = '${app['infoAppId']}';
    return ApprovalDefaults({
      for (final k in approvalDefaultKinds) k: app[_field(k)] as String?,
    });
  }

  @override
  Future<List<ApprovalPatternChoice>> patterns() async {
    final data = await _run(documentNodeQueryApprovalPatternOptionPageRead, {'first': 500, 'languageCodeId': await _languageId()});
    final nodes = (data['allMstrApprovalPatterns'] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes.whereType<Map>()) ApprovalPatternChoice(id: '${n['mstrApprovalPatternId']}', name: _name(n['labels'])),
    ];
  }

  @override
  Future<void> save(ApprovalDefaults value) async {
    if (_infoAppId == null) await load();
    final user = auditUser == null ? null : await auditUser!();
    await _run(
      documentNodeMutationApprovalDefaultsPageEdit,
      {
        'infoAppId': _infoAppId,
        for (final k in approvalDefaultKinds) _field(k): value.of(k), // null も送る(NULL にする)
        'updateUserId': ?user?.staffId,
        'updateUserHistoryId': ?user?.staffHistoryId,
      },
      mutation: true,
    );
  }

  static String _name(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final nodes = (dict['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }
}
