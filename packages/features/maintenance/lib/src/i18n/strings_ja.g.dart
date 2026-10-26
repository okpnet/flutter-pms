///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef MaintenanceStringsJa = MaintenanceStrings; // ignore: unused_element
class MaintenanceStrings with BaseTranslations<MaintenanceLocale, MaintenanceStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [MaintenanceLocale.build] is preferred.
	MaintenanceStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<MaintenanceLocale, MaintenanceStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: MaintenanceLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<MaintenanceLocale, MaintenanceStrings> _meta;
	@override TranslationMetadata<MaintenanceLocale, MaintenanceStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final MaintenanceStrings _root = this; // ignore: unused_field

	MaintenanceStrings $copyWith({TranslationMetadata<MaintenanceLocale, MaintenanceStrings>? meta}) => MaintenanceStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: 'メンテナンス中です'
	String get title => 'メンテナンス中です';

	/// ja: 'ただいまメンテナンスを行っています。終了までしばらくお待ちください。'
	String get defaultMessage => 'ただいまメンテナンスを行っています。終了までしばらくお待ちください。';

	late final MaintenanceStrings$period$ja period = MaintenanceStrings$period$ja.internal(_root);
	late final MaintenanceStrings$retry$ja retry = MaintenanceStrings$retry$ja.internal(_root);
}

// Path: period
class MaintenanceStrings$period$ja {
	MaintenanceStrings$period$ja.internal(this._root);

	final MaintenanceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '実施時間'
	String get title => '実施時間';

	/// ja: '開始'
	String get start => '開始';

	/// ja: '終了'
	String get end => '終了';

	/// ja: '未定'
	String get undecided => '未定';
}

// Path: retry
class MaintenanceStrings$retry$ja {
	MaintenanceStrings$retry$ja.internal(this._root);

	final MaintenanceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '再確認'
	String get label => '再確認';

	/// ja: '確認中...'
	String get checking => '確認中...';

	/// ja: 'まだメンテナンス中です。'
	String get stillUnder => 'まだメンテナンス中です。';

	/// ja: '確認できませんでした。しばらくしてからもう一度お試しください。'
	String get failed => '確認できませんでした。しばらくしてからもう一度お試しください。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on MaintenanceStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => 'メンテナンス中です',
			'defaultMessage' => 'ただいまメンテナンスを行っています。終了までしばらくお待ちください。',
			'period.title' => '実施時間',
			'period.start' => '開始',
			'period.end' => '終了',
			'period.undecided' => '未定',
			'retry.label' => '再確認',
			'retry.checking' => '確認中...',
			'retry.stillUnder' => 'まだメンテナンス中です。',
			'retry.failed' => '確認できませんでした。しばらくしてからもう一度お試しください。',
			_ => null,
		};
	}
}
