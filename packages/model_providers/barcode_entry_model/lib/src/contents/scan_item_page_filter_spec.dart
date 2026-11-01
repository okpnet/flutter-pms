// scan_item_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_item_page/scan_item_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanItemPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanItemPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrItemFilter', {
    'mstrItemId': FlatFilterPath([], 'mstrItemId'),
    'code': FlatFilterPath([], 'code'),
    'symbol': FlatFilterPath([], 'symbol'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'unit||sharedUnitId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId')], 'sharedUnitId'),
    'unit||labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'unit||labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'unit||labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId')], 'sharedDictionaryId'),
    'unit||labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedUnitBySharedUnitId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNicknameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
  });
}
