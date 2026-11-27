import 'ecb_rate_source.dart';
import 'exchange_rate_source.dart';
import 'frankfurter_rate_source.dart';
import 'text_fetcher.dart';

/// 取得元 1 件の設定。
class ExchangeSourceConfig {
  const ExchangeSourceConfig({
    required this.provider,
    this.url,
    this.providers,
    this.currencies = const [],
  });

  /// 取得元の種類(`ecb` = 欧州中央銀行の日次ファイル、`frankfurter` = Frankfurter の API)。
  final String provider;

  /// 接続先(省略すると標準。`https` だけ)。
  final String? url;

  /// `frankfurter` の提供元の指定(`ecb`・`boj` など)。省略すると `ecb`。
  final String? providers;

  /// この取得元に指定する通貨コード(通貨を指定して取得元を選びたいとき)。ある通貨がどれかの取得元に指定されていれば、
  /// その通貨は、指定した取得元だけを(優先順位の順に)使う。どの取得元にも指定されていない通貨は、指定の無い取得元を使う。
  final List<String> currencies;

  /// この取得元が通貨 [code] を受け持つか。[pinned] は、その通貨がどれかの取得元に指定されているか。
  bool covers(String code, {required bool pinned}) =>
      pinned ? currencies.contains(code.toUpperCase()) : currencies.isEmpty;

  /// 取得元の実体を作る([fetcher] は通信。テストで差し替える)。種類が不明なときは null。
  IExchangeRateSource? build(TextFetcher fetcher) => switch (provider) {
    'ecb' => EcbRateSource(url: url, fetcher: fetcher),
    'frankfurter' => FrankfurterRateSource(
      url: url,
      providers: providers ?? 'ecb',
      fetcher: fetcher,
    ),
    _ => null,
  };

  Map<String, Object?> toJson() => {
    'provider': provider,
    if (url != null) 'url': url,
    if (providers != null) 'providers': providers,
    if (currencies.isNotEmpty) 'currencies': currencies,
  };
}

/// 為替レートの自動取得の設定(アプリの設定 `info_app.settings` の JSON の `exchange`)。
///
/// 取得元を優先順位つきで 2〜3 件まで持つ(先頭から試し、接続できないとき・その通貨が無いときは次へ。Chain of Responsibility)。
/// 標準は、ECB の日次ファイル → Frankfurter(提供元 `ecb`)。日本銀行(`boj`)などは、`providers` で指定して足す。
/// 例: `{"sources":[{"provider":"ecb"},{"provider":"frankfurter","providers":"boj","currencies":["USD"]}]}`
class ExchangeSettings {
  const ExchangeSettings({required this.sources});

  /// 取得元の数の上限。
  static const maxSources = 3;

  static const standard = ExchangeSettings(
    sources: [
      ExchangeSourceConfig(provider: 'ecb'),
      ExchangeSourceConfig(provider: 'frankfurter', providers: 'ecb'),
    ],
  );

  final List<ExchangeSourceConfig> sources;

  /// 通貨 [code] が、どれかの取得元に指定されているか。
  bool isPinned(String code) =>
      sources.any((s) => s.currencies.contains(code.toUpperCase()));

  /// JSON から作る。無い・読めないときは標準。読めない取得元は外し、[maxSources] 件までにする。
  factory ExchangeSettings.fromJson(Object? json) {
    if (json is! Map || json['sources'] is! List) return standard;
    final list = <ExchangeSourceConfig>[];
    for (final item in json['sources'] as List) {
      if (item is! Map || item['provider'] is! String) continue;
      final provider = item['provider'] as String;
      if (provider != 'ecb' && provider != 'frankfurter') continue;
      final currencies = item['currencies'];
      list.add(
        ExchangeSourceConfig(
          provider: provider,
          url: item['url'] is String && (item['url'] as String).isNotEmpty
              ? item['url'] as String
              : null,
          providers:
              item['providers'] is String &&
                  (item['providers'] as String).isNotEmpty
              ? item['providers'] as String
              : null,
          currencies: currencies is List
              ? [
                  for (final c in currencies)
                    if (c is String && c.isNotEmpty) c.toUpperCase(),
                ]
              : const [],
        ),
      );
      if (list.length == maxSources) break;
    }
    return list.isEmpty ? standard : ExchangeSettings(sources: list);
  }

  Map<String, Object?> toJson() => {
    'sources': [for (final s in sources) s.toJson()],
  };
}
