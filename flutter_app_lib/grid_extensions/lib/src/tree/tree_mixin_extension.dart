import 'dart:async';

import '../adapter/adapter.dart';
import 'events/events.dart';

///TreeタイプのGridに使用できるMixinの基本情報
///TはQueryの引数の型
///[R]はQueryの戻り値の型
abstract interface class TreeMixinExtension {
  ///条件式を提供する
  TreeExpressionAdapter get treeExpressionAdapter;

  ///ツリーで発生するイベント
  StreamController<TreeEvent> get treeChangeStream;
}
