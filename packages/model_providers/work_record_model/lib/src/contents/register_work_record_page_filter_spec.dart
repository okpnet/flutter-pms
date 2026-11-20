// register_work_record_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_work_record_page/register_work_record_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterWorkRecordPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterWorkRecordPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransWorkRecordFilter', {
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'transWorkPlanId': FlatFilterPath([], 'transWorkPlanId'),
    'nthTime': FlatFilterPath([], 'nthTime'),
    'startAt': FlatFilterPath([], 'startAt'),
    'stopAt': FlatFilterPath([], 'stopAt'),
    'qty': FlatFilterPath([], 'qty'),
    'symbol': FlatFilterPath([], 'symbol'),
    'staffId': FlatFilterPath([], 'staffId'),
  });
}
