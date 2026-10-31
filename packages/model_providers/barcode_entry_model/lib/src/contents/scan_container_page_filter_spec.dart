// scan_container_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_container_page/scan_container_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanContainerPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanContainerPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransContainerFilter', {
    'transContainerId': FlatFilterPath([], 'transContainerId'),
    'code': FlatFilterPath([], 'code'),
    'symbol': FlatFilterPath([], 'symbol'),
    'mstrLocationId': FlatFilterPath([], 'mstrLocationId'),
    'labels||transLabelId': FlatFilterPath([FilterStep('transLabelByNames')], 'transLabelId'),
    'labels||value||labelValue': FlatFilterPath([FilterStep('transLabelByNames'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
  });
}
