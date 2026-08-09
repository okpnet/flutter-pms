import 'package:trina_grid/trina_grid.dart';

import '../../../../imports.dart';

class SummaryModel implements IResultAdapter {
  @override
  final int? filteredNumberOfRecords;

  @override
  final int numberOfRecord;

  @override
  final List<TrinaRow<dynamic>> rows;

  SummaryModel({
    required this.numberOfRecord,
    required this.rows,
    this.filteredNumberOfRecords,
  });
}
