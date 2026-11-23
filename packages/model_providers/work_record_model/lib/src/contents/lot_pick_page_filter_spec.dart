// lot_pick_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/lot_pick_page/lot_pick_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(LotPickPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class LotPickPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransVisiterFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'quantity': FlatFilterPath([], 'quantity'),
    'release': FlatFilterPath([], 'release'),
    'adjustment': FlatFilterPath([], 'adjustment'),
  });
}
