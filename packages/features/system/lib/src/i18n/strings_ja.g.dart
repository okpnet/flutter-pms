///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef SystemStringsJa = SystemStrings; // ignore: unused_element
class SystemStrings with BaseTranslations<SystemLocale, SystemStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SystemLocale.build] is preferred.
	SystemStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SystemLocale, SystemStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SystemLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<SystemLocale, SystemStrings> _meta;
	@override TranslationMetadata<SystemLocale, SystemStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final SystemStrings _root = this; // ignore: unused_field

	SystemStrings $copyWith({TranslationMetadata<SystemLocale, SystemStrings>? meta}) => SystemStrings(meta: meta ?? this.$meta);

	// Translations
	late final SystemStrings$exchange$ja exchange = SystemStrings$exchange$ja.internal(_root);
	late final SystemStrings$menu$ja menu = SystemStrings$menu$ja.internal(_root);
	late final SystemStrings$entity$ja entity = SystemStrings$entity$ja.internal(_root);
}

// Path: exchange
class SystemStrings$exchange$ja {
	SystemStrings$exchange$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '自動取得'
	String get fetch => '自動取得';

	/// ja: '為替レートの自動取得'
	String get title => '為替レートの自動取得';

	/// ja: '取得しています…'
	String get running => '取得しています…';

	/// ja: '登録: {count} 件'
	String get registered => '登録: {count} 件';

	/// ja: '登録済みのため省略: {count} 件'
	String get skipped => '登録済みのため省略: {count} 件';

	/// ja: '取得できなかった通貨(手入力で補えます)'
	String get failed => '取得できなかった通貨(手入力で補えます)';

	/// ja: '取得元に無い通貨'
	String get notProvided => '取得元に無い通貨';

	/// ja: '取得元に接続できません'
	String get sourcesUnavailable => '取得元に接続できません';

	/// ja: '接続できなかった取得元'
	String get sourceErrors => '接続できなかった取得元';

	/// ja: '自動取得の対象の通貨がありません(通貨の「レートの自動取得の対象」)。'
	String get nothingToDo => '自動取得の対象の通貨がありません(通貨の「レートの自動取得の対象」)。';

	/// ja: '出典は為替レートの出典の列に残します。レートは情報提供用の概算で、決済・会計には使いません。'
	String get note => '出典は為替レートの出典の列に残します。レートは情報提供用の概算で、決済・会計には使いません。';

	/// ja: '閉じる'
	String get close => '閉じる';
}

// Path: menu
class SystemStrings$menu$ja {
	SystemStrings$menu$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'システム'
	String get group => 'システム';
}

// Path: entity
class SystemStrings$entity$ja {
	SystemStrings$entity$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations
	late final SystemStrings$entity$unit$ja unit = SystemStrings$entity$unit$ja.internal(_root);
	late final SystemStrings$entity$currency$ja currency = SystemStrings$entity$currency$ja.internal(_root);
	late final SystemStrings$entity$exchangerate$ja exchangerate = SystemStrings$entity$exchangerate$ja.internal(_root);
}

// Path: entity.unit
class SystemStrings$entity$unit$ja {
	SystemStrings$entity$unit$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '単位'
	String get title => '単位';

	late final SystemStrings$entity$unit$fields$ja fields = SystemStrings$entity$unit$fields$ja.internal(_root);
}

// Path: entity.currency
class SystemStrings$entity$currency$ja {
	SystemStrings$entity$currency$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '通貨'
	String get title => '通貨';

	late final SystemStrings$entity$currency$fields$ja fields = SystemStrings$entity$currency$fields$ja.internal(_root);
}

// Path: entity.exchangerate
class SystemStrings$entity$exchangerate$ja {
	SystemStrings$entity$exchangerate$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '為替レート'
	String get title => '為替レート';

	late final SystemStrings$entity$exchangerate$fields$ja fields = SystemStrings$entity$exchangerate$fields$ja.internal(_root);
}

