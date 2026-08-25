import 'breakpoint.dart';
import 'node_breakpoint_style.dart';

enum NodeKind { widget, container, spacer }

class DesignNode {
  final String id;
  final String? name;
  final List<DesignNode> children;
  final NodeKind nodeType;
  bool get isLeaf => children.isEmpty;

  /// 未指定の区分は手前の区分を継承する（compactは基準値のため必須）。
  final Map<Breakpoint, NodeBreakpointStyle> styles;

  DesignNode({
    // constを削除
    required this.id,
    required this.nodeType,
    this.name,
    this.children = const [],

    required this.styles,
  }) {
    if (!styles.containsKey(Breakpoint.compact)) {
      throw ArgumentError(
        'DesignNode(id: $id): styles に Breakpoint.compact が必要です。'
        'compactは全ノードで必須です。',
      );
    }
  }

  /// 指定Breakpointに対する実効スタイルを解決する。
  /// 未指定なら、より手前（小さい方）の区分を遡って探す。
  NodeBreakpointStyle resolveStyle(Breakpoint breakpoint) {
    for (var i = breakpoint.index; i >= 0; i--) {
      final candidate = styles[Breakpoint.values[i]];
      if (candidate != null) return candidate;
    }
    throw StateError(
      'DesignNode(id: $id) に compact のstyleが定義されていません。'
      'compactは全ノードで必須です。',
    );
  }

  factory DesignNode.fromJson(Map<String, dynamic> json) {
    final styles = (json['styles'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(
        Breakpoint.fromJson(key),
        NodeBreakpointStyle.fromJson(value as Map<String, dynamic>),
      ),
    );
    if (!styles.containsKey(Breakpoint.compact)) {
      throw FormatException(
        'DesignNode(id: ${json['id']}) に compact のstyleが必要です。',
      );
    }
    return DesignNode(
      id: json['id'] as String,
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>? ?? [])
          .map((c) => DesignNode.fromJson(c as Map<String, dynamic>))
          .toList(),
      styles: styles,
      nodeType: json['type'] as NodeKind,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    if (name != null) 'name': name,
    'children': children.map((c) => c.toJson()).toList(),
    // 継承元と同一の場合でも、明示的に定義されたキーのみ出力する
    'styles': styles.map((k, v) => MapEntry(k.toJson(), v.toJson())),
    'type': nodeType.toString(),
  };
}
