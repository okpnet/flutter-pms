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
class CostStringsEn extends CostStrings with BaseTranslations<CostLocale, CostStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [CostLocale.build] is preferred.
	CostStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<CostLocale, CostStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: CostLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<CostLocale, CostStrings> _meta;
	@override TranslationMetadata<CostLocale, CostStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final CostStringsEn _root = this; // ignore: unused_field

	@override 
	CostStringsEn $copyWith({TranslationMetadata<CostLocale, CostStrings>? meta}) => CostStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _CostStrings$lotsAction$en lotsAction = _CostStrings$lotsAction$en._(_root);
	@override late final _CostStrings$menu$en menu = _CostStrings$menu$en._(_root);
	@override late final _CostStrings$entity$en entity = _CostStrings$entity$en._(_root);
}

// Path: lotsAction
class _CostStrings$lotsAction$en extends CostStrings$lotsAction$ja {
	_CostStrings$lotsAction$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get costvaluation => 'View lots';
}

// Path: menu
class _CostStrings$menu$en extends CostStrings$menu$ja {
	_CostStrings$menu$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Cost';
	@override String get group_item => 'Items';
	@override String get group_work_record => 'Work records';
}

// Path: entity
class _CostStrings$entity$en extends CostStrings$entity$ja {
	_CostStrings$entity$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _CostStrings$entity$costunit$en costunit = _CostStrings$entity$costunit$en._(_root);
	@override late final _CostStrings$entity$costvaluation$en costvaluation = _CostStrings$entity$costvaluation$en._(_root);
	@override late final _CostStrings$entity$costlot$en costlot = _CostStrings$entity$costlot$en._(_root);
}

// Path: entity.costunit
class _CostStrings$entity$costunit$en extends CostStrings$entity$costunit$ja {
	_CostStrings$entity$costunit$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Standard costs';
	@override late final _CostStrings$entity$costunit$fields$en fields = _CostStrings$entity$costunit$fields$en._(_root);
}

// Path: entity.costvaluation
class _CostStrings$entity$costvaluation$en extends CostStrings$entity$costvaluation$ja {
	_CostStrings$entity$costvaluation$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inventory valuation';
	@override late final _CostStrings$entity$costvaluation$fields$en fields = _CostStrings$entity$costvaluation$fields$en._(_root);
}

// Path: entity.costlot
class _CostStrings$entity$costlot$en extends CostStrings$entity$costlot$ja {
	_CostStrings$entity$costlot$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lot valuation';
	@override late final _CostStrings$entity$costlot$fields$en fields = _CostStrings$entity$costlot$fields$en._(_root);
}

// Path: entity.costunit.fields
class _CostStrings$entity$costunit$fields$en extends CostStrings$entity$costunit$fields$ja {
	_CostStrings$entity$costunit$fields$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
	@override String get f_purchase_cost => 'Purchase unit price';
	@override String get f_production_cost => 'Production cost';
	@override String get f_component_cost => 'Component cost';
	@override String get f_unit_cost => 'Standard cost';
	@override String get f_has_supplier => 'Has supplier';
	@override String get f_has_components => 'Has components';
}

// Path: entity.costvaluation.fields
class _CostStrings$entity$costvaluation$fields$en extends CostStrings$entity$costvaluation$fields$ja {
	_CostStrings$entity$costvaluation$fields$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
	@override String get f_quantity => 'Stock quantity';
	@override String get f_evaluated_quantity => 'Evaluated quantity';
	@override String get f_external_quantity => 'Externally owned quantity';
	@override String get f_amount => 'Valuation';
}

// Path: entity.costlot.fields
class _CostStrings$entity$costlot$fields$en extends CostStrings$entity$costlot$fields$ja {
	_CostStrings$entity$costlot$fields$en._(CostStringsEn root) : this._root = root, super.internal(root);

	final CostStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_symbol => 'Symbol';
	@override String get f_item => 'Item';
	@override String get f_quantity => 'Quantity';
	@override String get f_held => 'On hold';
	@override String get f_external_owned => 'Externally owned';
	@override String get f_transferred => 'Transferred to us';
	@override String get f_evaluated => 'Evaluated';
	@override String get f_unit_cost => 'Item standard cost';
	@override String get f_unit_value => 'Lot unit value';
	@override String get f_amount => 'Valuation';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on CostStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'lotsAction.costvaluation' => 'View lots',
			'menu.group' => 'Cost',
			'menu.group_item' => 'Items',
			'menu.group_work_record' => 'Work records',
			'entity.costunit.title' => 'Standard costs',
			'entity.costunit.fields.f_item' => 'Item',
			'entity.costunit.fields.f_purchase_cost' => 'Purchase unit price',
			'entity.costunit.fields.f_production_cost' => 'Production cost',
			'entity.costunit.fields.f_component_cost' => 'Component cost',
			'entity.costunit.fields.f_unit_cost' => 'Standard cost',
			'entity.costunit.fields.f_has_supplier' => 'Has supplier',
			'entity.costunit.fields.f_has_components' => 'Has components',
			'entity.costvaluation.title' => 'Inventory valuation',
			'entity.costvaluation.fields.f_item' => 'Item',
			'entity.costvaluation.fields.f_quantity' => 'Stock quantity',
			'entity.costvaluation.fields.f_evaluated_quantity' => 'Evaluated quantity',
			'entity.costvaluation.fields.f_external_quantity' => 'Externally owned quantity',
			'entity.costvaluation.fields.f_amount' => 'Valuation',
			'entity.costlot.title' => 'Lot valuation',
			'entity.costlot.fields.f_symbol' => 'Symbol',
			'entity.costlot.fields.f_item' => 'Item',
			'entity.costlot.fields.f_quantity' => 'Quantity',
			'entity.costlot.fields.f_held' => 'On hold',
			'entity.costlot.fields.f_external_owned' => 'Externally owned',
			'entity.costlot.fields.f_transferred' => 'Transferred to us',
			'entity.costlot.fields.f_evaluated' => 'Evaluated',
			'entity.costlot.fields.f_unit_cost' => 'Item standard cost',
			'entity.costlot.fields.f_unit_value' => 'Lot unit value',
			'entity.costlot.fields.f_amount' => 'Valuation',
			_ => null,
		};
	}
}
