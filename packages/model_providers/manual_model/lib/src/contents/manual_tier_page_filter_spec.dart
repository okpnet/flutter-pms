// manual_tier_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/manual_tier_page/manual_tier_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ManualTierPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ManualTierPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrDocumentTierFilter', {
    'mstrDocumentTierId': FlatFilterPath([], 'mstrDocumentTierId'),
    'code': FlatFilterPath([], 'code'),
    'identifier': FlatFilterPath([], 'identifier'),
    'tierNumber': FlatFilterPath([], 'tierNumber'),
  });
}
