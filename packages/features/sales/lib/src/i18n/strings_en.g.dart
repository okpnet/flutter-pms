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
class SalesStringsEn extends SalesStrings with BaseTranslations<SalesLocale, SalesStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SalesLocale.build] is preferred.
	SalesStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SalesLocale, SalesStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SalesLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<SalesLocale, SalesStrings> _meta;
	@override TranslationMetadata<SalesLocale, SalesStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final SalesStringsEn _root = this; // ignore: unused_field

	@override 
	SalesStringsEn $copyWith({TranslationMetadata<SalesLocale, SalesStrings>? meta}) => SalesStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _SalesStrings$customer$en customer = _SalesStrings$customer$en._(_root);
	@override late final _SalesStrings$common$en common = _SalesStrings$common$en._(_root);
}

// Path: customer
class _SalesStrings$customer$en extends SalesStrings$customer$ja {
	_SalesStrings$customer$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Customers';
	@override String get pickerTitle => 'Select a customer';
	@override String get editTitle => 'Edit customer';
	@override String get notFound => 'Customer not found';
	@override String get loadFailed => 'Could not load customers';
	@override String get saveFailed => 'Could not save';
	@override late final _SalesStrings$customer$columns$en columns = _SalesStrings$customer$columns$en._(_root);
	@override late final _SalesStrings$customer$fields$en fields = _SalesStrings$customer$fields$en._(_root);
}

// Path: common
class _SalesStrings$common$en extends SalesStrings$common$ja {
	_SalesStrings$common$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get save => 'Save';
}

// Path: customer.columns
class _SalesStrings$customer$columns$en extends SalesStrings$customer$columns$ja {
	_SalesStrings$customer$columns$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get code => 'Code';
	@override String get name => 'Name';
	@override String get mail => 'Mail';
	@override String get phone => 'Phone';
}

// Path: customer.fields
class _SalesStrings$customer$fields$en extends SalesStrings$customer$fields$ja {
	_SalesStrings$customer$fields$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Customer name';
	@override String get id => 'ID';
	@override String get code => 'Code';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SalesStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'customer.title' => 'Customers',
			'customer.pickerTitle' => 'Select a customer',
			'customer.editTitle' => 'Edit customer',
			'customer.notFound' => 'Customer not found',
			'customer.loadFailed' => 'Could not load customers',
			'customer.saveFailed' => 'Could not save',
			'customer.columns.code' => 'Code',
			'customer.columns.name' => 'Name',
			'customer.columns.mail' => 'Mail',
			'customer.columns.phone' => 'Phone',
			'customer.fields.name' => 'Customer name',
			'customer.fields.id' => 'ID',
			'customer.fields.code' => 'Code',
			'common.save' => 'Save',
			_ => null,
		};
	}
}
