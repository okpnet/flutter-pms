// visiter_owner_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/visiter_owner_page/visiter_owner_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(VisiterOwnerPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class VisiterOwnerPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransVisiterOwnerFilter', {
    'transVisiterOwnerId': FlatFilterPath([], 'transVisiterOwnerId'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'ownerStakeholderId': FlatFilterPath([], 'ownerStakeholderId'),
    'transSupplyDetailId': FlatFilterPath([], 'transSupplyDetailId'),
    'transOrderDetailId': FlatFilterPath([], 'transOrderDetailId'),
    'effectiveAt': FlatFilterPath([], 'effectiveAt'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
