import '../../../constants/typedef.dart';

abstract class TreeEvent<T> {
  int get idx;
  T get rowData;
  T? get parentRowData;
  bool get expanded;
  GridExtensionMap get attributes;
}
