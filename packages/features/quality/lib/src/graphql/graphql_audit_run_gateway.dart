import 'dart:convert';

import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:quality_model/quality_model.dart';

import '../audit_run/audit_run_gateway.dart';

/// 監査を実施する側の GraphQL 版の取得元(モデルは `quality_model` の `AuditDetailPage`・`AuditItemPage` ほか。Issue 20261122_0001)。
///
/// - 自分の監査: 割り当て(ビュー `v_audit_assignment`。`staff_id` = 自分。状態の boolean・文字・件数)を読み、名称(監査・チーム・監査実施詳細)は
///   監査実施詳細の読み込み(`AuditDetailPage`)から引く。検索は無い。
/// - 項目の値・所見(コメント)の保存は、1 表の更新(`AuditItemPageEdit`)+ 共通関数 `trans_text_save`(所見。言語 `ja`)。値は JSON `{"value": "…"}`。
/// - 開始・終了・異常の登録は、DB の関数(`audit_detail_start`・`audit_detail_finish`・`audit_complaint_register`。1 トランザクション)。
///   失敗(チームの監査員でない・未入力の項目がある・終了した監査など)は、例外のまま投げる。
/// - 項目の名称は、履歴の表に呼称への外部キーが無いため、現行の監査標準項目から読む。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [AuditAssignment]・[AuditItem] を変換する)
class GraphqlAuditRunGateway implements IAuditRunGateway {
  GraphqlAuditRunGateway(this.client, {this.auditUser, this.languageCode = 'ja'});

  final GraphQLClient client;
  final AuditUserSource? auditUser;
  final String languageCode;

  Future<String>? _languageId;
  final Map<String, String?> _findingsTextIds = {};

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _language() => _languageId ??= _loadLanguage();

