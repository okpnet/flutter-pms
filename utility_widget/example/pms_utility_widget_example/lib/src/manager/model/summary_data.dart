class SummaryData {
  final int? numberOfRecords;
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

class SummaryLoadData<T> extends SummaryData {
  final List<T> loadData;

  const SummaryLoadData({
    required this.loadData,
    super.filteredNumberOfRecords,
    super.numberOfRecords,
  });

  @override
  SummaryLoadData copyWith({
    int? numberOfRecords,
    int? filteredNumberOfRecords,
    List<T>? loadData,
  }) {
    return SummaryLoadData(
      loadData: loadData ?? this.loadData,
      filteredNumberOfRecords:
          filteredNumberOfRecords ?? this.filteredNumberOfRecords,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
