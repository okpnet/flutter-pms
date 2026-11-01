// visiter_origin_check_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/visiter_origin_check_page/visiter_origin_check_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(VisiterOriginCheckPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class VisiterOriginCheckPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterOriginCheckFilter', {
    'originKind': FlatFilterPath([], 'originKind'),
    'originId': FlatFilterPath([], 'originId'),
    'transPurchaseRecId': FlatFilterPath([], 'transPurchaseRecId'),
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'recordQuantity': FlatFilterPath([], 'recordQuantity'),
    'visiterQuantity': FlatFilterPath([], 'visiterQuantity'),
    'difference': FlatFilterPath([], 'difference'),
    'visiterCount': FlatFilterPath([], 'visiterCount'),
  });
}
