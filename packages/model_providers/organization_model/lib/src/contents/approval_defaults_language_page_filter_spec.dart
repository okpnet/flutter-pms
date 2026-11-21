// approval_defaults_language_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_defaults_language_page/approval_defaults_language_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalDefaultsLanguagePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalDefaultsLanguagePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('SharedLanguageCodeFilter', {
    'sharedLanguageCodeId': FlatFilterPath([], 'sharedLanguageCodeId'),
    'code': FlatFilterPath([], 'code'),
  });
}
