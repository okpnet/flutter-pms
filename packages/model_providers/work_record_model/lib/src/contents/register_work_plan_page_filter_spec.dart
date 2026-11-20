// register_work_plan_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_work_plan_page/register_work_plan_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterWorkPlanPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterWorkPlanPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransWorkPlanFilter', {
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'transOperationsPlanId': FlatFilterPath([], 'transOperationsPlanId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'sequence': FlatFilterPath([], 'sequence'),
    'startAt': FlatFilterPath([], 'startAt'),
    'completionAt': FlatFilterPath([], 'completionAt'),
    'task||mstrTaskId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId')], 'mstrTaskId'),
    'task||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'task||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'task||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrTaskByMstrTaskId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'register||targetId': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'targetId'),
    'register||quantity': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'quantity'),
    'register||doneQuantity': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'doneQuantity'),
    'register||remainingQuantity': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'remainingQuantity'),
    'register||inProgress': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'inProgress'),
    'register||registrable': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'registrable'),
    'register||stopped': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'stopped'),
    'register||closed': FlatFilterPath([FilterStep.many('vRegisterTargetsByTransWorkPlanId')], 'closed'),
  });
}
