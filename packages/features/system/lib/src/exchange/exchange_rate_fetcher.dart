import 'exchange_rate_source.dart';
import 'exchange_settings.dart';
import 'rate_sheet.dart';
import 'text_fetcher.dart';

/// 取得できた 1 件のレート(アプリの基準通貨に換算済み)。
class FetchedRate {
  const FetchedRate({
    required this.code,
    required this.rate,
    required this.date,
    required this.source,
  });

  /// 通貨コード。
  final String code;

  /// 1 単位 = 基準通貨いくら。
  final double rate;

  /// レートの日付(適用開始日。`yyyy-MM-dd`)。
  final String date;

  /// 出典(`trans_exchange_rate.source` に残す。取得元の名前と、基準の通貨から換算した旨)。
  final String source;
}

/// 取得できなかった理由(種類。画面が表示時に文字にする)。
enum FetchFailureReason {
  /// どの取得元も、この通貨のレートを持たない(取得元の対象外)。
  notProvided,

  /// 取得元がすべて接続できなかった。
  sourcesUnavailable,
}

class FetchFailure {
  const FetchFailure(this.code, this.reason);
  final String code;
  final FetchFailureReason reason;
}

/// [ExchangeRateFetcher.fetch] の結果。
class FetchResult {
  const FetchResult({
    required this.rates,
    required this.failures,
    required this.sourceErrors,
  });

  final List<FetchedRate> rates;
  final List<FetchFailure> failures;

  /// 接続できなかった取得元の名前 → 理由(ログ・画面の注記用)。
  final Map<String, String> sourceErrors;
}

/// 取得元を優先順位の順に試して、通貨ごとのレートを集める(Chain of Responsibility)。
///
/// 取得元が接続できない(例外)ときは次へ進む。取得元がその通貨を持たないときも次へ進む。
/// すべての取得元を試しても取れなかった通貨は、失敗の一覧に入れる(手入力で補える)。
class ExchangeRateFetcher {
  ExchangeRateFetcher(this.sources, this.settings);

  /// 設定から作る。接続は [fetcher](標準は https だけ)。
  factory ExchangeRateFetcher.fromSettings(
    ExchangeSettings settings, {
    TextFetcher fetcher = httpsTextFetcher,
  }) {
    final pairs = <(ExchangeSourceConfig, IExchangeRateSource)>[];
    for (final c in settings.sources) {
      final source = c.build(fetcher);
      if (source != null) pairs.add((c, source));
    }
    return ExchangeRateFetcher([
      for (final p in pairs) p.$2,
    ], ExchangeSettings(sources: [for (final p in pairs) p.$1]));
  }

  final List<IExchangeRateSource> sources;
  final ExchangeSettings settings;

  /// [codes] の通貨のレートを、基準通貨 [baseCode] への換算で取得する。基準通貨自身は取りに行かない。
  Future<FetchResult> fetch(
    List<String> codes, {
    required String baseCode,
  }) async {
    final want = [for (final c in codes) c.toUpperCase()]
      ..removeWhere((c) => c == baseCode.toUpperCase());
    final remaining = [...want];
    final got = <FetchedRate>[];
    final errors = <String, String>{};
    for (var i = 0; i < sources.length && remaining.isNotEmpty; i++) {
      final config = settings.sources[i];
      final mine = [
        for (final c in remaining)
          if (config.covers(c, pinned: settings.isPinned(c))) c,
      ];
      if (mine.isEmpty) continue;
      final RateSheet sheet;
      try {
        sheet = await sources[i].fetch();
      } catch (e) {
        errors[sources[i].label] = '$e';
        continue;
      }
      for (final code in mine) {
        final rate = sheet.crossRate(code, baseCode);
        if (rate == null) continue;
        final converted = sheet.base.toUpperCase() != baseCode.toUpperCase();
        got.add(
          FetchedRate(
            code: code,
            rate: rate,
            date: sheet.date,
            source: converted
                ? '${sources[i].label}(${sheet.base} 基準から換算)'
                : sources[i].label,
          ),
        );
        remaining.remove(code);
      }
    }
    final reason =
        got.isEmpty && errors.length == sources.length && sources.isNotEmpty
        ? FetchFailureReason.sourcesUnavailable
        : FetchFailureReason.notProvided;
    return FetchResult(
      rates: got,
      failures: [for (final c in remaining) FetchFailure(c, reason)],
      sourceErrors: errors,
    );
  }
}
