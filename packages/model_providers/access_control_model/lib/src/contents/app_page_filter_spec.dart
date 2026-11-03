// app_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/app_page/app_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AppPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AppPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('InfoAppFilter', {
    'infoAppId': FlatFilterPath([], 'infoAppId'),
    'name': FlatFilterPath([], 'name'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
