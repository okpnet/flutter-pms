import '../model/breakpoint.dart';
import '../model/node_breakpoint_style.dart';

/// アプリ・既存レスポンシブライブラリへ渡す中間インターフェイスの1ノード。
/// Flutter Widgetには一切依存しない（純粋なデータ）。
class ResolvedNode {
  final String id;

  /// アプリが自身のWidget解決（Material/Cupertino等）に使うキー。
  /// nullの場合は子を並べるだけのグリッドコンテナであることを示す。
  final String? name;

  /// 3区分すべてが埋まった状態（継承解決済み、欠落なし）
  final Map<Breakpoint, NodeBreakpointStyle> resolvedStyles;

  final List<ResolvedNode> children;

  const ResolvedNode({
    required this.id,
    this.name,
    required this.resolvedStyles,
    this.children = const [],
  });
}
