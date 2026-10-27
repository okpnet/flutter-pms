// shelf_inventory_status_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/shelf_inventory_status_page/shelf_inventory_status_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ShelfInventoryStatusPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ShelfInventoryStatusPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VShelfInventoryStatusFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'mstrLocationId': FlatFilterPath([], 'mstrLocationId'),
    'status': FlatFilterPath([], 'status'),
    'quantity': FlatFilterPath([], 'quantity'),
    'transPurchaseRecIds': FlatFilterPath([], 'transPurchaseRecIds'),
    'purchaseRecCount': FlatFilterPath([], 'purchaseRecCount'),
    'purchaseRecQuantity': FlatFilterPath([], 'purchaseRecQuantity'),
    'transConveyIds': FlatFilterPath([], 'transConveyIds'),
    'conveyCount': FlatFilterPath([], 'conveyCount'),
    'conveyReceiveQuantity': FlatFilterPath([], 'conveyReceiveQuantity'),
    'conveyIssueQuantity': FlatFilterPath([], 'conveyIssueQuantity'),
    'lastConveyAt': FlatFilterPath([], 'lastConveyAt'),
    'transWorkRecordIds': FlatFilterPath([], 'transWorkRecordIds'),
    'workRecordCount': FlatFilterPath([], 'workRecordCount'),
    'workRecordQuantity': FlatFilterPath([], 'workRecordQuantity'),
  });
}
