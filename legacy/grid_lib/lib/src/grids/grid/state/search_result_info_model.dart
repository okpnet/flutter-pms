abstract class ISearchResultInfoModel {
  ///総合計
  int? get numberOfRecords;

  ///フィルタした行の合計
  int? get filteredNumberOfRecords;

  ///総合計に値があるときはTrue
  bool get hasNumOfRec;

  ///フィルタされた合計があるときはTrue
  bool get hasFilterNumOfRec;

  ///値がセットされているときTrue
  bool get hasValue;
}

class SearchResultInfoModel implements ISearchResultInfoModel {
  ///総合計
  @override
  final int? numberOfRecords;

  ///フィルタした行の合計
  @override
  final int? filteredNumberOfRecords;

  ///総合計に値があるときはTrue
  @override
  bool get hasNumOfRec => numberOfRecords != null;

  ///フィルタされた合計があるときはTrue
  @override
  bool get hasFilterNumOfRec => filteredNumberOfRecords != null;

  ///値がセットされているときTrue
  @override
  bool get hasValue => hasNumOfRec & hasFilterNumOfRec;

  ///
  SearchResultInfoModel({this.numberOfRecords, this.filteredNumberOfRecords});
}