  Future<String> _loadLanguage() async {
    final result = await client.query(
      QueryOptions(
        document: gql('query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }'),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes = (result.data?['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) return '${n['sharedLanguageCodeId']}';
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  Future<AuditUser?> _updater() async => auditUser == null ? null : auditUser!();

  static String _first(Object? list, String key) {
    final nodes = (list is Map ? list['nodes'] : null);
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)[key] ?? ''}';
  }

  static String _label(Object? label) => label is! Map ? '' : _first(label['value'], 'labelValue');

  static DateTime? _date(Object? v) => v == null ? null : DateTime.tryParse('$v');

  AuditAssignment _assignment(Map<dynamic, dynamic> n, [Map<dynamic, dynamic>? view]) {
    final audit = n['audit'];
    final team = n['team'];
    final conclusion = n['conclusionText'];
    final en = languageCode.toLowerCase() == 'en';
    return AuditAssignment(
      id: '${n['transAuditDetailsId']}',
      auditName: audit is Map ? _label(audit['labels']) : '',
      name: _label(n['labels']),
      teamName: team is Map ? _label(team['labels']) : '',
      scheduledAt: _date(n['scheduledAt']),
      expectedEndAt: _date(n['expectedEndAt']),
      performedDate: _date(n['performedDate']),
      endedAt: _date(n['endedAt']),
      conclusion: conclusion is Map ? _first(conclusion['value'], 'textValue') : '',
      planned: view?['isPlanned'] as bool?,
      inProgress: view?['isInProgress'] as bool?,
      done: view?['isDone'] as bool?,
      overdue: view?['isOverdue'] as bool?,
      statusLabel: view == null ? '' : '${view[en ? 'statusLabelEn' : 'statusLabelJa'] ?? ''}',
      itemCount: (view?['itemCount'] as num?)?.toInt() ?? 0,
      answeredCount: (view?['answeredCount'] as num?)?.toInt() ?? 0,
      complaintCount: (view?['complaintCount'] as num?)?.toInt() ?? 0,
    );
  }

  Future<List<Map<dynamic, dynamic>>> _details(Map<String, dynamic> filter) async {
    final data = await _run(documentNodeQueryAuditDetailPageRead, {'first': 200, 'languageCodeId': await _language(), 'filter': filter});
    final nodes = (data['allTransAuditDetails'] as Map?)?['nodes'] as List? ?? const [];
    return [...nodes.whereType<Map>()];
  }

  /// 自分の割り当て(ビュー。監査実施詳細の ID → 行)。`detailId` を渡すと、その監査実施詳細だけ。
  Future<Map<String, Map<dynamic, dynamic>>> _views(String staffId, {String? detailId}) async {
    final data = await _run(documentNodeQueryAuditAssignmentPageRead, {
      'first': 500,
      'filter': {
        'staffId': {'equalTo': staffId},
        if (detailId != null) 'transAuditDetailsId': {'equalTo': detailId},
      },
    });
    final nodes = (data['allVAuditAssignments'] as Map?)?['nodes'] as List? ?? const [];
    return {for (final n in nodes.whereType<Map>()) '${n['transAuditDetailsId']}': n};
  }

  @override
  Future<List<AuditAssignment>> myAssignments() async {
    final user = await _updater();
    if (user == null) return const [];
    final views = await _views(user.staffId);
    if (views.isEmpty) return const [];
    final rows = await _details({
      'transAuditDetailsId': {'in': views.keys.toList()},
    });
    return [for (final n in rows) _assignment(n, views['${n['transAuditDetailsId']}'])];
  }

  @override
  Future<AuditAssignment?> assignment(String detailId) async {
    final rows = await _details({
      'transAuditDetailsId': {'equalTo': detailId},
    });
    if (rows.isEmpty) return null;
    final user = await _updater();
    final view = user == null ? null : (await _views(user.staffId, detailId: detailId))[detailId];
    return _assignment(rows.first, view);
  }

  @override
  Future<List<AuditItem>> items(String detailId) async {
    final data = await _run(documentNodeQueryAuditItemPageRead, {
      'first': 500,
      'languageCodeId': await _language(),
      'filter': {
        'transAuditDetailsId': {'equalTo': detailId},
      },
    });
    final nodes = (data['allTransAuditDetailCheckItems'] as Map?)?['nodes'] as List? ?? const [];
    final items = <AuditItem>[];
    for (final n in nodes.whereType<Map>()) {
      final id = '${n['transAuditDetailCheckItemsId']}';
      final std = n['standard'];
      final master = std is Map ? std['master'] : null;
      final findings = n['findingsText'];
      _findingsTextIds[id] = findings is Map ? findings['transTextId'] as String? : null;
      final value = n['formulaValue'];
      final complaints = (n['complaints'] as Map?)?['nodes'] as List? ?? const [];
      var text = '';
      if (value is Map) {
        text = '${value['value'] ?? ''}';
      } else if (value is String && value.isNotEmpty) {
        try {
          final decoded = jsonDecode(value);
          text = decoded is Map ? '${decoded['value'] ?? ''}' : '$decoded';
        } catch (_) {
          text = value;
        }
      }
      items.add(
        AuditItem(
          id: id,
          detailId: detailId,
          name: master is Map ? _dictionaryName(master['labels']) : '',
          code: std is Map ? '${std['code'] ?? ''}' : '',
          value: text,
          findings: findings is Map ? _first(findings['value'], 'textValue') : '',
          complaints: [
            for (final c in complaints.whereType<Map>())
              AuditComplaintRef(
                linkId: '${c['transAuditComplaintId']}',
                complaintId: '${c['transComplaintId']}',
                title: c['complaint'] is Map ? _label((c['complaint'] as Map)['labels']) : '',
              ),
          ],
        ),
      );
    }
    return items;
  }

  static String _dictionaryName(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    return dict is! Map ? '' : _first(dict['value'], 'dictionaryValue');
  }

  @override
  Future<void> saveItem(AuditItem item, {required String value, required String findings}) async {
    final au = await _updater();
    String? textId = _findingsTextIds[item.id];
    if (findings != item.findings) {
      final saved = await _run(
        documentNodeMutationAuditTextSavePageCall,
        {
          'pTextId': textId,
          'pValues': jsonEncode({languageCode: findings}),
          'pStaffId': au?.staffId,
          'pStaffHistoryId': au?.staffHistoryId,
        },
        mutation: true,
      );
      textId = ((saved['transTextSave'] as Map?)?['transText'] as Map?)?['transTextId'] as String?;
      _findingsTextIds[item.id] = textId;
    }
    await _run(
      documentNodeMutationAuditItemPageEdit,
      {
        'transAuditDetailCheckItemsId': item.id,
        if (value != item.value) 'formulaValue': jsonEncode({'value': value}),
        if (findings != item.findings) 'findings': textId,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  @override
  Future<void> start(String detailId) async {
    final au = await _updater();
    await _run(documentNodeMutationAuditDetailStartPageCall, {'pAuditDetailsId': detailId, 'pStaffId': au?.staffId}, mutation: true);
  }

  @override
  Future<void> finish(String detailId, {required String conclusion}) async {
    final au = await _updater();
    await _run(
      documentNodeMutationAuditDetailFinishPageCall,
      {
        'pAuditDetailsId': detailId,
        if (conclusion.trim().isNotEmpty) 'pConclusion': jsonEncode({languageCode: conclusion.trim()}),
        'pForce': true, // 未入力の項目は、画面で見えている(押し切る)
        'pStaffId': au?.staffId,
      },
      mutation: true,
    );
  }

  @override
  Future<AuditComplaintRef> registerComplaint(String itemId, {required String title, required String details}) async {
    final au = await _updater();
    final data = await _run(
      documentNodeMutationAuditComplaintRegisterPageCall,
      {
        'pItemId': itemId,
        'pTitles': jsonEncode({languageCode: title}),
        if (details.trim().isNotEmpty) 'pDetails': jsonEncode({languageCode: details.trim()}),
        'pStaffId': au?.staffId,
      },
      mutation: true,
    );
    final row = (data['auditComplaintRegister'] as Map?)?['transAuditComplaint'] as Map?;
    if (row == null) throw StateError('異常を登録できませんでした');
    return AuditComplaintRef(linkId: '${row['transAuditComplaintId']}', complaintId: '${row['transComplaintId']}', title: title);
  }
}
