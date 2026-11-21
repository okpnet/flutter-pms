// approval_pattern_style_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_pattern_style_page/approval_pattern_style_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalPatternStylePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalPatternStylePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrApprovalPatternFilter', {
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'stampStyle': FlatFilterPath([], 'stampStyle'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
  });
}
