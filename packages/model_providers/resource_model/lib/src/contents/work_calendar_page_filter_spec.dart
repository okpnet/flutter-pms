// work_calendar_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/work_calendar_page/work_calendar_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(WorkCalendarPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class WorkCalendarPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrWorkCalendarFilter', {
    'mstrWorkCalendarId': FlatFilterPath([], 'mstrWorkCalendarId'),
    'workDate': FlatFilterPath([], 'workDate'),
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'startTime': FlatFilterPath([], 'startTime'),
    'holiday': FlatFilterPath([], 'holiday'),
    'revision': FlatFilterPath([], 'revision'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
