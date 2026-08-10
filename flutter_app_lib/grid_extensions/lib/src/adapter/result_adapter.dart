import '../../constants/typedef.dart';

///レポジトリから取得したデータの結果
abstract interface class IResultAdapter {
  ///データ全件数
  int get numberOfRecord;

  ///フィルタ設定後の件数
  int? get filteredNumberOfRecords;

  ///取得して変換された行
  List<GridExtensionMap> get rows;
}
