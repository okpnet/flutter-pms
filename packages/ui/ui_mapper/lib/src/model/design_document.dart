import 'design_node.dart';

class DesignDocument {
  final int schemaVersion;
  final List<DesignNode> rootNodes;

  // columnCountは持たない。列数はGridConfig（アプリ提供）側の責務。
  const DesignDocument({required this.schemaVersion, required this.rootNodes});

  factory DesignDocument.fromJson(Map<String, dynamic> json) => DesignDocument(
    schemaVersion: json['schemaVersion'] as int,
    rootNodes: (json['rootNodes'] as List<dynamic>)
        .map((n) => DesignNode.fromJson(n as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'schemaVersion': schemaVersion,
    'rootNodes': rootNodes.map((n) => n.toJson()).toList(),
  };
}
