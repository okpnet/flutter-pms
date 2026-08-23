// デザインUI（要件3）。ライブラリ内で唯一Flutter Widgetを組み立てる層。
// 見た目は独自テーマを持たず、埋め込み先アプリのThemeをそのまま使う。
export 'src/editor/design_editor_controller.dart';
export 'src/editor/design_canvas.dart';
export 'src/editor/canvas_row_layout.dart';
export 'src/editor/cell_drag_controller.dart';
export 'src/editor/cell_resize_controller.dart';
export 'src/editor/node_property_panel.dart';
export 'src/editor/widget_name_catalog.dart';

// design_tree_utils.dart は editor内部の実装詳細（findNodeById等）のため、
// 意図的に export しない（アプリからは呼ばせない）。
