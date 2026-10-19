class NodeBreakpointStyle {
  /// この区分で表示するか
  final bool visible;

  /// この区分でのカラムスパン（DesignDocument.columnCountを分母とする）
  final int width;

  const NodeBreakpointStyle({this.visible = true, required this.width});

  factory NodeBreakpointStyle.fromJson(Map<String, dynamic> json) =>
      NodeBreakpointStyle(
        visible: json['visible'] as bool? ?? true,
        width: json['width'] as int,
      );

  Map<String, dynamic> toJson() => {'visible': visible, 'width': width};

  NodeBreakpointStyle copyWith({bool? visible, int? width}) =>
      NodeBreakpointStyle(
        visible: visible ?? this.visible,
        width: width ?? this.width,
      );
}
