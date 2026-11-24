import 'package:announcement/announcement.dart' show GraphqlAnnouncementGateway, InMemoryAnnouncementGateway, announcementGatewayProvider;
import 'package:flutter_riverpod/misc.dart' show Override;

import '../graphql/graphql_overrides.dart' show auditUserProvider, graphqlClientProvider;

/// 通知(`announcement`)の差し込み。
///
/// - 取得元: GraphQL に接続するときは DB(表 `trans_announcement`・関数 `announcement_mark_read`・`audit_notify_due`)、しないときはメモリ上(空)。
///   担当者は、ログイン中のユーザーの担当者(更新者と同じ `auditUserProvider`)。
/// - ログインのたびの監査の予定の通知づくり・ダッシュボードの未読通知は、`announcement` の `AnnouncementBanner` が持つ
///   (ダッシュボードの領域は `approvalOverrides` の差し込み口に並べる)。
List<Override> announcementOverrides() => [
  announcementGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryAnnouncementGateway();
    return GraphqlAnnouncementGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
];
