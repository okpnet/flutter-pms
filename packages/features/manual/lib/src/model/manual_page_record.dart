/// マニュアルのページの、過去の版(履歴の 1 件)。
///
/// パターン: Memento(保存の直前の状態を残し、復元できるようにする)
class ManualVersion {
  const ManualVersion({
    required this.rev,
    required this.title,
    required this.md,
    required this.updatedBy,
    required this.updatedAt,
  });

  final int rev;
  final String title;
  final String md;
  final String updatedBy;
  final DateTime updatedAt;

  Map<String, Object?> toJson() => {
    'rev': rev,
    'title': title,
    'updatedBy': updatedBy,
    'updatedAt': updatedAt.toIso8601String(),
    'mdLength': md.length,
  };
}

/// マニュアルの 1 ページ。正本は Markdown([md])で、ページ名([title])は別の項目に持つ。
///
/// [parentId] が null のページは、ルート(複数作れる)。[order] は同じ親の中の並び。
/// 履歴([history])は新しい順で、最新 [maxHistory] 件まで。
class ManualPageRecord {
  const ManualPageRecord({
    required this.id,
    required this.parentId,
    required this.order,
    required this.title,
    required this.md,
    required this.rev,
    required this.updatedBy,
    required this.updatedAt,
    this.history = const [],
  });

  static const maxHistory = 10;

  final String id;
  final String? parentId;
  final int order;
  final String title;
  final String md;
  final int rev;
  final String updatedBy;
  final DateTime updatedAt;
  final List<ManualVersion> history;

  bool get isRoot => parentId == null;

  ManualPageRecord copyWith({
    String? title,
    String? md,
    int? rev,
    String? updatedBy,
    DateTime? updatedAt,
    List<ManualVersion>? history,
    int? order,
  }) => ManualPageRecord(
    id: id,
    parentId: parentId,
    order: order ?? this.order,
    title: title ?? this.title,
    md: md ?? this.md,
    rev: rev ?? this.rev,
    updatedBy: updatedBy ?? this.updatedBy,
    updatedAt: updatedAt ?? this.updatedAt,
    history: history ?? this.history,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'parentId': parentId,
    'order': order,
    'title': title,
    'rev': rev,
    'updatedBy': updatedBy,
    'updatedAt': updatedAt.toIso8601String(),
    'history': history.map((h) => h.toJson()).toList(),
  };

  @override
  String toString() => 'ManualPageRecord(${toJson()})';
}
