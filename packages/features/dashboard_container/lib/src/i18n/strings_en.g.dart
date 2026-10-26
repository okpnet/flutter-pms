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
	@override late final _DashboardContainerStrings$edit$en edit = _DashboardContainerStrings$edit$en._(_root);
}

// Path: edit
class _DashboardContainerStrings$edit$en extends DashboardContainerStrings$edit$ja {
	_DashboardContainerStrings$edit$en._(DashboardContainerStringsEn root) : this._root = root, super.internal(root);

	final DashboardContainerStringsEn _root; // ignore: unused_field

	// Translations
	@override String get empty => 'No containers. Add one.';
	@override String get addContainer => 'Add container';
	@override String get addTile => 'Add item';
	@override String get moveUp => 'Move up';
	@override String get moveDown => 'Move down';
	@override String get delete => 'Delete';
	@override String get source => 'Source';
	@override String get group => 'Filter group';
	@override String get noGroup => 'None';
	@override late final _DashboardContainerStrings$edit$size$en size = _DashboardContainerStrings$edit$size$en._(_root);
	@override String get hiddenTile => 'Hidden (over the size limit)';
}

// Path: edit.size
class _DashboardContainerStrings$edit$size$en extends DashboardContainerStrings$edit$size$ja {
	_DashboardContainerStrings$edit$size$en._(DashboardContainerStringsEn root) : this._root = root, super.internal(root);

	final DashboardContainerStringsEn _root; // ignore: unused_field

	// Translations
	@override String get full => 'Full';
	@override String get half => '1/2';
	@override String get quarter => '1/4';
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
			'edit.empty' => 'No containers. Add one.',
			'edit.addContainer' => 'Add container',
			'edit.addTile' => 'Add item',
			'edit.moveUp' => 'Move up',
			'edit.moveDown' => 'Move down',
			'edit.delete' => 'Delete',
			'edit.source' => 'Source',
			'edit.group' => 'Filter group',
			'edit.noGroup' => 'None',
			'edit.size.full' => 'Full',
			'edit.size.half' => '1/2',
			'edit.size.quarter' => '1/4',
			'edit.hiddenTile' => 'Hidden (over the size limit)',
			_ => null,
		};
	}
}
