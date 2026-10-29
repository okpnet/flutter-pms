// item_supplier_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/item_supplier_page/item_supplier_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ItemSupplierPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ItemSupplierPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrItemSupplierFilter', {
    'mstrItemSupplierId': FlatFilterPath([], 'mstrItemSupplierId'),
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'mstrStakeholderId': FlatFilterPath([], 'mstrStakeholderId'),
    'priority': FlatFilterPath([], 'priority'),
    'supplierItemCode': FlatFilterPath([], 'supplierItemCode'),
    'minimumLotSize': FlatFilterPath([], 'minimumLotSize'),
    'cost': FlatFilterPath([], 'cost'),
    'askingPrice': FlatFilterPath([], 'askingPrice'),
    'revision': FlatFilterPath([], 'revision'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
