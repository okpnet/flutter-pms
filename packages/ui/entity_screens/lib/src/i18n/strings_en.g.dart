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
	@override String get editMode => 'Edit';
	@override String get editDone => 'Done editing';
	@override String get editHint => 'Double-click (long press) a row to edit it.';
	@override String editTitle({required Object name}) => 'Edit ${name}';
	@override String newTitle({required Object name}) => 'New ${name}';
	@override String get belowLabel => 'Below';
	@override String belowCount({required Object count}) => '${count} below';
	@override String get requiredMark => 'Required';
	@override String get back => 'Back';
	@override String get backToList => 'Back to the list';
	@override String asOf({required Object date}) => 'As of ${date}';
	@override String searchTitle({required Object name}) => 'Search ${name}';
	@override String get searchHint => 'Search';
	@override String get chipAll => 'All';
	@override String listTitle({required Object name}) => '${name} list';
	@override String listCount({required Object shown, required Object total}) => 'Showing ${shown} of ${total}.';
	@override String listTotal({required Object label, required Object value}) => 'Total (${label}): ${value}';
	@override String get actionMenu => 'Actions';
	@override String get actionSelected => 'Selected row';
	@override String get actionHint => 'Select a row to choose an action for it.';
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
	@override late final _EntityScreenStrings$file$en file = _EntityScreenStrings$file$en._(_root);
	@override String get notFound => 'Data not found';
	@override String get loadFailed => 'Could not load';
	@override String get saveFailed => 'Could not save';
	@override String get deleteFailed => 'Could not delete';
	@override String get noData => 'No data';
	@override String get children => 'items';
	@override late final _EntityScreenStrings$confirmDelete$en confirmDelete = _EntityScreenStrings$confirmDelete$en._(_root);
	@override late final _EntityScreenStrings$confirmSave$en confirmSave = _EntityScreenStrings$confirmSave$en._(_root);
	@override late final _EntityScreenStrings$failure$en failure = _EntityScreenStrings$failure$en._(_root);
	@override late final _EntityScreenStrings$condition$en condition = _EntityScreenStrings$condition$en._(_root);
	@override String get yes => 'Yes';
	@override String get provisionalMark => ' (prov.)';
	@override String get provisionalSome => ' (partly prov.)';
	@override String get no => 'No';
	@override late final _EntityScreenStrings$nested$en nested = _EntityScreenStrings$nested$en._(_root);
	@override late final _EntityScreenStrings$validation$en validation = _EntityScreenStrings$validation$en._(_root);
}

// Path: file
class _EntityScreenStrings$file$en extends EntityScreenStrings$file$ja {
	_EntityScreenStrings$file$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get upload => 'Upload';
	@override String get replace => 'Replace';
	@override String get none => 'No file';
	@override String get uploadFailed => 'Could not upload';
	@override String get downloadFailed => 'Could not download';
	@override String get downloaded => 'Saved';
}

// Path: confirmDelete
class _EntityScreenStrings$confirmDelete$en extends EntityScreenStrings$confirmDelete$ja {
	_EntityScreenStrings$confirmDelete$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm deletion';
	@override String message({required Object name}) => 'Delete "${name}"?';
}

// Path: confirmSave
class _EntityScreenStrings$confirmSave$en extends EntityScreenStrings$confirmSave$ja {
	_EntityScreenStrings$confirmSave$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm';
	@override String get message => 'This cannot be undone (it is recorded as an append-only entry). Continue?';
	@override String get ok => 'Run';
	@override String get done => 'Done';
}

// Path: failure
class _EntityScreenStrings$failure$en extends EntityScreenStrings$failure$ja {
	_EntityScreenStrings$failure$en._(EntityScreenStringsEn root) : this._root = root, super.internal(root);

	final EntityScreenStringsEn _root; // ignore: unused_field