// Path: entity.unit.fields
class SystemStrings$entity$unit$fields$ja {
	SystemStrings$entity$unit$fields$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '単位名称'
	String get f_name => '単位名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '記号'
	String get f_symbol => '記号';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.currency.fields
class SystemStrings$entity$currency$fields$ja {
	SystemStrings$entity$currency$fields$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '通貨コード'
	String get f_code => '通貨コード';

	/// ja: '通貨名称'
	String get f_name => '通貨名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '通貨記号'
	String get f_currency_symbol => '通貨記号';

	/// ja: '小数の桁数'
	String get f_minor_unit => '小数の桁数';

	/// ja: 'レートの自動取得の対象'
	String get f_rate_auto => 'レートの自動取得の対象';

	/// ja: '基準通貨'
	String get f_is_base => '基準通貨';

	/// ja: '最新のレート'
	String get f_latest_rate => '最新のレート';

	/// ja: 'レートの適用開始日'
	String get f_latest_rate_date => 'レートの適用開始日';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.exchangerate.fields
class SystemStrings$entity$exchangerate$fields$ja {
	SystemStrings$entity$exchangerate$fields$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '通貨'
	String get f_mstr_currency_id => '通貨';

	/// ja: '適用開始日'
	String get f_rate_date => '適用開始日';

	/// ja: 'レート'
	String get f_rate => 'レート';

	/// ja: '自動取得'
	String get f_auto_fetched => '自動取得';

	/// ja: '取得元'
	String get f_source => '取得元';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SystemStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'exchange.fetch' => '自動取得',
			'exchange.title' => '為替レートの自動取得',
			'exchange.running' => '取得しています…',
			'exchange.registered' => '登録: {count} 件',
			'exchange.skipped' => '登録済みのため省略: {count} 件',
			'exchange.failed' => '取得できなかった通貨(手入力で補えます)',
			'exchange.notProvided' => '取得元に無い通貨',
			'exchange.sourcesUnavailable' => '取得元に接続できません',
			'exchange.sourceErrors' => '接続できなかった取得元',
			'exchange.nothingToDo' => '自動取得の対象の通貨がありません(通貨の「レートの自動取得の対象」)。',
			'exchange.note' => '出典は為替レートの出典の列に残します。レートは情報提供用の概算で、決済・会計には使いません。',
			'exchange.close' => '閉じる',
			'menu.group' => 'システム',
			'entity.unit.title' => '単位',
			'entity.unit.fields.f_name' => '単位名称',
			'entity.unit.fields.f_pronunciation' => '読み',
			'entity.unit.fields.f_nickname' => '略称',
			'entity.unit.fields.f_detail' => '詳細',
			'entity.unit.fields.f_symbol' => '記号',
			'entity.unit.fields.f_remarks' => '備考',
			'entity.currency.title' => '通貨',
			'entity.currency.fields.f_code' => '通貨コード',
			'entity.currency.fields.f_name' => '通貨名称',
			'entity.currency.fields.f_pronunciation' => '読み',
			'entity.currency.fields.f_nickname' => '略称',
			'entity.currency.fields.f_currency_symbol' => '通貨記号',
			'entity.currency.fields.f_minor_unit' => '小数の桁数',
			'entity.currency.fields.f_rate_auto' => 'レートの自動取得の対象',
			'entity.currency.fields.f_is_base' => '基準通貨',
			'entity.currency.fields.f_latest_rate' => '最新のレート',
			'entity.currency.fields.f_latest_rate_date' => 'レートの適用開始日',
			'entity.currency.fields.f_remarks' => '備考',
			'entity.exchangerate.title' => '為替レート',
			'entity.exchangerate.fields.f_mstr_currency_id' => '通貨',
			'entity.exchangerate.fields.f_rate_date' => '適用開始日',
			'entity.exchangerate.fields.f_rate' => 'レート',
			'entity.exchangerate.fields.f_auto_fetched' => '自動取得',
			'entity.exchangerate.fields.f_source' => '取得元',
			'entity.exchangerate.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
