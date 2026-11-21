// approval_pattern_ledger_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_pattern_ledger_page/approval_pattern_ledger_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalPatternLedgerPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalPatternLedgerPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrApprovalPatternFilter', {
    'mstrApprovalPatternId': FlatFilterPath([], 'mstrApprovalPatternId'),
    'labels||sharedAppellationsId': FlatFilterPath([FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId')], 'sharedDictionaryId'),
    'labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue': FlatFilterPath([FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryPronunciationId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
