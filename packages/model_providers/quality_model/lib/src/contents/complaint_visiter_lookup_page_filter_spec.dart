// complaint_visiter_lookup_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/complaint_visiter_lookup_page/complaint_visiter_lookup_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ComplaintVisiterLookupPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ComplaintVisiterLookupPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransVisiterFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
