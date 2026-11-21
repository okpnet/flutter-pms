import 'package:approval/approval.dart';
import 'package:feature_shared/feature_shared.dart' show dashboardAlertSlotProvider;
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:pbapi/pbapi.dart' show sessionServiceProvider;

import '../graphql/graphql_overrides.dart' show pocketbaseEnabledProvider;

/// 承認一覧(`approval`)の差し込み。
///
/// - パスワードの確認: PocketBase に接続するとき、ログイン中のユーザーのパスワードを `pbapi` で照合する(今のセッションは変えない)。
///   接続しない環境(サンプル)は、確認できない(承認の操作はできない)。
/// - ダッシュボードの「承認待ちが N 件あります」: `ApprovalAlertBanner` を差し込む。
/// - 「参照」の移り先: 台帳の画面(`/e/<キー>?id=<行>`)へ。区分に対応する台帳のキーは、機能(`sales`・`purchasing`・`quality`)の定義に従う。
/// - 承認待ちの取得・承認の登録の取得元(`approvalGatewayProvider`)は、DB の承認のビュー・関数(`v_approval_pending`・
///   `approval_approve_many`)を再構築して取り込んだあとに、GraphQL 版へ差し替える(それまでは、メモリ上の空の取得元)。
List<Override> approvalOverrides() => [
  approvalPasswordVerifierProvider.overrideWith((ref) {
    if (!ref.read(pocketbaseEnabledProvider)) return const UnsupportedPasswordVerifier();
    return _SessionPasswordVerifier(ref.read(sessionServiceProvider).verifyPassword);
  }),
  dashboardAlertSlotProvider.overrideWithValue((context) => const ApprovalAlertBanner()),
  approvalTargetLocatorProvider.overrideWithValue(_targetLocation),
];

class _SessionPasswordVerifier implements IPasswordVerifier {
  _SessionPasswordVerifier(this._verify);
  final Future<bool> Function(String password) _verify;

  @override
  Future<bool> verify(String password) => _verify(password);
}

/// 区分と対象の ID から、台帳の画面のパス。対応する台帳が無い区分(文書は DB の文書とつなぐまで)は null。
String? _targetLocation(String kind, String targetId) {
  const entityKeys = {
    'order': 'order',
    'shipping_order': 'shipplan',
    'purchase': 'purchase',
    'unrecognized': 'unrec',
    'complaint': 'complaint',
  };
  final key = entityKeys[kind];
  if (key == null) return null;
  return '/e/$key?id=${Uri.encodeQueryComponent(targetId)}';
}
