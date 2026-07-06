part of 'summary_data.dart';

class SummaryLoadData<R> extends SummaryData {
  final R loadData;

  const SummaryLoadData({
    required this.loadData,
    super.filteredNumberOfRecords,
    super.numberOfRecords,
  });

  @override
  SummaryLoadData copyWith({
    int? numberOfRecords,
    int? filteredNumberOfRecords,
    R? loadData,
  }) {
    return SummaryLoadData(
      loadData: loadData ?? this.loadData,
      filteredNumberOfRecords:
          filteredNumberOfRecords ?? this.filteredNumberOfRecords,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
