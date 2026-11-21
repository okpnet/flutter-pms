// document_approval_content_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/document_approval_content_page/document_approval_content_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(DocumentApprovalContentPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class DocumentApprovalContentPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VDocumentContentFilter', {
    'mstrDocumentContentId': FlatFilterPath([], 'mstrDocumentContentId'),
    'mstrDocumentId': FlatFilterPath([], 'mstrDocumentId'),
    'code': FlatFilterPath([], 'code'),
    'titles': FlatFilterPath([], 'titles'),
    'contents': FlatFilterPath([], 'contents'),
    'sequence': FlatFilterPath([], 'sequence'),
    'imageContent': FlatFilterPath([], 'imageContent'),
    'transFileId': FlatFilterPath([], 'transFileId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'revision': FlatFilterPath([], 'revision'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'published': FlatFilterPath([], 'published'),
    'pending': FlatFilterPath([], 'pending'),
    'readable': FlatFilterPath([], 'readable'),
  });
}
