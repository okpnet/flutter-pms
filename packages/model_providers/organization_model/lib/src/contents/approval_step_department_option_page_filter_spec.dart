// approval_step_department_option_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_step_department_option_page/approval_step_department_option_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalStepDepartmentOptionPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalStepDepartmentOptionPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoDepartmentFilter', {
    'infoDepartmentId': FlatFilterPath([], 'infoDepartmentId'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
  });
}
