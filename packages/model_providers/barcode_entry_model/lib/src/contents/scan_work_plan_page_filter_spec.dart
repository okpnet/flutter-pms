// scan_work_plan_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/scan_work_plan_page/scan_work_plan_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ScanWorkPlanPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ScanWorkPlanPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransWorkPlanFilter', {
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'sequence': FlatFilterPath([], 'sequence'),
    'registrable||transWorkPlanId': FlatFilterPath([FilterStep('vWorkPlanRegistrableByTransWorkPlanId')], 'transWorkPlanId'),
    'mstrTaskId': FlatFilterPath([], 'mstrTaskId'),
    'task||mstrTaskId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId')], 'mstrTaskId'),
    'task||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'task||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'task||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'operations_plan||transOperationsPlanId': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId')], 'transOperationsPlanId'),
    'operations_plan||quantity': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId')], 'quantity'),
    'operations_plan||transResourcePlanId': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId')], 'transResourcePlanId'),
    'operations_plan||resource_plan||transResourcePlanId': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId'), FilterStep('transResourcePlanByTransResourcePlanId')], 'transResourcePlanId'),
    'operations_plan||resource_plan||itemId': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId'), FilterStep('transResourcePlanByTransResourcePlanId')], 'itemId'),
    'operations_plan||resource_plan||itemHistoryId': FlatFilterPath([FilterStep('transOperationsPlanByTransOperationsPlanId'), FilterStep('transResourcePlanByTransResourcePlanId')], 'itemHistoryId'),
  });
}
