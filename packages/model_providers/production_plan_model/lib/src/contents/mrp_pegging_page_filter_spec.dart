// mrp_pegging_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_pegging_page/mrp_pegging_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpPeggingPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpPeggingPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransMrpPeggingFilter', {
    'transMrpPeggingId': FlatFilterPath([], 'transMrpPeggingId'),
    'transMrpRunId': FlatFilterPath([], 'transMrpRunId'),
    'demandTransMrpSuggestionId': FlatFilterPath([], 'demandTransMrpSuggestionId'),
    'supplyKind': FlatFilterPath([], 'supplyKind'),
    'supplyTransMrpSuggestionId': FlatFilterPath([], 'supplyTransMrpSuggestionId'),
    'transPurchaseDetailId': FlatFilterPath([], 'transPurchaseDetailId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'needAt': FlatFilterPath([], 'needAt'),
    'availableAt': FlatFilterPath([], 'availableAt'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
