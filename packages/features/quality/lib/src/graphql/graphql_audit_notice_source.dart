import 'package:graphql/client.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

import '../audit_notice/audit_notice_source.dart';

/// 監査の通知の GraphQL 版の取得元。DB の関数 `audit_notice(p_days_before)`(STABLE。PostGraphile では query。JWT の担当者がチームの監査員で、
/// 未終了で、予定日時が近い・過ぎた監査実施詳細。通知の行は作らない)を呼び、名称は監査実施詳細の読み込み(`AuditDetailPage`)から引く。
///
/// 問い合わせは生成モデル(`AuditNoticePageCall`。`audit_notice` は STABLE の関数で Query。生成器の `query:` 指定)。
/// 担当者の絞り込みは DB が JWT で行う。[auditUser] が無い(ログインしていない)ときは、通信せず空にする。
///
/// パターン: Adapter(関数の結果と、画面の [AuditNotice] を変換する)
class GraphqlAuditNoticeSource implements IAuditNoticeSource {
  GraphqlAuditNoticeSource(this.client, {this.auditUser, this.languageCode = 'ja'});

  final GraphQLClient client;
  final AuditUserSource? auditUser;
  final String languageCode;

  Future<String>? _languageId;

  Future<Map<String, dynamic>> _query(DocumentNode document, Map<String, dynamic> variables) async {
    final result = await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
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

  static String _label(Object? label) {
    if (label is! Map) return '';
    final value = label['value'];
    final nodes = value is Map ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['labelValue'] ?? ''}';
  }

  @override
  Future<List<AuditNotice>> notices({int daysBefore = 3}) async {
    if (auditUser == null || await auditUser!() == null) return const [];
    final data = await _query(documentNodeQueryAuditNoticePageCall, {'pDaysBefore': daysBefore});
    final nodes = [...((data['auditNotice'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
    if (nodes.isEmpty) return const [];
    final details = await _query(documentNodeQueryAuditDetailPageRead, {
      'first': 200,
      'languageCodeId': await _language(),
      'filter': {
        'transAuditDetailsId': {'in': [for (final n in nodes) '${n['transAuditDetailsId']}']},
      },
    });
    final names = <String, String>{};
    for (final d in ((details['allTransAuditDetails'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()) {
      final own = _label(d['labels']);
      final audit = d['audit'];
      names['${d['transAuditDetailsId']}'] = own.isNotEmpty ? own : (audit is Map ? _label(audit['labels']) : '');
    }
    return [
      for (final n in nodes)
        AuditNotice(
          detailId: '${n['transAuditDetailsId']}',
          title: names['${n['transAuditDetailsId']}'] ?? '',
          scheduledAt: n['scheduledAt'] == null ? null : DateTime.tryParse('${n['scheduledAt']}'),
          daysUntil: (n['daysUntil'] as num?)?.toInt() ?? 0,
          overdue: n['isOverdue'] == true,
          inProgress: n['isInProgress'] == true,
        ),
    ];
  }
}
