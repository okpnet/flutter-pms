// document_content_body_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/document_content_body_page/document_content_body_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(DocumentContentBodyPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class DocumentContentBodyPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('SharedTextValueFilter', {
    'sharedTextValueId': FlatFilterPath([], 'sharedTextValueId'),
    'sharedTextId': FlatFilterPath([], 'sharedTextId'),
    'textValue': FlatFilterPath([], 'textValue'),
    'language||sharedLanguageCodeId': FlatFilterPath([FilterStep('sharedLanguageCodeBySharedLanguageCodeId')], 'sharedLanguageCodeId'),
    'language||code': FlatFilterPath([FilterStep('sharedLanguageCodeBySharedLanguageCodeId')], 'code'),
  });
}
