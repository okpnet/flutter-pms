import 'package:graphql/client.dart';
import 'package:system_model/system_model.dart';

/// 基準通貨(`info_app.mstr_currency_id`)の通貨 ID。DB のビュー `v_currency_rate_latest` の `is_base` の行から引く。
/// 取り出せない(基準通貨が無い・通信の失敗)ときは null(呼び出し側は初期値を入れない)。
///
/// 利害関係者の新規登録の取引の通貨の初期値に使う。DB の既定値では入れない(アプリが入れる)。
Future<String?> baseCurrencyId(GraphQLClient client) async {
  try {
    final result = await client.query$CurrencyRateLatestPageRead(
      Options$Query$CurrencyRateLatestPageRead(
        variables: Variables$Query$CurrencyRateLatestPageRead.fromJson({
          'first': 1,
          'filter': {
            'isBase': {'equalTo': true},
          },
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    if (result.hasException) return null;
    final nodes = result.parsedData?.allVCurrencyRateLatests?.nodes;
    if (nodes == null || nodes.isEmpty) return null;
    return nodes.first?.mstrCurrencyId;
  } catch (_) {
    return null;
  }
}
