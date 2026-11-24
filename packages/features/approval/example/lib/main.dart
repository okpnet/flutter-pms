import 'package:approval/approval.dart';
import 'package:approval/approval_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 見本の承認待ち(承認者がログインユーザーのもの)。
List<PendingApproval> sampleApprovals() => [
  PendingApproval(preapprovalId: 'p1', kind: 'document', targetId: 'm4', subject: '工程管理(改訂 3)', detail: 'ページの改訂', applicant: '高橋 美咲', appliedAt: DateTime(2026, 11, 19)),
  PendingApproval(preapprovalId: 'p2', kind: 'document', targetId: 'm5', subject: '不適合の管理(改訂 2)', detail: 'ページの改訂', applicant: '田中 誠', appliedAt: DateTime(2026, 11, 19)),
  PendingApproval(preapprovalId: 'p3', kind: 'order', targetId: 'o1', reference: 'SO-2610-001', subject: '北斗機械株式会社 受注', detail: '納期 2026年11月10日', applicant: '小林 恵子', appliedAt: DateTime(2026, 10, 2)),
  PendingApproval(preapprovalId: 'p4', kind: 'order', targetId: 'o2', reference: 'SO-2610-002', subject: 'みなと精密株式会社 受注', detail: '納期 2026年11月20日', applicant: '吉田 裕子', appliedAt: DateTime(2026, 10, 8), stepPriority: 2, stepName: '部長'),
  PendingApproval(preapprovalId: 'p5', kind: 'shipping_order', targetId: 's1', reference: 'SP-001', subject: '出荷予定 SP-001', detail: '出荷予定日 2026年11月8日', applicant: '渡辺 真由美', appliedAt: DateTime(2026, 11, 5)),
  PendingApproval(preapprovalId: 'p6', kind: 'purchase', targetId: 'u1', reference: '2026/10/20', subject: '北斗ファスナー株式会社 発注', detail: '発注期限 2026年10月10日', applicant: '中村 大輔', appliedAt: DateTime(2026, 10, 6)),
  PendingApproval(preapprovalId: 'p7', kind: 'unrecognized', targetId: 'n1', reference: '2026/10/05', subject: '非計上発注', detail: '納期 2026年10月10日', applicant: '中村 大輔', appliedAt: DateTime(2026, 10, 5)),
  PendingApproval(preapprovalId: 'p8', kind: 'complaint', targetId: 'c1', subject: '寸法不良', detail: '外観・寸法', applicant: '田中 誠', appliedAt: DateTime(2026, 10, 12)),
  PendingApproval(preapprovalId: 'p9', kind: 'disposal', targetId: 'd1', subject: '寸法不良品の選別', detail: '処置年月日 2026年10月12日', applicant: '田中 誠', appliedAt: DateTime(2026, 10, 12)),
  PendingApproval(preapprovalId: 'p10', kind: 'recurrence_prevention', targetId: 'r1', subject: '測定手順の見直し', detail: '発生年月日 2026年10月14日', applicant: '伊藤 直樹', appliedAt: DateTime(2026, 10, 14)),
];

class _DemoPasswordVerifier implements IPasswordVerifier {
  const _DemoPasswordVerifier();

  /// 見本のパスワードは `demo-password`。
  @override
  Future<bool> verify(String password) async => password == 'demo-password';
}

/// 承認一覧を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる(取得元・パスワードの確認はメモリ上の見本。パスワードは `demo-password`)。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '承認一覧 (example)',
    modules: const [ApprovalModule()],
    entries: const [
      FeatureHostEntry('運用と改善の承認一覧', ApprovalListDestination('operations')),
      FeatureHostEntry('営業の承認一覧', ApprovalListDestination('sales')),
      FeatureHostEntry('購買の承認一覧', ApprovalListDestination('purchasing')),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      approvalGatewayProvider.overrideWith((ref) => InMemoryApprovalGateway(sampleApprovals())),
      approvalPasswordVerifierProvider.overrideWithValue(const _DemoPasswordVerifier()),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
