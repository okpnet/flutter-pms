import 'package:announcement_model/announcement_model.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../data/announcement_data.dart';

/// 通知の GraphQL 版の取得元。モデルは `announcement_model`(`AnnouncementPage`: 表 `trans_announcement`、`AnnouncementMarkReadPageCall`:
/// DB 関数 `announcement_mark_read`)。監査の予定の通知づくり(DB 関数 `audit_notify_due`。整数を返す)は、スカラーの戻り値のため GraphQL の文で直接呼ぶ。
///
/// - 一覧: 宛先(`to_staff_id`)がログイン中の担当者の行だけ(担当者は [auditUser] から)。通知の文は、DB の題名・本文(言語 [languageCode])をそのまま使う。
/// - 既読: 自分宛てだけ DB が受け付ける(他の人の通知・削除済みは `ANN01`)。
/// - 担当者が分からないとき(ログイン前・取得元が無い)は、空の一覧にして、通知づくりは呼ばない。
class GraphqlAnnouncementGateway implements IAnnouncementGateway {
  GraphqlAnnouncementGateway(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;
  final String languageCode;
  final AuditUserSource? auditUser;

  String? _languageId;

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String?> _staffId() async => auditUser == null ? null : (await auditUser!())?.staffId;

  /// 言語コード(大文字小文字は区別しない)の ID。最初の 1 回だけ引く。
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

  @override
  Future<List<Announcement>> mine() async {
    final staff = await _staffId();
    if (staff == null) return const [];
    final data = await _run(documentNodeQueryAnnouncementPageRead, {
      'first': 200,
      'languageCodeId': await _language(),
      'filter': {
        'toStaffId': {'equalTo': staff},
      },
    });
    final nodes = ((data['allTransAnnouncements'] as Map?)?['nodes'] as List?) ?? const [];
    final out = [
      for (final n in nodes.whereType<Map>())
        Announcement(
          id: '${n['transAnnouncementId']}',
          title: _value(n['titleLabel'], 'labelValue'),
          message: _value(n['messageText'], 'textValue'),
          category: '${n['category'] ?? ''}',
          isRead: n['isRead'] == true,
          expiresAt: _date(n['expirationDate']),
          targetSymbol: n['targetSymbol'] as String?,
          at: _date(n['updateAt']),
        ),
    ];
    // 新しい順(DB の並びに頼らない)
    out.sort((a, b) => (b.at ?? DateTime(0)).compareTo(a.at ?? DateTime(0)));
    return out;
  }

  @override
  Future<void> markRead(String id) async {
    await _run(documentNodeMutationAnnouncementMarkReadPageCall, {'pAnnouncementId': id, 'pStaffId': await _staffId()}, mutation: true);
  }

  @override
  Future<int> notifyDue({int daysBefore = 3}) async {
    final staff = auditUser == null ? null : await auditUser!();
    if (staff == null) return 0;
    final data = await _run(
      gql(r'''
mutation AuditNotifyDue($pDaysBefore: Int, $pStaffId: UUID, $pStaffHistoryId: UUID) {
  auditNotifyDue(input: {pDaysBefore: $pDaysBefore, pStaffId: $pStaffId, pStaffHistoryId: $pStaffHistoryId}) { integer }
}
'''),
      {'pDaysBefore': daysBefore, 'pStaffId': staff.staffId, 'pStaffHistoryId': staff.staffHistoryId},
      mutation: true,
    );
    return ((data['auditNotifyDue'] as Map?)?['integer'] as num?)?.toInt() ?? 0;
  }

  /// 題名・本文の入れ子(`<parent>.value.nodes[0].<field>`)の値。無ければ空。
  static String _value(Object? parent, String field) {
    final value = (parent is Map) ? parent['value'] : null;
    final nodes = (value is Map) ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    final v = (nodes.first as Map)[field];
    return v == null ? '' : '$v';
  }

  static DateTime? _date(Object? v) => v is String ? DateTime.tryParse(v) : null;
}
