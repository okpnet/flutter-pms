import 'dart:convert';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:manual_model/manual_model.dart';

import '../data/manual_approval.dart';
import 'graphql_manual_client.dart';

/// 文書(ルートのページ)の公開・承認の状態の GraphQL 版の取得元。
///
/// 判定・文字は DB のビューが持つ(`v_document_publication`: 公開・承認待ち・読める・スタンプ文字、`v_document_approval_stamp`:
/// 承認の段ごとの状態)。この取得元は値を [ManualApproval] に詰めるだけで、公開の判定を持たない。
/// 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)は、承認の実行(`trans_approval_pattern`)から元の承認パターンを
/// たどって読み、[ManualApproval.stampStyleOverride] に入れる(NULL は標準の設定。標準に重ねるのは `StampStyle.resolve`)。
/// 様式は見た目だけのため、読めなくても(通信の失敗・不正な JSON)承認の状態は返し、標準の様式にする。
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

    final styleOverride = await _stampStyleOf(p['transApprovalPatternId']);

    return ManualApproval(
      published: p['published'] == true,
      pending: p['pending'] == true,
      readable: p['readable'] == true,
      // スタンプを出さないとき(承認不要など。stamp_visible が false)は、段を渡さない
      steps: p['stampVisible'] == true ? steps : const [],
      statusLabel: '${(_english ? p['stampLabelEn'] : p['stampLabelJa']) ?? ''}',
      controlNumber: '${p['controlNumber'] ?? ''}',
      versionCode: '${p['versionCode'] ?? ''}',
      stampStyleOverride: styleOverride,
    );
  }

  /// 承認の実行([transApprovalPatternId])の元の承認パターンの `stamp_style`(JSON のオブジェクト)。無い・読めないときは null。
  Future<Object?> _stampStyleOf(Object? transApprovalPatternId) async {
    if (transApprovalPatternId == null) return null;
    try {
      final data = await api.run(documentNodeQueryManualApprovalStylePageRead, {
        'first': 1,
        'filter': {
          'transApprovalPatternId': {'equalTo': '$transApprovalPatternId'},
        },
      });
      final rows = ManualGraphqlClient.nodesOf(data, 'allTransApprovalPatterns');
      if (rows.isEmpty) return null;
      var style = (rows.first['pattern'] as Map?)?['stampStyle'];
      if (style is String) style = jsonDecode(style);
      return style is Map ? style : null;
    } catch (_) {
      return null;
    }
  }

  static String _label(Object? labels) => ManualGraphqlClient.labelOf(labels);
}
