// manual_approval_stamp_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/manual_approval_stamp_page/manual_approval_stamp_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ManualApprovalStampPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ManualApprovalStampPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VDocumentApprovalStampFilter', {
    'transPreapprovalId': FlatFilterPath([], 'transPreapprovalId'),
    'mstrDocumentId': FlatFilterPath([], 'mstrDocumentId'),
    'transApprovalPatternId': FlatFilterPath([], 'transApprovalPatternId'),
    'mstrApprovalId': FlatFilterPath([], 'mstrApprovalId'),
    'approval||mstrApprovalId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'mstrApprovalId'),
    'approval||priority': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'priority'),
    'approval||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'approvalPriority': FlatFilterPath([], 'approvalPriority'),
    'period': FlatFilterPath([], 'period'),
    'decided': FlatFilterPath([], 'decided'),
    'approved': FlatFilterPath([], 'approved'),
    'rejected': FlatFilterPath([], 'rejected'),
    'pending': FlatFilterPath([], 'pending'),
    'approvedAt': FlatFilterPath([], 'approvedAt'),
    'approvedStaffId': FlatFilterPath([], 'approvedStaffId'),
    'approved_staff||infoStaffId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId')], 'infoStaffId'),
    'approved_staff||code': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId')], 'code'),
    'approved_staff||labels||sharedAppellationsId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'approved_staff||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'approved_staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('infoStaffByApprovedStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'stampLabelJa': FlatFilterPath([], 'stampLabelJa'),
    'stampLabelEn': FlatFilterPath([], 'stampLabelEn'),
    'versionCode': FlatFilterPath([], 'versionCode'),
    'controlNumber': FlatFilterPath([], 'controlNumber'),
    'documentRevision': FlatFilterPath([], 'documentRevision'),
  });
}
