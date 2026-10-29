// task_equipment_available_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/task_equipment_available_page/task_equipment_available_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(TaskEquipmentAvailablePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class TaskEquipmentAvailablePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrEquipmentAvailableFilter', {
    'mstrEquipmentAvailableId': FlatFilterPath([], 'mstrEquipmentAvailableId'),
    'mstrTaskLocationId': FlatFilterPath([], 'mstrTaskLocationId'),
    'mstrEquipmentId': FlatFilterPath([], 'mstrEquipmentId'),
    'revision': FlatFilterPath([], 'revision'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
