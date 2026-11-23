// work_record_pick_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/work_record_pick_page/work_record_pick_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(WorkRecordPickPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class WorkRecordPickPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransWorkRecordFilter', {
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'symbol': FlatFilterPath([], 'symbol'),
    'nthTime': FlatFilterPath([], 'nthTime'),
    'startAt': FlatFilterPath([], 'startAt'),
    'qty': FlatFilterPath([], 'qty'),
  });
}