	// Translations
	@override String get notFound => 'The target was not found (it may already have been processed)';
	@override String get notAllowed => 'Not allowed in the current state';
	@override String get invalidInput => 'The input is not valid';
	@override String get noLocation => 'The shelf has no location set';
	@override String get unavailable => 'Cannot connect to the server';
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
	@override String aboveMaximum({required Object max}) => 'Enter ${max} or less';
	@override String notBelowMaximum({required Object max}) => 'Enter a value less than ${max}';
	@override String beforeOtherDate({required Object other}) => 'Enter a date on or after ${other}';
	@override String get bothSelected => 'Select only one of them';
	@override String lockedByChildren({required Object child}) => 'Cannot be turned off while ${child} exists';
	@override String get invalidCondition => 'Select an operator and enter a value';
	@override String get invalidChoice => 'Not one of the choices';
	@override String get parentCycle => 'Itself or its descendants cannot be the parent';
	@override String get hasChildren => 'It has child items and cannot be deleted';
	@override String get referenced => 'It is in use and cannot be deleted';
	@override String get duplicate => 'Already exists';
	@override String get periodLocked => 'This period is closed, so it cannot be registered or changed';
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
			'editMode' => 'Edit',
			'editDone' => 'Done editing',
			'editHint' => 'Double-click (long press) a row to edit it.',
			'editTitle' => ({required Object name}) => 'Edit ${name}',
			'newTitle' => ({required Object name}) => 'New ${name}',
			'belowLabel' => 'Below',
			'belowCount' => ({required Object count}) => '${count} below',
			'requiredMark' => 'Required',
			'back' => 'Back',
			'backToList' => 'Back to the list',
			'asOf' => ({required Object date}) => 'As of ${date}',
			'searchTitle' => ({required Object name}) => 'Search ${name}',
			'searchHint' => 'Search',
			'chipAll' => 'All',
			'listTitle' => ({required Object name}) => '${name} list',
			'listCount' => ({required Object shown, required Object total}) => 'Showing ${shown} of ${total}.',
			'listTotal' => ({required Object label, required Object value}) => 'Total (${label}): ${value}',
			'actionMenu' => 'Actions',
			'actionSelected' => 'Selected row',
			'actionHint' => 'Select a row to choose an action for it.',
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
			'file.upload' => 'Upload',
			'file.replace' => 'Replace',
			'file.none' => 'No file',
			'file.uploadFailed' => 'Could not upload',
			'file.downloadFailed' => 'Could not download',
			'file.downloaded' => 'Saved',
			'notFound' => 'Data not found',
			'loadFailed' => 'Could not load',
			'saveFailed' => 'Could not save',
			'deleteFailed' => 'Could not delete',
			'noData' => 'No data',
			'children' => 'items',
			'confirmDelete.title' => 'Confirm deletion',
			'confirmDelete.message' => ({required Object name}) => 'Delete "${name}"?',
			'confirmSave.title' => 'Confirm',
			'confirmSave.message' => 'This cannot be undone (it is recorded as an append-only entry). Continue?',
			'confirmSave.ok' => 'Run',
			'confirmSave.done' => 'Done',
			'failure.notFound' => 'The target was not found (it may already have been processed)',
			'failure.notAllowed' => 'Not allowed in the current state',
			'failure.invalidInput' => 'The input is not valid',
			'failure.noLocation' => 'The shelf has no location set',
			'failure.unavailable' => 'Cannot connect to the server',
			'condition.between' => 'Range',
			'condition.yesNo' => 'Yes / No',
			'condition.value' => 'Enter a value',
			'condition.lower' => 'Lower',
			'condition.upper' => 'Upper',
			'condition.yes' => 'Yes',
			'condition.no' => 'No',
			'yes' => 'Yes',
			'provisionalMark' => ' (prov.)',
			'provisionalSome' => ' (partly prov.)',
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
			'validation.aboveMaximum' => ({required Object max}) => 'Enter ${max} or less',
			'validation.notBelowMaximum' => ({required Object max}) => 'Enter a value less than ${max}',
			'validation.beforeOtherDate' => ({required Object other}) => 'Enter a date on or after ${other}',
			'validation.bothSelected' => 'Select only one of them',
			'validation.lockedByChildren' => ({required Object child}) => 'Cannot be turned off while ${child} exists',
			'validation.invalidCondition' => 'Select an operator and enter a value',
			'validation.invalidChoice' => 'Not one of the choices',
			'validation.parentCycle' => 'Itself or its descendants cannot be the parent',
			'validation.hasChildren' => 'It has child items and cannot be deleted',
			'validation.referenced' => 'It is in use and cannot be deleted',
			'validation.duplicate' => 'Already exists',
			'validation.periodLocked' => 'This period is closed, so it cannot be registered or changed',
			_ => null,
		};
	}
}
