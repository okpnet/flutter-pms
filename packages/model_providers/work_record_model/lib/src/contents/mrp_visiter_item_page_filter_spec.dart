// mrp_visiter_item_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_visiter_item_page/mrp_visiter_item_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpVisiterItemPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpVisiterItemPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VMrpVisiterItemFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'itemCount': FlatFilterPath([], 'itemCount'),
    'finished': FlatFilterPath([], 'finished'),
    'quantity': FlatFilterPath([], 'quantity'),
  });
}
