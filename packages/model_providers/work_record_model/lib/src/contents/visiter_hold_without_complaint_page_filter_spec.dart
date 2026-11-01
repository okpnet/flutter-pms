// visiter_hold_without_complaint_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/visiter_hold_without_complaint_page/visiter_hold_without_complaint_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(VisiterHoldWithoutComplaintPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class VisiterHoldWithoutComplaintPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterHoldWithoutComplaintFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'mstrLocationId': FlatFilterPath([], 'mstrLocationId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'holdAt': FlatFilterPath([], 'holdAt'),
    'updateUserId': FlatFilterPath([], 'updateUserId'),
  });
}
