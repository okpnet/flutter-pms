// register_lot_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_lot_page/register_lot_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterLotPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterLotPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VVisiterIssuableFilter', {
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'quantity': FlatFilterPath([], 'quantity'),
    'release': FlatFilterPath([], 'release'),
    'issuable': FlatFilterPath([], 'issuable'),
    'blockReason': FlatFilterPath([], 'blockReason'),
    'container||transContainerId': FlatFilterPath([FilterStep('transContainerByTransContainerId')], 'transContainerId'),
    'container||code': FlatFilterPath([FilterStep('transContainerByTransContainerId')], 'code'),
    'container||symbol': FlatFilterPath([FilterStep('transContainerByTransContainerId')], 'symbol'),
    'container||labels||transLabelId': FlatFilterPath([FilterStep('transContainerByTransContainerId'), FilterStep('transLabelByNames')], 'transLabelId'),
    'container||labels||value||labelValue': FlatFilterPath([FilterStep('transContainerByTransContainerId'), FilterStep('transLabelByNames'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
  });
}
