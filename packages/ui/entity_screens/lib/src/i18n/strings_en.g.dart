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
class EntityScreenStringsEn extends EntityScreenStrings with BaseTranslations<EntityScreenLocale, EntityScreenStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [EntityScreenLocale.build] is preferred.
	EntityScreenStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: EntityScreenLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<EntityScreenLocale, EntityScreenStrings> _meta;
	@override TranslationMetadata<EntityScreenLocale, EntityScreenStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final EntityScreenStringsEn _root = this; // ignore: unused_field

	@override 
	EntityScreenStringsEn $copyWith({TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta}) => EntityScreenStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get create => 'New';
	@override String get save => 'Save';
	@override String get delete => 'Delete';
	@override String get cancel => 'Cancel';
	@override String get add => 'Add';
	@override String get parent => 'Parent';
	@override String get noParent => 'Top level (no parent)';
	@override String get pick => 'Select';
	@override String pickTitle({required Object name}) => 'Select ${name}';
	@override String get clear => 'Clear';
	@override String get unselected => 'Not selected';
	@override String get notFound => 'Data not found';
	@override String get loadFailed => 'Could not load';
	@override String get saveFailed => 'Could not save';
	@override String get deleteFailed => 'Could not delete';
	@override String get noData => 'No data';
	@override String get children => 'items';
	@override late final _EntityScreenStrings$confirmDelete$en confirmDelete = _EntityScreenStrings$confirmDelete$en._(_root);
	@override late final _EntityScreenStrings$condition$en condition = _EntityScreenStrings$condition$en._(_root);
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override late final _EntityScreenStrings$nested$en nested = _EntityScreenStrings$nested$en._(_root);
	@override late final _EntityScreenStrings$validation$en validation = _EntityScreenStrings$validation$en._(_root);
}

// Path: confirmDelete
class _EntityScreenStrings$confirmDelete$en extends EntityScreenStrings$confirmDelete$ja {
	_EntityScreenStrings$confirmDelete$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm deletion';
	@override String message({required Object name}) => 'Delete "${name}"?';
}

// Path: condition
class _EntityScreenStrings$condition$en extends EntityScreenStrings$condition$ja {
	_EntityScreenStrings$condition$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get between => 'Range';
	@override String get yesNo => 'Yes / No';
	@override String get value => 'Enter a value';
	@override String get lower => 'Lower';
	@override String get upper => 'Upper';
	@override String get yes => 'Yes';
	@override String get no => 'No';
}

// Path: nested
class _EntityScreenStrings$nested$en extends EntityScreenStrings$nested$ja {
	_EntityScreenStrings$nested$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get edit => 'Edit mode';
	@override String get done => 'Back to view';
	@override String get search => 'Search';
	@override String get sort => 'Sort';
	@override String get noSort => 'No sorting';
	@override String get add => 'Add';
	@override String get countSuffix => ' count';
}

// Path: validation
class _EntityScreenStrings$validation$en extends EntityScreenStrings$validation$ja {
	_EntityScreenStrings$validation$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get required => 'Required';
	@override String get invalidNumber => 'Enter a number';
	@override String get invalidDate => 'Enter a date as yyyy-MM-dd';
	@override String belowMinimum({required Object min}) => 'Enter ${min} or more';
	@override String notAboveMinimum({required Object min}) => 'Enter a value greater than ${min}';
	@override String lockedByChildren({required Object child}) => 'Cannot be turned off while ${child} exists';
	@override String get invalidCondition => 'Select an operator and enter a value';
	@override String get invalidChoice => 'Not one of the choices';
	@override String get parentCycle => 'Itself or its descendants cannot be the parent';
	@override String get hasChildren => 'It has child items and cannot be deleted';
	@override String get referenced => 'It is in use and cannot be deleted';
	@override String get duplicate => 'Already exists';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on EntityScreenStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'create' => 'New',
			'save' => 'Save',
			'delete' => 'Delete',
			'cancel' => 'Cancel',
			'add' => 'Add',
			'parent' => 'Parent',
			'noParent' => 'Top level (no parent)',
			'pick' => 'Select',
			'pickTitle' => ({required Object name}) => 'Select ${name}',
			'clear' => 'Clear',
			'unselected' => 'Not selected',
			'notFound' => 'Data not found',
			'loadFailed' => 'Could not load',
			'saveFailed' => 'Could not save',
			'deleteFailed' => 'Could not delete',
			'noData' => 'No data',
			'children' => 'items',
			'confirmDelete.title' => 'Confirm deletion',
			'confirmDelete.message' => ({required Object name}) => 'Delete "${name}"?',
			'condition.between' => 'Range',
			'condition.yesNo' => 'Yes / No',
			'condition.value' => 'Enter a value',
			'condition.lower' => 'Lower',
			'condition.upper' => 'Upper',
			'condition.yes' => 'Yes',
			'condition.no' => 'No',
			'yes' => 'Yes',
			'no' => 'No',
			'nested.edit' => 'Edit mode',
			'nested.done' => 'Back to view',
			'nested.search' => 'Search',
			'nested.sort' => 'Sort',
			'nested.noSort' => 'No sorting',
			'nested.add' => 'Add',
			'nested.countSuffix' => ' count',
			'validation.required' => 'Required',
			'validation.invalidNumber' => 'Enter a number',
			'validation.invalidDate' => 'Enter a date as yyyy-MM-dd',
			'validation.belowMinimum' => ({required Object min}) => 'Enter ${min} or more',
			'validation.notAboveMinimum' => ({required Object min}) => 'Enter a value greater than ${min}',
			'validation.lockedByChildren' => ({required Object child}) => 'Cannot be turned off while ${child} exists',
			'validation.invalidCondition' => 'Select an operator and enter a value',
			'validation.invalidChoice' => 'Not one of the choices',
			'validation.parentCycle' => 'Itself or its descendants cannot be the parent',
			'validation.hasChildren' => 'It has child items and cannot be deleted',
			'validation.referenced' => 'It is in use and cannot be deleted',
			'validation.duplicate' => 'Already exists',
			_ => null,
		};
	}
}
