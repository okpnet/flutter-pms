import '../../../../imports.dart';

class SummaryModel implements IResultAdapter {
  @override
  final int? filteredNumberOfRecords;

  @override
  final int numberOfRecord;

  @override
  final List<Map<String, dynamic>> rows;

  SummaryModel({
    required this.numberOfRecord,
    required this.rows,
    this.filteredNumberOfRecords,
  });
}
