part 'summary_loda_data.dart';

///行の総合計、フィルタした行の合計を持つモデル
class SummaryData {
  ///総合計
  final int? numberOfRecords;

  ///フィルタした行の合計
  final int? filteredNumberOfRecords;

  bool get hasNumOfRec => numberOfRecords != null;

  bool get hasFilterNumOfRec => filteredNumberOfRecords != null;

  const SummaryData({this.numberOfRecords, this.filteredNumberOfRecords});
  SummaryData copyWith({int? numberOfRecords, int? filteredNumberOfRecords}) {
    return SummaryData(
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
      filteredNumberOfRecords:
          filteredNumberOfRecords ?? this.filteredNumberOfRecords,
    );
  }
}
