// scan_inspection_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_inspection_page/scan_inspection_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanInspectionPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanInspectionPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrInspectionFilter', {
    'mstrInspectionId': FlatFilterPath([], 'mstrInspectionId'),
    'code': FlatFilterPath([], 'code'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
  });
}
