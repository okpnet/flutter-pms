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
class DashboardContainerStringsEn extends DashboardContainerStrings with BaseTranslations<DashboardContainerLocale, DashboardContainerStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [DashboardContainerLocale.build] is preferred.
	DashboardContainerStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: DashboardContainerLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> _meta;
	@override TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final DashboardContainerStringsEn _root = this; // ignore: unused_field

	@override 
	DashboardContainerStringsEn $copyWith({TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta}) => DashboardContainerStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get all => 'All';
	@override String get unit => 'records';
	@override String get loading => 'Loading...';
	@override String get failed => 'Could not load';
	@override String get unavailable => 'Not configured';
	@override String get filter => 'Filter';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on DashboardContainerStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'all' => 'All',
			'unit' => 'records',
			'loading' => 'Loading...',
			'failed' => 'Could not load',
			'unavailable' => 'Not configured',
			'filter' => 'Filter',
			_ => null,
		};
	}
}
