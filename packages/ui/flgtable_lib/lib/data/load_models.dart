import 'conditions.dart';

/// 読み込み方式。
enum LoadMode { none, infiniteScroll, pagination }

/// データ読み込みの条件。null は「テーブルの設定値に従う」を意味する。
class LoadQuery {
  const LoadQuery({this.start, this.count, this.filters, this.sort});

  final int? start;
  final int? count;
  final List<FilterCondition>? filters;
  final SortCondition? sort;

  Map<String, dynamic> toJson() => {
    'start': start,
    'count': count,
    'filters': filters?.map((f) => f.toJson()).toList(),
    'sort': sort?.toJson(),
  };
}

/// 読み込み結果。[filteredCount]はフィルタ後の件数でローダーが返す。
class LoadResult<T> {
  const LoadResult({
    required this.items,
    required this.totalCount,
    required this.filteredCount,
    required this.start,
    required this.count,
  });

  final List<T> items;
  final int totalCount;
  final int filteredCount;
  final int start;
  final int count;

  Map<String, dynamic> toJson() => {
    'totalCount': totalCount,
    'filteredCount': filteredCount,
    'start': start,
    'count': count,
    'itemCount': items.length,
  };
}

/// 非同期データ読み込みデリゲート。
typedef TableDataLoader<T> = Future<LoadResult<T>> Function(LoadQuery query);
