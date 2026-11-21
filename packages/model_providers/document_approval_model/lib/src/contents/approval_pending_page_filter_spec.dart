// approval_pending_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/approval_pending_page/approval_pending_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(ApprovalPendingPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class ApprovalPendingPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VApprovalPendingFilter', {
    'transPreapprovalId': FlatFilterPath([], 'transPreapprovalId'),
    'transApprovalPatternId': FlatFilterPath([], 'transApprovalPatternId'),
    'mstrApprovalId': FlatFilterPath([], 'mstrApprovalId'),
    'approval||mstrApprovalId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'mstrApprovalId'),
    'approval||priority': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'priority'),
    'approval||symbol': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId')], 'symbol'),
    'approval||labels||sharedAppellationsId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('mstrApprovalByMstrApprovalId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'approvalPriority': FlatFilterPath([], 'approvalPriority'),
    'period': FlatFilterPath([], 'period'),
    'isDocument': FlatFilterPath([], 'isDocument'),
    'isComplaint': FlatFilterPath([], 'isComplaint'),
    'isDisposal': FlatFilterPath([], 'isDisposal'),
    'isRecurrencePrevention': FlatFilterPath([], 'isRecurrencePrevention'),
    'isOrder': FlatFilterPath([], 'isOrder'),
    'isPurchase': FlatFilterPath([], 'isPurchase'),
    'isUnrecognized': FlatFilterPath([], 'isUnrecognized'),
    'isShippingOrder': FlatFilterPath([], 'isShippingOrder'),
    'mstrDocumentId': FlatFilterPath([], 'mstrDocumentId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'transDisposalId': FlatFilterPath([], 'transDisposalId'),
    'transRecurrencePreventionId': FlatFilterPath([], 'transRecurrencePreventionId'),
    'transOrderId': FlatFilterPath([], 'transOrderId'),
    'transPurchaseId': FlatFilterPath([], 'transPurchaseId'),
    'transUnrecognizedId': FlatFilterPath([], 'transUnrecognizedId'),
    'transShippingOrderId': FlatFilterPath([], 'transShippingOrderId'),
    'targetSymbol': FlatFilterPath([], 'targetSymbol'),
    'applicantStaffId': FlatFilterPath([], 'applicantStaffId'),
    'applicant||infoStaffId': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId')], 'infoStaffId'),
    'applicant||code': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId')], 'code'),
    'applicant||symbol': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId')], 'symbol'),
    'applicant||labels||sharedAppellationsId': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId'), FilterStep('sharedAppellationByNames')], 'sharedAppellationsId'),
    'applicant||labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId')], 'sharedDictionaryId'),
    'applicant||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': FlatFilterPath([FilterStep('infoStaffByApplicantStaffId'), FilterStep('sharedAppellationByNames'), FilterStep('sharedDictionaryBySharedDictionaryNameId'), FilterStep.many('sharedDictionaryValuesBySharedDictionaryId', {'sharedLanguageCodeId': 'languageCodeId'})], 'dictionaryValue'),
    'appliedAt': FlatFilterPath([], 'appliedAt'),
    'approver': FlatFilterPath([], 'approver'),
    'actionable': FlatFilterPath([], 'actionable'),
  });
}
