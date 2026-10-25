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
	late final SystemStrings$entity$ja entity = SystemStrings$entity$ja.internal(_root);
}

// Path: entity
class SystemStrings$entity$ja {
	SystemStrings$entity$ja.internal(this._root);

	final SystemStrings _root; // ignore: unused_field

	// Translations
	late final SystemStrings$entity$unit$ja unit = SystemStrings$entity$unit$ja.internal(_root);
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

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SystemStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'entity.unit.title' => '単位',
			'entity.unit.fields.f_name' => '単位名称',
			'entity.unit.fields.f_pronunciation' => '読み',
			'entity.unit.fields.f_nickname' => '略称',
			'entity.unit.fields.f_detail' => '詳細',
			'entity.unit.fields.f_symbol' => '記号',
			'entity.unit.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
