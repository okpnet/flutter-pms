import 'dart:async';

import '../import.dart';
import 'events/events.dart';
import 'tree_load_status.dart';

///TreeタイプのGridに使用できるMixinの基本情報
///TはQueryの引数の型
///[R]はQueryの戻り値の型
abstract interface class TreeMixinExtension {
  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  IPredicateModel get initiBuildPredicate;

  ///最初以降の展開時の条件式
  IPredicateModel buildPredicate(TrinaRow? parentRow, TreeLoadStatus treeState);

  ///ツリーで発生するイベント
  StreamController<TreeEvent> get treeChangeStream;
}
