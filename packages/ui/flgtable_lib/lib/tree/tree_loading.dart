import '../column/column_definition.dart';
import '../data/condition_matcher.dart';
import '../data/conditions.dart';
import '../data/load_models.dart';

/// 子の読み込み条件。[parent]が null のときはトップノード。
///
/// [flatten]が真のとき(フィルタ有効時)は階層に関係なく、条件に合う全ての行を返す。
class TreeLoadQuery {
  const TreeLoadQuery({
    this.parent,
    this.start = 0,
    this.count,
    this.filters,
    this.sort,
    this.flatten = false,
  });

  final Object? parent;
  final int start;
  final int? count;
  final List<FilterCondition>? filters;
  final SortCondition? sort;
  final bool flatten;

  Map<String, dynamic> toJson() => {
    'parent': parent?.toString(),
    'start': start,
    'count': count,
    'filters': filters?.map((f) => f.toJson()).toList(),
    'sort': sort?.toJson(),
    'flatten': flatten,
  };
}

/// 展開時に子を読み込むデリゲート。結果の`filteredCount`は、その親の子の総数を返す
/// (読み込んだ数がそれより少ないとき「もっと読み込む」を表示する)。
typedef TreeChildrenLoader<T> = Future<LoadResult<T>> Function(
  TreeLoadQuery query,
);

/// [node]を[newParent]の子にすると循環するか(newParent が node の子孫か)を判定する。
/// フィルタ有効時にドラッグドロップを許す場合に、アプリが渡す。
/// ドロップ時に1回だけ呼ばれる。真なら移動を拒否する。
typedef TreeCycleChecker<T> = Future<bool> Function(T node, T newParent);

/// メモリ上のリスト(静的リスト)から、読み込みデリゲートと循環判定を作る。
///
/// 各要素が親のキー([parentKey]、トップは null)を持つ形のデータ向け。
/// 外部(GraphQL など)から読み込む場合はアプリが同じ形のデリゲートを実装する。
class StaticTreeSource<T> {
  StaticTreeSource({
    required this.items,
    required this.columns,
    required this.key,
    required this.parentKey,
  });

  final List<T> items;
  final List<ColumnDefinition<T>> columns;
  final Object Function(T item) key;
  final Object? Function(T item) parentKey;

  /// 子の読み込み。フィルタ・ソート・範囲指定をメモリ上で行う。
  Future<LoadResult<T>> load(TreeLoadQuery q) async {
    var list = q.flatten
        ? List.of(items)
        : [
            for (final i in items)
              if (parentKey(i) == (q.parent == null ? null : key(q.parent as T)))
                i,
          ];
    list = ConditionMatcher.filter(list, columns, q.filters ?? const []);
    list = ConditionMatcher.sort(list, columns, q.sort);
    final total = list.length;
    final page = list.skip(q.start).take(q.count ?? total).toList();
    return LoadResult(
      items: page,
      totalCount: items.length,
      filteredCount: total,
      start: q.start,
      count: page.length,
    );
  }

  TreeChildrenLoader<T> get loader => load;

  /// [newParent]から親をたどり、[node]に行き当たれば循環。
  Future<bool> isDescendant(T node, T newParent) async {
    final byKey = {for (final i in items) key(i): i};
    final target = key(node);
    var current = key(newParent);
    final seen = <Object>{};
    while (seen.add(current)) {
      if (current == target) return true;
      final p = parentKey(byKey[current] as T);
      if (p == null) return false;
      current = p;
    }
    return true; // データ自体が循環している
  }

  TreeCycleChecker<T> get cycleChecker => isDescendant;
}
