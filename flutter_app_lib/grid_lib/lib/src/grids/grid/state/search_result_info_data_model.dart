import 'search_result_info_model.dart';

abstract interface class ISearchResultInfoDataModel<R>
    implements ISearchResultInfoModel {
  ///読み込んだデータ
  R get loadData;

  ///
  SearchResultInfoDataModel copyWith({
    int? numberOfRecords,
    int? filteredNumberOfRecords,
    R? loadData,
  });
}

class SearchResultInfoDataModel<R> extends SearchResultInfoModel
    implements ISearchResultInfoDataModel<R> {
  @override
  final R loadData;

  // ignore: use_super_parameters
  SearchResultInfoDataModel({
    super.numberOfRecords,
    super.filteredNumberOfRecords,
    required this.loadData,
  });

  @override
  SearchResultInfoDataModel copyWith({
    int? numberOfRecords,
    int? filteredNumberOfRecords,
    R? loadData,
  }) {
    return SearchResultInfoDataModel(
      loadData: loadData ?? this.loadData,
      filteredNumberOfRecords:
          filteredNumberOfRecords ?? this.filteredNumberOfRecords,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
