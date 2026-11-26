// currency_rate_latest_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/currency_rate_latest_page/currency_rate_latest_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(CurrencyRateLatestPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class CurrencyRateLatestPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('VCurrencyRateLatestFilter', {
    'mstrCurrencyId': FlatFilterPath([], 'mstrCurrencyId'),
    'code': FlatFilterPath([], 'code'),
    'currencySymbol': FlatFilterPath([], 'currencySymbol'),
    'minorUnit': FlatFilterPath([], 'minorUnit'),
    'rateAuto': FlatFilterPath([], 'rateAuto'),
    'isBase': FlatFilterPath([], 'isBase'),
    'rateMonth': FlatFilterPath([], 'rateMonth'),
    'rate': FlatFilterPath([], 'rate'),
    'autoFetched': FlatFilterPath([], 'autoFetched'),
    'source': FlatFilterPath([], 'source'),
    'symbol': FlatFilterPath([], 'symbol'),
  });
}
