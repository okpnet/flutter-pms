import 'package:flutter/widgets.dart';

import '../model/design_node.dart';

/// アプリが提供する、name選択候補の1件。
class WidgetNameEntry {
  /// node.nameに書き込まれる実際の識別子
  final String name;

  /// 候補一覧に表示する分かりやすい名前
  final String label;

  /// キャンバス上でこのセルを描画する際にアプリが埋め込む子Widget。
  /// 省略した場合はlabel/nameのテキスト表示にフォールバックする。
  final Widget Function(BuildContext context, DesignNode node)? previewBuilder;

  const WidgetNameEntry({
    required this.name,
    required this.label,
    this.previewBuilder,
  });
}

class WidgetNameCatalog {
  final List<WidgetNameEntry> entries;
  const WidgetNameCatalog({required this.entries});

  WidgetNameEntry? findByName(String name) {
    for (final e in entries) {
      if (e.name == name) return e;
    }
    return null;
  }
}
