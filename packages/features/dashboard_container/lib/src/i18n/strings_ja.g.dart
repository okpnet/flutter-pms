///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef DashboardContainerStringsJa = DashboardContainerStrings; // ignore: unused_element
class DashboardContainerStrings with BaseTranslations<DashboardContainerLocale, DashboardContainerStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [DashboardContainerLocale.build] is preferred.
	DashboardContainerStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: DashboardContainerLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> _meta;
	@override TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final DashboardContainerStrings _root = this; // ignore: unused_field

	DashboardContainerStrings $copyWith({TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta}) => DashboardContainerStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: 'すべて'
	String get all => 'すべて';

	/// ja: '件'
	String get unit => '件';

	/// ja: '取得中...'
	String get loading => '取得中...';

	/// ja: '取得できません'
	String get failed => '取得できません';

	/// ja: '未設定の項目です'
	String get unavailable => '未設定の項目です';

	/// ja: '絞り込み'
	String get filter => '絞り込み';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on DashboardContainerStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'all' => 'すべて',
			'unit' => '件',
			'loading' => '取得中...',
			'failed' => '取得できません',
			'unavailable' => '未設定の項目です',
			'filter' => '絞り込み',
			_ => null,
		};
	}
}
