import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';

/// 担当者の最新の履歴の ID(`history_info_staff.history_id`。`revision` が最大の行)を引く関数を作る。
///
/// 更新者(`update_user_id`・`update_user_history_id`)の履歴の ID に使う。アプリが `current_user` の
/// `CurrentUserHolder` の `lookupHistory`(`StaffHistoryLookup`)に渡す(担当者の履歴の取得を、データ側のモデルで行う)。
/// 担当者に履歴が無いときは null を返す。通信の失敗は、そのまま投げる(更新者を欠いたまま保存しないため)。
/// 生成された型(`StaffHistoryLatestPage`)は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果を、履歴の ID の文字列にする)
Future<String?> Function(String staffId) staffHistoryLookup(
  GraphQLClient client,
) {
  return (staffId) async {
    final result = await client.query$StaffHistoryLatestPageRead(
      Options$Query$StaffHistoryLatestPageRead(
        variables: Variables$Query$StaffHistoryLatestPageRead.fromJson({
          'first': 1,
          'filter': {
            'infoStaffId': {'equalTo': staffId},
          },
          'orderBy': ['REVISION_DESC'],
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes = result.parsedData?.allHistoryInfoStaffs?.nodes;
    if (nodes == null || nodes.isEmpty) return null;
    return nodes.first?.historyId;
  };
}
