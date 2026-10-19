import '../grid/grid_config.dart';
import 'resolved_node.dart';

/// 既存レスポンシブGridライブラリへ渡す中間インターフェイスの起点。
/// アプリはこのオブジェクト経由で「区分ごとの列数」と
/// 「継承解決済みのノードツリー」の両方を参照する。
class ResolvedDesign {
  /// アプリが提供したGridConfigをそのまま保持する（要件6）。
  /// spanの分母（列数）を解釈する際、アプリはここを参照すればよい。
  final GridConfig gridConfig;

  final List<ResolvedNode> rootNodes;

  const ResolvedDesign({required this.gridConfig, required this.rootNodes});
}
