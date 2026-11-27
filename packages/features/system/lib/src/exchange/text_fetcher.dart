import 'package:http/http.dart' as http;

import 'exchange_rate_source.dart';

/// URL の本文(文字)を取得する。テストでは差し替える。
typedef TextFetcher = Future<String> Function(Uri url);

/// 標準の取得(`https` だけ。制限時間つき)。送るのは URL だけで、通貨コードなどの情報は付けない。
Future<String> httpsTextFetcher(Uri url) async {
  if (url.scheme != 'https') {
    throw const ExchangeRateSourceException('https の接続先だけを使える');
  }
  final response = await http
      .get(
        url,
        headers: const {
          'Accept': 'application/xml, application/json, text/csv',
        },
      )
      .timeout(const Duration(seconds: 15));
  if (response.statusCode != 200) {
    throw ExchangeRateSourceException('HTTP ${response.statusCode}');
  }
  return response.body;
}
