import '../../../constants/typedef.dart';
import '../../import.dart';

abstract class TreeEvent {
  Key get rowKey;
  Key? get parentRowKey;
  bool get expanded;
  GridExtensionMap get attributes;
}
