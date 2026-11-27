/// 通貨記号を付ける位置。
enum MoneyPosition {
  /// 数値の前(`¥1,200`)。
  prefix,

  /// 数値の後ろ(`1,200 円`)。
  suffix,
}

/// 言語ごとの通貨の表示(記号と位置)。
class MoneyStyle {
  const MoneyStyle({required this.symbol, required this.position});

  final String symbol;
  final MoneyPosition position;

  factory MoneyStyle.fromJson(
    Map<String, Object?> json, {
    required MoneyStyle fallback,
  }) => MoneyStyle(
    symbol: json['symbol'] is String && (json['symbol'] as String).isNotEmpty
        ? json['symbol'] as String
        : fallback.symbol,
    position: switch (json['position']) {
      'prefix' => MoneyPosition.prefix,
      'suffix' => MoneyPosition.suffix,
      _ => fallback.position,
    },
  );

  Map<String, Object?> toJson() => {
    'symbol': symbol,
    'position': position.name,
  };
}

/// 金額(`FieldDefinition.money`)の表示。**表示だけ**を変え、値は変えない(換算・複数通貨は扱わない。金額は取引の通貨のまま保存する)。
///
/// 通貨は 1 つ([code])。記号と位置は、言語ごとに持てる([byLanguage]。例: 日本語は「1,200 円」、英語は「¥1,200」)。
/// 言語に無いときは [base]。設定は `info_app.settings` の JSON の `currency`(DB の列は増やさない。形は [fromJson])。
/// 位置(前/後ろ)を DB の列に持たず、設定の JSON の言語ごとの値に持つため、通貨・言語を増やしても表・画面を変えずに済む。
///
/// パターン: Value Object(表示の規則。計算しない)
class MoneyFormat {
  const MoneyFormat({
    this.code = 'JPY',
    this.base = _yen,
    this.byLanguage = _standardByLanguage,
  });

  static const _yen = MoneyStyle(symbol: '円', position: MoneyPosition.suffix);
  static const _standardByLanguage = <String, MoneyStyle>{
    'en': MoneyStyle(symbol: '¥', position: MoneyPosition.prefix),
  };

  /// 標準(日本円。日本語は後ろ「円」、英語は前「¥」)。
  static const standard = MoneyFormat();

  /// 通貨コード(ISO 4217)。表示には使わない(将来の換算・複数通貨のため)。
  final String code;

  /// 言語に指定が無いときの記号と位置。
  final MoneyStyle base;

  /// 言語コード(小文字。`ja`・`en`)ごとの記号と位置。
  final Map<String, MoneyStyle> byLanguage;

  MoneyStyle styleOf(String languageCode) =>
      byLanguage[languageCode.toLowerCase()] ?? base;

  /// 数値の文字 [value] を、桁区切りと通貨記号つきの文字にする。数値として読めない・空のときは、そのまま返す。
  /// 小数は、入っている桁のまま(切り捨て・丸めをしない)。
  String format(String value, {String languageCode = 'ja', String? symbol}) {
    final text = value.trim();
    if (text.isEmpty || double.tryParse(text) == null) return value;
    final style = styleOf(languageCode);
    final mark = _symbolOf(style, symbol);
    final number = _group(text);
    return switch (style.position) {
      MoneyPosition.prefix => '$mark$number',
      MoneyPosition.suffix => '$number $mark',
    };
  }

  /// 編集の入力欄に付ける記号(前・後ろの片方だけが入る)。
  ({String? prefix, String? suffix}) affixesOf(
    String languageCode, {
    String? symbol,
  }) {
    final style = styleOf(languageCode);
    final mark = _symbolOf(style, symbol);
    return style.position == MoneyPosition.prefix
        ? (prefix: mark, suffix: null)
        : (prefix: null, suffix: mark);
  }

  /// 行の通貨の記号(取引の通貨。DB の通貨マスタの記号)があればそれ、無ければ設定の記号。位置は設定(言語ごと)に従う。
  static String _symbolOf(MoneyStyle style, String? symbol) =>
      symbol != null && symbol.trim().isNotEmpty ? symbol.trim() : style.symbol;

  static String _group(String text) {
    final negative = text.startsWith('-');
    final body = negative ? text.substring(1) : text;
    final dot = body.indexOf('.');
    final intPart = dot < 0 ? body : body.substring(0, dot);
    final frac = dot < 0 ? '' : body.substring(dot);
    final buf = StringBuffer();
    for (var i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) buf.write(',');
      buf.write(intPart[i]);
    }
    return '${negative ? '-' : ''}$buf$frac';
  }

  /// 設定の JSON(`currency`)から読む。null・不正は標準。形:
  /// `{"code":"JPY","symbol":"円","position":"suffix","en":{"symbol":"¥","position":"prefix"}}`
  /// (`symbol`・`position` は標準の言語以外の既定。言語コードのキー(`en` など)で、その言語の記号と位置)。
  factory MoneyFormat.fromJson(Object? raw) {
    if (raw is! Map) return standard;
    final json = {for (final e in raw.entries) '${e.key}': e.value};
    final base = MoneyStyle.fromJson({
      'symbol': json['symbol'],
      'position': json['position'],
    }, fallback: _yen);
    final byLanguage = <String, MoneyStyle>{...standard.byLanguage};
    for (final e in json.entries) {
      if (e.value is Map && e.key.length == 2) {
        byLanguage[e.key.toLowerCase()] = MoneyStyle.fromJson({
          for (final x in (e.value as Map).entries) '${x.key}': x.value,
        }, fallback: byLanguage[e.key.toLowerCase()] ?? base);
      }
    }
    return MoneyFormat(
      code: json['code'] is String && (json['code'] as String).isNotEmpty
          ? json['code'] as String
          : 'JPY',
      base: base,
      byLanguage: byLanguage,
    );
  }

  Map<String, Object?> toJson() => {
    'code': code,
    'symbol': base.symbol,
    'position': base.position.name,
    for (final e in byLanguage.entries) e.key: e.value.toJson(),
  };
}
