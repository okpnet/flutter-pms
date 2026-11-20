// register_record_visiter_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/register_record_visiter_page/register_record_visiter_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(RegisterRecordVisiterPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class RegisterRecordVisiterPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransWorkRecordVisiterFilter', {
    'transWorkRecordVisiterId': FlatFilterPath([], 'transWorkRecordVisiterId'),
    'transWorkRecordId': FlatFilterPath([], 'transWorkRecordId'),
    'transVisiterId': FlatFilterPath([], 'transVisiterId'),
    'visiter||transVisiterId': FlatFilterPath([FilterStep('transVisiterByTransVisiterId')], 'transVisiterId'),
    'visiter||parentTransVisiterId': FlatFilterPath([FilterStep('transVisiterByTransVisiterId')], 'parentTransVisiterId'),
    'visiter||transContainerId': FlatFilterPath([FilterStep('transVisiterByTransVisiterId')], 'transContainerId'),
    'visiter||quantity': FlatFilterPath([FilterStep('transVisiterByTransVisiterId')], 'quantity'),
  });
}
