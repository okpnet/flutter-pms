// manual_publication_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/manual_publication_page/manual_publication_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ManualPublicationPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ManualPublicationPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VDocumentPublicationFilter', {
    'mstrDocumentId': FlatFilterPath([], 'mstrDocumentId'),
    'controlNumber': FlatFilterPath([], 'controlNumber'),
    'versionCode': FlatFilterPath([], 'versionCode'),
    'transApprovalPatternId': FlatFilterPath([], 'transApprovalPatternId'),
    'totalCount': FlatFilterPath([], 'totalCount'),
    'approvedCount': FlatFilterPath([], 'approvedCount'),
    'published': FlatFilterPath([], 'published'),
    'pending': FlatFilterPath([], 'pending'),
    'rejected': FlatFilterPath([], 'rejected'),
    'stampVisible': FlatFilterPath([], 'stampVisible'),
    'readable': FlatFilterPath([], 'readable'),
    'approvedAt': FlatFilterPath([], 'approvedAt'),
    'stampLabelJa': FlatFilterPath([], 'stampLabelJa'),
    'stampLabelEn': FlatFilterPath([], 'stampLabelEn'),
  });
}
