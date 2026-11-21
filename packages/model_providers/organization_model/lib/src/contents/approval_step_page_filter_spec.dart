// approval_step_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_step_page/approval_step_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalStepPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalStepPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrApprovalPatternDetailFilter', {
    'mstrApprovalPatternDetailId': FlatFilterPath([], 'mstrApprovalPatternDetailId'),
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'mstrApprovalId': FlatFilterPath([], 'mstrApprovalId'),
    'approval||mstrApprovalId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'mstrApprovalId'),
    'approval||infoDepartmentId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'infoDepartmentId'),
    'approval||infoPositionId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'infoPositionId'),
    'approval||priority': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'priority'),
    'approval||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'approval||remarks': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'remarks'),
    'remarks': FlatFilterPath([], 'remarks'),
  });
}
