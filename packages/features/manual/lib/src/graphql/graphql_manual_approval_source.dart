import 'package:approval_stamp/approval_stamp.dart';
import 'package:manual_model/manual_model.dart';

import '../data/manual_approval.dart';
import 'graphql_manual_client.dart';

/// 文書(ルートのページ)の公開・承認の状態の GraphQL 版の取得元。
///
/// 判定・文字は DB のビューが持つ(`v_document_publication`: 公開・承認待ち・読める・スタンプ文字、`v_document_approval_stamp`:
/// 承認の段ごとの状態)。この取得元は値を [ManualApproval] に詰めるだけで、公開の判定を持たない。
/// 承認パターンごとのスタンプの様式(`stamp_style`)は読まない(標準の設定を使う)。
///
/// パターン: Adapter(ビューの行 → 画面・PDF の承認の状態)
class GraphqlManualApprovalSource implements IManualApprovalSource {
  GraphqlManualApprovalSource(this.api);

  final ManualGraphqlClient api;

  bool get _english => api.languageCode.toLowerCase().startsWith('en');

  @override
  Future<ManualApproval> of(String rootPageId) async {
    final lang = await api.languageId(documentNodeQueryManualLanguagePageRead);
    final filter = {
      'mstrDocumentId': {'equalTo': rootPageId},
    };
    final pub = await api.run(documentNodeQueryManualPublicationPageRead, {'first': 1, 'filter': filter});
    final rows = ManualGraphqlClient.nodesOf(pub, 'allVDocumentPublications');
    if (rows.isEmpty) return ManualApproval.none; // 文書が無い(ルートが DB にまだ無い)ときは、承認なし
    final p = rows.first;

    final stamp = await api.run(documentNodeQueryManualApprovalStampPageRead, {
      'first': 100,
      'languageCodeId': lang,
      'filter': filter,
    });
    final steps = <ApprovalStepInfo>[
      for (final s in ManualGraphqlClient.nodesOf(stamp, 'allVDocumentApprovalStamps'))
        ApprovalStepInfo(
          approved: s['approved'] == true,
          rejected: s['rejected'] == true,
          pending: s['pending'] == true,
          stampLabelJa: '${s['stampLabelJa'] ?? ''}',
          stampLabelEn: '${s['stampLabelEn'] ?? ''}',
          priority: (s['approvalPriority'] as num?)?.toInt() ?? 0,
          approvedAt: ManualGraphqlClient.dateOf(s['approvedAt']),
          approvedStaff: _label((s['approved_staff'] as Map?)?['labels']),
          approvalName: _label((s['approval'] as Map?)?['labels']),
          versionCode: s['versionCode'] as String?,
          controlNumber: s['controlNumber'] as String?,
          documentRevision: (s['documentRevision'] as num?)?.toInt(),
        ),
    ]..sort((a, b) => a.priority.compareTo(b.priority));

    return ManualApproval(
      published: p['published'] == true,
      pending: p['pending'] == true,
      readable: p['readable'] == true,
      // スタンプを出さないとき(承認不要など。stamp_visible が false)は、段を渡さない
      steps: p['stampVisible'] == true ? steps : const [],
      statusLabel: '${(_english ? p['stampLabelEn'] : p['stampLabelJa']) ?? ''}',
      controlNumber: '${p['controlNumber'] ?? ''}',
      versionCode: '${p['versionCode'] ?? ''}',
    );
  }

  static String _label(Object? labels) => ManualGraphqlClient.labelOf(labels);
}
