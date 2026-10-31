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
class SharedMasterStringsEn extends SharedMasterStrings with BaseTranslations<SharedMasterLocale, SharedMasterStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SharedMasterLocale.build] is preferred.
	SharedMasterStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SharedMasterLocale, SharedMasterStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SharedMasterLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<SharedMasterLocale, SharedMasterStrings> _meta;
	@override TranslationMetadata<SharedMasterLocale, SharedMasterStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final SharedMasterStringsEn _root = this; // ignore: unused_field

	@override 
	SharedMasterStringsEn $copyWith({TranslationMetadata<SharedMasterLocale, SharedMasterStrings>? meta}) => SharedMasterStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _SharedMasterStrings$shippingKind$en shippingKind = _SharedMasterStrings$shippingKind$en._(_root);
	@override late final _SharedMasterStrings$common$en common = _SharedMasterStrings$common$en._(_root);
	@override late final _SharedMasterStrings$menu$en menu = _SharedMasterStrings$menu$en._(_root);
	@override late final _SharedMasterStrings$stakeholder$en stakeholder = _SharedMasterStrings$stakeholder$en._(_root);
}

// Path: shippingKind
class _SharedMasterStrings$shippingKind$en extends SharedMasterStrings$shippingKind$ja {
	_SharedMasterStrings$shippingKind$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shipping kinds';
	@override String get pickerTitle => 'Select a shipping kind';
	@override String get createTitle => 'New shipping kind';
	@override String get editTitle => 'Edit shipping kind';
	@override String get create => 'New';
	@override String get notFound => 'Shipping kind not found';
	@override String get loadFailed => 'Could not load the shipping kind';
	@override String get saveFailed => 'Could not save';
	@override String get deleteFailed => 'Could not delete';
	@override late final _SharedMasterStrings$shippingKind$columns$en columns = _SharedMasterStrings$shippingKind$columns$en._(_root);
	@override late final _SharedMasterStrings$shippingKind$fields$en fields = _SharedMasterStrings$shippingKind$fields$en._(_root);
	@override late final _SharedMasterStrings$shippingKind$validation$en validation = _SharedMasterStrings$shippingKind$validation$en._(_root);
	@override late final _SharedMasterStrings$shippingKind$confirmDelete$en confirmDelete = _SharedMasterStrings$shippingKind$confirmDelete$en._(_root);
}

// Path: common
class _SharedMasterStrings$common$en extends SharedMasterStrings$common$ja {
	_SharedMasterStrings$common$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get save => 'Save';
	@override String get delete => 'Delete';
	@override String get cancel => 'Cancel';
}

// Path: menu
class _SharedMasterStrings$menu$en extends SharedMasterStrings$menu$ja {
	_SharedMasterStrings$menu$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get sales => 'Sales';
	@override String get purchasing => 'Purchasing';
}

// Path: stakeholder
class _SharedMasterStrings$stakeholder$en extends SharedMasterStrings$stakeholder$ja {
	_SharedMasterStrings$stakeholder$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get customerLedger => 'Customers';
	@override String get supplierLedger => 'Suppliers';
	@override String get customerPick => 'Select a customer';
	@override String get supplierPick => 'Select a supplier';
}

// Path: shippingKind.columns
class _SharedMasterStrings$shippingKind$columns$en extends SharedMasterStrings$shippingKind$columns$ja {
	_SharedMasterStrings$shippingKind$columns$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get code => 'Code';
	@override String get name => 'Name';
	@override String get pronunciation => 'Reading';
	@override String get nickname => 'Short name';
	@override String get remarks => 'Remarks';
}

// Path: shippingKind.fields
class _SharedMasterStrings$shippingKind$fields$en extends SharedMasterStrings$shippingKind$fields$ja {
	_SharedMasterStrings$shippingKind$fields$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get code => 'Code *';
	@override String get name => 'Name *';
}

// Path: shippingKind.validation
class _SharedMasterStrings$shippingKind$validation$en extends SharedMasterStrings$shippingKind$validation$ja {
	_SharedMasterStrings$shippingKind$validation$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get codeRequired => 'Code is required';
	@override String get nameRequired => 'Name is required';
	@override String get codeDuplicated => 'The code is already in use';
	@override String get inUse => 'It is in use and cannot be deleted';
}

// Path: shippingKind.confirmDelete
class _SharedMasterStrings$shippingKind$confirmDelete$en extends SharedMasterStrings$shippingKind$confirmDelete$ja {
	_SharedMasterStrings$shippingKind$confirmDelete$en._(SharedMasterStringsEn root) : this._root = root, super.internal(root);

	final SharedMasterStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm deletion';
	@override String message({required Object name}) => 'Delete "${name}"?';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SharedMasterStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'shippingKind.title' => 'Shipping kinds',
			'shippingKind.pickerTitle' => 'Select a shipping kind',
			'shippingKind.createTitle' => 'New shipping kind',
			'shippingKind.editTitle' => 'Edit shipping kind',
			'shippingKind.create' => 'New',
			'shippingKind.notFound' => 'Shipping kind not found',
			'shippingKind.loadFailed' => 'Could not load the shipping kind',
			'shippingKind.saveFailed' => 'Could not save',
			'shippingKind.deleteFailed' => 'Could not delete',
			'shippingKind.columns.code' => 'Code',
			'shippingKind.columns.name' => 'Name',
			'shippingKind.columns.pronunciation' => 'Reading',
			'shippingKind.columns.nickname' => 'Short name',
			'shippingKind.columns.remarks' => 'Remarks',
			'shippingKind.fields.code' => 'Code *',
			'shippingKind.fields.name' => 'Name *',
			'shippingKind.validation.codeRequired' => 'Code is required',
			'shippingKind.validation.nameRequired' => 'Name is required',
			'shippingKind.validation.codeDuplicated' => 'The code is already in use',
			'shippingKind.validation.inUse' => 'It is in use and cannot be deleted',
			'shippingKind.confirmDelete.title' => 'Confirm deletion',
			'shippingKind.confirmDelete.message' => ({required Object name}) => 'Delete "${name}"?',
			'common.save' => 'Save',
			'common.delete' => 'Delete',
			'common.cancel' => 'Cancel',
			'menu.sales' => 'Sales',
			'menu.purchasing' => 'Purchasing',
			'stakeholder.customerLedger' => 'Customers',
			'stakeholder.supplierLedger' => 'Suppliers',
			'stakeholder.customerPick' => 'Select a customer',
			'stakeholder.supplierPick' => 'Select a supplier',
			_ => null,
		};
	}
}
