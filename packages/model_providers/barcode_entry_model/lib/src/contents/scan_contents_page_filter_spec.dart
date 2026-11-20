// scan_contents_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_contents_page/scan_contents_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanContentsPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanContentsPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterIssuableFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'release': FlatFilterPath([], 'release'),
    'issuable': FlatFilterPath([], 'issuable'),
  });
}
