// document_publication_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/document_publication_page/document_publication_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(DocumentPublicationPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class DocumentPublicationPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VDocumentPublicationFilter', {
    'mstrDocumentId': FlatFilterPath([], 'mstrDocumentId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'code': FlatFilterPath([], 'code'),
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
    'approver': FlatFilterPath([], 'approver'),
    'approvedAt': FlatFilterPath([], 'approvedAt'),
    'approvedStaffId': FlatFilterPath([], 'approvedStaffId'),
    'approved_staff||infoStaffId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId')], 'infoStaffId'),
    'approved_staff||code': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId')], 'code'),
    'approved_staff||symbol': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId')], 'symbol'),
    'approved_staff||labels||sharedAppellationsId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'approved_staff||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'approved_staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'stampLabelJa': FlatFilterPath([], 'stampLabelJa'),
    'stampLabelEn': FlatFilterPath([], 'stampLabelEn'),
  });
}
