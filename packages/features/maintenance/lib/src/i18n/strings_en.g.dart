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
class MaintenanceStringsEn extends MaintenanceStrings with BaseTranslations<MaintenanceLocale, MaintenanceStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [MaintenanceLocale.build] is preferred.
	MaintenanceStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<MaintenanceLocale, MaintenanceStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: MaintenanceLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<MaintenanceLocale, MaintenanceStrings> _meta;
	@override TranslationMetadata<MaintenanceLocale, MaintenanceStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final MaintenanceStringsEn _root = this; // ignore: unused_field

	@override 
	MaintenanceStringsEn $copyWith({TranslationMetadata<MaintenanceLocale, MaintenanceStrings>? meta}) => MaintenanceStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get title => 'Under maintenance';
	@override String get defaultMessage => 'The system is under maintenance. Please wait until it finishes.';
	@override late final _MaintenanceStrings$period$en period = _MaintenanceStrings$period$en._(_root);
	@override late final _MaintenanceStrings$retry$en retry = _MaintenanceStrings$retry$en._(_root);
}

// Path: period
class _MaintenanceStrings$period$en extends MaintenanceStrings$period$ja {
	_MaintenanceStrings$period$en._(MaintenanceStringsEn root) : this._root = root, super.internal(root);

	final MaintenanceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maintenance window';
	@override String get start => 'Start';
	@override String get end => 'End';
	@override String get undecided => 'To be announced';
}

// Path: retry
class _MaintenanceStrings$retry$en extends MaintenanceStrings$retry$ja {
	_MaintenanceStrings$retry$en._(MaintenanceStringsEn root) : this._root = root, super.internal(root);

	final MaintenanceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Check again';
	@override String get checking => 'Checking...';
	@override String get stillUnder => 'The system is still under maintenance.';
	@override String get failed => 'Could not check the status. Please try again later.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on MaintenanceStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => 'Under maintenance',
			'defaultMessage' => 'The system is under maintenance. Please wait until it finishes.',
			'period.title' => 'Maintenance window',
			'period.start' => 'Start',
			'period.end' => 'End',
			'period.undecided' => 'To be announced',
			'retry.label' => 'Check again',
			'retry.checking' => 'Checking...',
			'retry.stillUnder' => 'The system is still under maintenance.',
			'retry.failed' => 'Could not check the status. Please try again later.',
			_ => null,
		};
	}
}
