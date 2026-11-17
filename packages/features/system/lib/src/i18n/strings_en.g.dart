///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class SystemStringsEn extends SystemStrings with BaseTranslations<SystemLocale, SystemStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SystemLocale.build] is preferred.
	SystemStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SystemLocale, SystemStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SystemLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<SystemLocale, SystemStrings> _meta;
	@override TranslationMetadata<SystemLocale, SystemStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final SystemStringsEn _root = this; // ignore: unused_field

	@override 
	SystemStringsEn $copyWith({TranslationMetadata<SystemLocale, SystemStrings>? meta}) => SystemStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _SystemStrings$menu$en menu = _SystemStrings$menu$en._(_root);
	@override late final _SystemStrings$entity$en entity = _SystemStrings$entity$en._(_root);
}

// Path: menu
class _SystemStrings$menu$en extends SystemStrings$menu$ja {
	_SystemStrings$menu$en._(SystemStringsEn root) : this._root = root, super.internal(root);

	final SystemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'System';
}

// Path: entity
class _SystemStrings$entity$en extends SystemStrings$entity$ja {
	_SystemStrings$entity$en._(SystemStringsEn root) : this._root = root, super.internal(root);

	final SystemStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _SystemStrings$entity$unit$en unit = _SystemStrings$entity$unit$en._(_root);
}

// Path: entity.unit
class _SystemStrings$entity$unit$en extends SystemStrings$entity$unit$ja {
	_SystemStrings$entity$unit$en._(SystemStringsEn root) : this._root = root, super.internal(root);

	final SystemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Units';
	@override late final _SystemStrings$entity$unit$fields$en fields = _SystemStrings$entity$unit$fields$en._(_root);
}

// Path: entity.unit.fields
class _SystemStrings$entity$unit$fields$en extends SystemStrings$entity$unit$fields$ja {
	_SystemStrings$entity$unit$fields$en._(SystemStringsEn root) : this._root = root, super.internal(root);

	final SystemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Unit name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_detail => 'Details';
	@override String get f_symbol => 'Symbol';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SystemStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'System',
			'entity.unit.title' => 'Units',
			'entity.unit.fields.f_name' => 'Unit name',
			'entity.unit.fields.f_pronunciation' => 'Reading',
			'entity.unit.fields.f_nickname' => 'Abbreviation',
			'entity.unit.fields.f_detail' => 'Details',
			'entity.unit.fields.f_symbol' => 'Symbol',
			'entity.unit.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
