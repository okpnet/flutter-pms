/// 読み込み方式。
enum LoadMode { none, infiniteScroll, pagination }

/// データ読み込みの条件。null は「テーブルの設定値に従う」を意味する。
class LoadQuery {
  const LoadQuery({this.start, this.count, this.filter, this.sort});

  final int? start;
  final int? count;
  final Object? filter;
  final Object? sort;

  Map<String, dynamic> toJson() => {
        'start': start,
        'count': count,
        'filter': filter?.toString(),
        'sort': sort?.toString(),
      };
}

/// 読み込み結果。
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
