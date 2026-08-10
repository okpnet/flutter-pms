import '../import.dart';
import '../tree/tree_load_status.dart';

abstract class TreePricateAdapter {
  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  IPredicateModel get initiBuildPredicate;

  ///最初以降の展開時の条件式
  IPredicateModel buildPredicate(TrinaRow? parentRow, TreeLoadStatus treeState);
}
