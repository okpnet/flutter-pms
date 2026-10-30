// mrp_load_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/mrp_load_page/mrp_load_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(MrpLoadPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class MrpLoadPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransMrpLoadFilter', {
    'transMrpLoadId': FlatFilterPath([], 'transMrpLoadId'),
    'transMrpRunId': FlatFilterPath([], 'transMrpRunId'),
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'equipment||mstrEquipmentId': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId')], 'mstrEquipmentId'),
    'equipment||code': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId')], 'code'),
    'equipment||controlCode': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId')], 'controlCode'),
    'equipment||symbol': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId')], 'symbol'),
    'equipment||mstrItemId': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId')], 'mstrItemId'),
    'equipment||item||mstrItemId': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId')], 'mstrItemId'),
    'equipment||item||code': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId')], 'code'),
    'equipment||item||controlCode': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId')], 'controlCode'),
    'equipment||item||symbol': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId')], 'symbol'),
    'equipment||item||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'equipment||item||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'equipment||item||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrEquipmentByMstrEquipmentId'), FilterStep('mstrItemByMstrItemId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'loadDate': FlatFilterPath([], 'loadDate'),
    'capacityHours': FlatFilterPath([], 'capacityHours'),
    'committedHours': FlatFilterPath([], 'committedHours'),
    'plannedHours': FlatFilterPath([], 'plannedHours'),
    'loadRate': FlatFilterPath([], 'loadRate'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
