// task_outsource_available_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/task_outsource_available_page/task_outsource_available_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(TaskOutsourceAvailablePageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class TaskOutsourceAvailablePageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('MstrOutsourceAvailableFilter', {
    'mstrOutsourceAvailableId': FlatFilterPath([], 'mstrOutsourceAvailableId'),
    'mstrTaskLocationId': FlatFilterPath([], 'mstrTaskLocationId'),
    'mstrStakeholderId': FlatFilterPath([], 'mstrStakeholderId'),
    'materialSupply': FlatFilterPath([], 'materialSupply'),
    'paidSupply': FlatFilterPath([], 'paidSupply'),
    'revision': FlatFilterPath([], 'revision'),
    'symbol': FlatFilterPath([], 'symbol'),
    'remarks': FlatFilterPath([], 'remarks'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
  });
}
