import 'package:graphql/client.dart';

/// 更新者(ログイン中の担当者)。登録・更新・論理削除の `update_user_id`・`update_user_history_id` に渡す。
///
/// 担当者の ID は、ログインしているユーザーの ID を保持している状態管理(アプリの認証のセッション。
/// `pbapi` の `SessionService.current.appUserId` = アプリの DB の担当者の ID)から貰う。履歴の ID は、その担当者の最新の履歴
/// (`history_info_staff` の `revision` が最大の行)で、[AuditUserResolver] が引く。
class AuditUser {
  const AuditUser({required this.staffId, required this.staffHistoryId});

  /// 担当者の ID(`info_staff_id`)。
  final String staffId;

  /// 担当者の最新の履歴の ID(`history_info_staff.history_id`)。
  final String staffHistoryId;

  Map<String, Object?> toJson() => {
    'staffId': staffId,
    'staffHistoryId': staffHistoryId,
  };

  @override
  String toString() => 'AuditUser(${toJson()})';
}

/// 更新者を返す関数。ログインしていない(担当者が分からない)ときは null を返す。
/// 取得元(リポジトリ)は、書き込みのたびに呼ぶ。null のときは、更新者を送らない(DB の列は NULL のまま)。
typedef AuditUserSource = Future<AuditUser?> Function();

/// ログイン中の担当者の ID([staffId])から、最新の履歴の ID を引いて [AuditUser] にする。
///
/// 同じ担当者は、履歴の ID を取り直さない(担当者が変わったとき(ログインし直し)だけ引く)。
/// 担当者の履歴が無いときは null。通信の失敗は、そのまま投げる(更新者を欠いたまま保存しないため)。
///
/// パターン: Proxy(履歴の ID の取得と使い回しを、呼び出し側から隠す)
class AuditUserResolver {
  AuditUserResolver({
    required GraphQLClient client,
    required String? Function() staffId,
  }) : _client = client,
       _staffId = staffId;

  final GraphQLClient _client;
  final String? Function() _staffId;
  AuditUser? _cache;

  static const _query = r'''
query AuditUserHistory($id: UUID!) {
  allHistoryInfoStaffs(first: 1, condition: {infoStaffId: $id}, orderBy: REVISION_DESC) {
    nodes { historyId }
  }
}
''';

  Future<AuditUser?> call() async {
    final id = _staffId();
    if (id == null || id.isEmpty) return null;
    final cached = _cache;
    if (cached != null && cached.staffId == id) return cached;
    final result = await _client.query(
      QueryOptions(
        document: gql(_query),
        variables: {'id': id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allHistoryInfoStaffs'] as Map?)?['nodes'] as List? ??
        const [];
    if (nodes.isEmpty) return null;
    return _cache = AuditUser(
      staffId: id,
      staffHistoryId: (nodes.first as Map)['historyId'] as String,
    );
  }
}
