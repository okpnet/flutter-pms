// register_record_complaint_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_record_complaint_page/register_record_complaint_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterRecordComplaintPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterRecordComplaintPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransComplaintWorkFilter', {
    'transComplaintWorkId': FlatFilterPath([], 'transComplaintWorkId'),
    'transComplaintId': FlatFilterPath([], 'transComplaintId'),
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'quantity': FlatFilterPath([], 'quantity'),
  });
}
