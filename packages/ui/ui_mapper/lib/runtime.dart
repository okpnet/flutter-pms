// DesignDocument + GridConfig を、
// 継承解決済みの中間インターフェイス（ResolvedDesign）へ変換する層。
// アプリはここまでの出力を、既存のレスポンシブGridライブラリと
// 自前のWidget解決ロジックへ渡す。Flutter Widgetには一切依存しない。
export 'src/runtime/resolved_node.dart';
export 'src/runtime/resolved_design.dart';
export 'src/runtime/design_resolver.dart';
