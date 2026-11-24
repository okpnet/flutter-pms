import 'package:announcement/announcement.dart' show AnnouncementBanner, unreadAnnouncementCountProvider;
import 'package:approval/approval.dart';
import 'package:feature_shared/feature_shared.dart' show dashboardAlertSlotProvider;
import 'package:flutter/widgets.dart' show BuildContext, Column, CrossAxisAlignment, Widget;
import 'package:flutter_riverpod/flutter_riverpod.dart' show ConsumerWidget, WidgetRef;
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:pbapi/pbapi.dart' show sessionServiceProvider;
import 'package:quality/quality.dart' show AuditNoticeBanner;

import '../graphql/graphql_overrides.dart' show graphqlClientProvider, pocketbaseEnabledProvider;

/// 承認一覧(`approval`)の差し込み。
///
/// - パスワードの確認: PocketBase に接続するとき、ログイン中のユーザーのパスワードを `pbapi` で照合する(今のセッションは変えない)。
///   接続しない環境(サンプル)は、確認できない(承認の操作はできない)。
/// - ダッシュボードの通知(差し込み口は 1 つ): 「承認待ちが N 件あります」(`ApprovalAlertBanner`)・「未読の通知が N 件あります」(`announcement` の `AnnouncementBanner`)と、
///   「監査の予定が N 件あります」(`quality` の `AuditNoticeBanner`。DB の `audit_notice`)を縦に並べて差し込む。
/// - 「参照」の移り先: 台帳の画面(`/e/<キー>?id=<行>`)へ。区分に対応する台帳のキーは、機能(`sales`・`purchasing`・`quality`)の定義に従う。
/// - 承認待ちの取得・承認の登録の取得元(`approvalGatewayProvider`): GraphQL に接続するときは `GraphqlApprovalGateway`(DB の
///   ビュー `v_approval_pending`・関数 `approval_approve_many`)、接続しないときはメモリ上の空の取得元。
List<Override> approvalOverrides() => [
  // GraphQL に接続するときは DB(ビュー v_approval_pending・関数 approval_approve_many)、しないときはメモリ上(空)
  approvalGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryApprovalGateway();
    return GraphqlApprovalGateway(client);
  }),
  approvalPasswordVerifierProvider.overrideWith((ref) {
    if (!ref.read(pocketbaseEnabledProvider)) return const UnsupportedPasswordVerifier();
    return _SessionPasswordVerifier(ref.read(sessionServiceProvider).verifyPassword);
  }),
  dashboardAlertSlotProvider.overrideWithValue(
    (context) => const _NoticeArea(),
  ),
  approvalTargetLocatorProvider.overrideWithValue(_targetLocation),
];

/// 通知の領域。承認待ちも監査の予定も無いときは「メッセージはありません」を出す(領域があることを示す)。
class _NoticeArea extends ConsumerWidget {
  const _NoticeArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final none =
        ref.watch(pendingCountsByKindProvider).values.fold<int>(0, (a, b) => a + b) == 0 && ref.watch(unreadAnnouncementCountProvider) == 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [const ApprovalAlertBanner(), const AnnouncementBanner(), AuditNoticeBanner(showWhenEmpty: none)],
    );
  }
}

class _SessionPasswordVerifier implements IPasswordVerifier {
  _SessionPasswordVerifier(this._verify);
  final Future<bool> Function(String password) _verify;

  @override
  Future<bool> verify(String password) => _verify(password);
}

/// 区分と対象の ID から、画面のパス。文書は、マニュアルのルートのページ。対応する画面が無い区分は null。
String? _targetLocation(String kind, String targetId) {
  const entityKeys = {
    'order': 'order',
    'shipping_order': 'shipplan',
    'purchase': 'purchase',
    'unrecognized': 'unrec',
    'complaint': 'complaint',
  };
  if (kind == 'document') return '/manual?id=${Uri.encodeQueryComponent(targetId)}';
  final key = entityKeys[kind];
  if (key == null) return null;
  return '/e/$key?id=${Uri.encodeQueryComponent(targetId)}';
}
