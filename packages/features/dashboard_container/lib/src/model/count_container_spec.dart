/// コンテナの大きさ。ダッシュボードの横幅に対する割合で、表示できる件数の項目(タイル)の数が決まる。
enum CountContainerSize {
  /// 横幅いっぱい。3つ表示できる。
  full('full', 3, 1),

  /// 横幅の 1/2。2つ表示できる。
  half('half', 2, 0.5),

  /// 横幅の 1/4。1つ表示できる。
  quarter('quarter', 1, 0.25);

  const CountContainerSize(this.code, this.visibleTiles, this.fraction);

  /// 保存する値。
  final String code;

  /// 表示できる項目の数。
  final int visibleTiles;

  /// 横幅に対する割合。
  final double fraction;

  static CountContainerSize fromCode(Object? code) =>
      CountContainerSize.values.where((s) => s.code == code).firstOrNull ??
      CountContainerSize.half;
}

/// コンテナに並べる件数の項目(タイル)。1つにつき、フィルタグループ(区分・利害関係者など)を1つ対にする。
class CountTileSpec {
  const CountTileSpec({
    required this.id,
    required this.sourceKey,
    this.groupKey,
    this.optionKey,
  });

  /// コンテナの中での識別子。
  final String id;

  /// 件数の元(`ICountSource.key`)。
  final String sourceKey;

  /// 対にするフィルタグループ(`CountFilterGroup.key`)。絞り込まないときは null。
  final String? groupKey;

  /// 選んでいるフィルタの項目(`CountFilterOption.key`)。null は「すべて」。
  final String? optionKey;

  CountTileSpec withOption(String? optionKey) => CountTileSpec(
    id: id,
    sourceKey: sourceKey,
    groupKey: groupKey,
    optionKey: optionKey,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'sourceKey': sourceKey,
    'groupKey': groupKey,
    'optionKey': optionKey,
  };

  /// 読めない値は null(その項目は捨てる)。
  static CountTileSpec? tryFromJson(Object? json) {
    if (json is! Map) return null;
    final id = json['id'];
    final sourceKey = json['sourceKey'];
    if (id is! String || sourceKey is! String) return null;
    final group = json['groupKey'];
    final option = json['optionKey'];
    return CountTileSpec(
      id: id,
      sourceKey: sourceKey,
      groupKey: group is String ? group : null,
      optionKey: option is String ? option : null,
    );
  }
}

/// ダッシュボードに置く件数のコンテナ。
class CountContainerSpec {
  const CountContainerSpec({
    required this.id,
    this.size = CountContainerSize.half,
    this.tiles = const [],
  });

  final String id;
  final CountContainerSize size;

  /// 並べた項目の全部。実際に表示するのは、先頭から [CountContainerSize.visibleTiles] 個。
  final List<CountTileSpec> tiles;

  /// いま表示する項目。
  List<CountTileSpec> get visibleTiles =>
      tiles.take(size.visibleTiles).toList();

  CountContainerSpec copyWith({
    CountContainerSize? size,
    List<CountTileSpec>? tiles,
  }) => CountContainerSpec(
    id: id,
    size: size ?? this.size,
    tiles: tiles ?? this.tiles,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'size': size.code,
    'tiles': [for (final t in tiles) t.toJson()],
  };

  /// 読めない値は null(そのコンテナは捨てる)。
  static CountContainerSpec? tryFromJson(Object? json) {
    if (json is! Map) return null;
    final id = json['id'];
    if (id is! String) return null;
    final tiles = json['tiles'];
    return CountContainerSpec(
      id: id,
      size: CountContainerSize.fromCode(json['size']),
      tiles: tiles is List
          ? [for (final t in tiles) ?CountTileSpec.tryFromJson(t)]
          : const [],
    );
  }
}
