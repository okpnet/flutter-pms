// external_property_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/external_property_page/external_property_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ExternalPropertyPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ExternalPropertyPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VExternalPropertyFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'ownerStakeholderId': FlatFilterPath([], 'ownerStakeholderId'),
    'itemId': FlatFilterPath([], 'itemId'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'mstrLocationId': FlatFilterPath([], 'mstrLocationId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'release': FlatFilterPath([], 'release'),
    'openComplaintCount': FlatFilterPath([], 'openComplaintCount'),
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'effectiveAt': FlatFilterPath([], 'effectiveAt'),
  });
}
