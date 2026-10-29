// item_on_hand_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/item_on_hand_page/item_on_hand_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ItemOnHandPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ItemOnHandPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VItemOnHandFilter', {
    'itemId': FlatFilterPath([], 'itemId'),
    'onHandQuantity': FlatFilterPath([], 'onHandQuantity'),
    'visiterCount': FlatFilterPath([], 'visiterCount'),
  });
}
