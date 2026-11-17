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
class ItemStringsEn extends ItemStrings with BaseTranslations<ItemLocale, ItemStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ItemLocale.build] is preferred.
	ItemStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ItemLocale, ItemStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ItemLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ItemLocale, ItemStrings> _meta;
	@override TranslationMetadata<ItemLocale, ItemStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ItemStringsEn _root = this; // ignore: unused_field

	@override 
	ItemStringsEn $copyWith({TranslationMetadata<ItemLocale, ItemStrings>? meta}) => ItemStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _ItemStrings$menu$en menu = _ItemStrings$menu$en._(_root);
	@override late final _ItemStrings$entity$en entity = _ItemStrings$entity$en._(_root);
}

// Path: menu
class _ItemStrings$menu$en extends ItemStrings$menu$ja {
	_ItemStrings$menu$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Items';
	@override String get group_purchasing => 'Purchasing';
}

// Path: entity
class _ItemStrings$entity$en extends ItemStrings$entity$ja {
	_ItemStrings$entity$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _ItemStrings$entity$itemkind$en itemkind = _ItemStrings$entity$itemkind$en._(_root);
	@override late final _ItemStrings$entity$hscode$en hscode = _ItemStrings$entity$hscode$en._(_root);
	@override late final _ItemStrings$entity$item$en item = _ItemStrings$entity$item$en._(_root);
	@override late final _ItemStrings$entity$itemhs$en itemhs = _ItemStrings$entity$itemhs$en._(_root);
	@override late final _ItemStrings$entity$itemsizekind$en itemsizekind = _ItemStrings$entity$itemsizekind$en._(_root);
	@override late final _ItemStrings$entity$itemsize$en itemsize = _ItemStrings$entity$itemsize$en._(_root);
	@override late final _ItemStrings$entity$itempack$en itempack = _ItemStrings$entity$itempack$en._(_root);
	@override late final _ItemStrings$entity$itemop$en itemop = _ItemStrings$entity$itemop$en._(_root);
	@override late final _ItemStrings$entity$itemmaker$en itemmaker = _ItemStrings$entity$itemmaker$en._(_root);
	@override late final _ItemStrings$entity$itemoptask$en itemoptask = _ItemStrings$entity$itemoptask$en._(_root);
	@override late final _ItemStrings$entity$itemsupplier$en itemsupplier = _ItemStrings$entity$itemsupplier$en._(_root);
	@override late final _ItemStrings$entity$itemtaskcost$en itemtaskcost = _ItemStrings$entity$itemtaskcost$en._(_root);
	@override late final _ItemStrings$entity$itemonhand$en itemonhand = _ItemStrings$entity$itemonhand$en._(_root);
}

// Path: entity.itemkind
class _ItemStrings$entity$itemkind$en extends ItemStrings$entity$itemkind$ja {
	_ItemStrings$entity$itemkind$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item kinds';
	@override late final _ItemStrings$entity$itemkind$fields$en fields = _ItemStrings$entity$itemkind$fields$en._(_root);
}

// Path: entity.hscode
class _ItemStrings$entity$hscode$en extends ItemStrings$entity$hscode$ja {
	_ItemStrings$entity$hscode$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'HS codes';
	@override late final _ItemStrings$entity$hscode$fields$en fields = _ItemStrings$entity$hscode$fields$en._(_root);
}

// Path: entity.item
class _ItemStrings$entity$item$en extends ItemStrings$entity$item$ja {
	_ItemStrings$entity$item$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Items';
	@override late final _ItemStrings$entity$item$fields$en fields = _ItemStrings$entity$item$fields$en._(_root);
	@override late final _ItemStrings$entity$item$reverse$en reverse = _ItemStrings$entity$item$reverse$en._(_root);
}

// Path: entity.itemhs
class _ItemStrings$entity$itemhs$en extends ItemStrings$entity$itemhs$ja {
	_ItemStrings$entity$itemhs$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'HS codes';
	@override late final _ItemStrings$entity$itemhs$fields$en fields = _ItemStrings$entity$itemhs$fields$en._(_root);
}

// Path: entity.itemsizekind
class _ItemStrings$entity$itemsizekind$en extends ItemStrings$entity$itemsizekind$ja {
	_ItemStrings$entity$itemsizekind$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item size kinds';
	@override late final _ItemStrings$entity$itemsizekind$fields$en fields = _ItemStrings$entity$itemsizekind$fields$en._(_root);
}

// Path: entity.itemsize
class _ItemStrings$entity$itemsize$en extends ItemStrings$entity$itemsize$ja {
	_ItemStrings$entity$itemsize$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item sizes';
	@override late final _ItemStrings$entity$itemsize$fields$en fields = _ItemStrings$entity$itemsize$fields$en._(_root);
}

// Path: entity.itempack
class _ItemStrings$entity$itempack$en extends ItemStrings$entity$itempack$ja {
	_ItemStrings$entity$itempack$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Packing sizes';
	@override late final _ItemStrings$entity$itempack$fields$en fields = _ItemStrings$entity$itempack$fields$en._(_root);
}

// Path: entity.itemop
class _ItemStrings$entity$itemop$en extends ItemStrings$entity$itemop$ja {
	_ItemStrings$entity$itemop$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item process operations';
	@override late final _ItemStrings$entity$itemop$fields$en fields = _ItemStrings$entity$itemop$fields$en._(_root);
}

// Path: entity.itemmaker
class _ItemStrings$entity$itemmaker$en extends ItemStrings$entity$itemmaker$ja {
	_ItemStrings$entity$itemmaker$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Manufacturers';
	@override late final _ItemStrings$entity$itemmaker$fields$en fields = _ItemStrings$entity$itemmaker$fields$en._(_root);
}

// Path: entity.itemoptask
class _ItemStrings$entity$itemoptask$en extends ItemStrings$entity$itemoptask$ja {
	_ItemStrings$entity$itemoptask$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item process operation lines';
	@override late final _ItemStrings$entity$itemoptask$fields$en fields = _ItemStrings$entity$itemoptask$fields$en._(_root);
}

// Path: entity.itemsupplier
class _ItemStrings$entity$itemsupplier$en extends ItemStrings$entity$itemsupplier$ja {
	_ItemStrings$entity$itemsupplier$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item suppliers';
	@override late final _ItemStrings$entity$itemsupplier$fields$en fields = _ItemStrings$entity$itemsupplier$fields$en._(_root);
}

// Path: entity.itemtaskcost
class _ItemStrings$entity$itemtaskcost$en extends ItemStrings$entity$itemtaskcost$ja {
	_ItemStrings$entity$itemtaskcost$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item task costs';
	@override late final _ItemStrings$entity$itemtaskcost$fields$en fields = _ItemStrings$entity$itemtaskcost$fields$en._(_root);
}

// Path: entity.itemonhand
class _ItemStrings$entity$itemonhand$en extends ItemStrings$entity$itemonhand$ja {
	_ItemStrings$entity$itemonhand$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Item stock';
	@override late final _ItemStrings$entity$itemonhand$fields$en fields = _ItemStrings$entity$itemonhand$fields$en._(_root);
}

// Path: entity.itemkind.fields
class _ItemStrings$entity$itemkind$fields$en extends ItemStrings$entity$itemkind$fields$ja {
	_ItemStrings$entity$itemkind$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Item code';
	@override String get f_name => 'Item kind name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.hscode.fields
class _ItemStrings$entity$hscode$fields$en extends ItemStrings$entity$hscode$fields$ja {
	_ItemStrings$entity$hscode$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Code';
	@override String get f_mstr_item_id => 'Item';
	@override String get f_iso3166_3 => 'Country';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.item.fields
class _ItemStrings$entity$item$fields$en extends ItemStrings$entity$item$fields$ja {
	_ItemStrings$entity$item$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Item code';
	@override String get f_identification => 'Identification code';
	@override String get f_control_code => 'Control code';
	@override String get f_label_code => 'Display code';
	@override String get f_name => 'Item name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_mstr_item_kind_id => 'Item kind';
	@override String get f_catalog_item => 'Purchased item';
	@override String get f_detail => 'Details';
	@override String get f_shared_unit_id => 'Item unit';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.item.reverse
class _ItemStrings$entity$item$reverse$en extends ItemStrings$entity$item$reverse$ja {
	_ItemStrings$entity$item$reverse$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get itemoptask => 'Item process operation lines';
	@override String get opapply => 'Process plans applied to items';
	@override String get purchaseline => 'Receipt lines';
	@override String get equipment => 'Equipment';
}

// Path: entity.itemhs.fields
class _ItemStrings$entity$itemhs$fields$en extends ItemStrings$entity$itemhs$fields$ja {
	_ItemStrings$entity$itemhs$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_hs => 'HS code';
}

// Path: entity.itemsizekind.fields
class _ItemStrings$entity$itemsizekind$fields$en extends ItemStrings$entity$itemsizekind$fields$ja {
	_ItemStrings$entity$itemsizekind$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Size kind code';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_names => 'Size kind name';
	@override String get f_shared_unit_id => 'Unit';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.itemsize.fields
class _ItemStrings$entity$itemsize$fields$en extends ItemStrings$entity$itemsize$fields$ja {
	_ItemStrings$entity$itemsize$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_mstr_item_size_kind_id => 'Item size kind';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.itempack.fields
class _ItemStrings$entity$itempack$fields$en extends ItemStrings$entity$itempack$fields$ja {
	_ItemStrings$entity$itempack$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_label => 'Packing kind';
	@override String get f_w => 'Width';
	@override String get f_d => 'Depth';
	@override String get f_h => 'Height';
	@override String get f_unit => 'Unit';
}

// Path: entity.itemop.fields
class _ItemStrings$entity$itemop$fields$en extends ItemStrings$entity$itemop$fields$ja {
	_ItemStrings$entity$itemop$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_control_code => 'Control code';
	@override String get f_name => 'Operation name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_mstr_operation_id => 'Process operation';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.itemmaker.fields
class _ItemStrings$entity$itemmaker$fields$en extends ItemStrings$entity$itemmaker$fields$ja {
	_ItemStrings$entity$itemmaker$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_maker => 'Manufacturer name';
	@override String get f_partno => 'Manufacturer part number';
}

// Path: entity.itemoptask.fields
class _ItemStrings$entity$itemoptask$fields$en extends ItemStrings$entity$itemoptask$fields$ja {
	_ItemStrings$entity$itemoptask$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_mstr_item_id => 'Item';
	@override String get f_sequence => 'Order';
	@override String get f_default_interval => 'Standard time';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.itemsupplier.fields
class _ItemStrings$entity$itemsupplier$fields$en extends ItemStrings$entity$itemsupplier$fields$ja {
	_ItemStrings$entity$itemsupplier$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_supplier => 'Supplier';
	@override String get f_days => 'Delivery time (days)';
	@override String get f_lot => 'Minimum order lot';
	@override String get f_cost => 'Unit price (JPY)';
	@override String get f_cost__off => 'Quoted price (confirm each time)';
	@override String get f_asking => 'Quoted price kind';
}

// Path: entity.itemtaskcost.fields
class _ItemStrings$entity$itemtaskcost$fields$en extends ItemStrings$entity$itemtaskcost$fields$ja {
	_ItemStrings$entity$itemtaskcost$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_taskres => 'Task location';
	@override String get f_cost => 'Task unit cost (JPY)';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.itemonhand.fields
class _ItemStrings$entity$itemonhand$fields$en extends ItemStrings$entity$itemonhand$fields$ja {
	_ItemStrings$entity$itemonhand$fields$en._(ItemStringsEn root) : this._root = root, super.internal(root);

	final ItemStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
	@override String get f_on_hand_quantity => 'On hand';
	@override String get f_visiter_count => 'Visitor count';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ItemStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Items',
			'menu.group_purchasing' => 'Purchasing',
			'entity.itemkind.title' => 'Item kinds',
			'entity.itemkind.fields.f_code' => 'Item code',
			'entity.itemkind.fields.f_name' => 'Item kind name',
			'entity.itemkind.fields.f_pronunciation' => 'Reading',
			'entity.itemkind.fields.f_nickname' => 'Abbreviation',
			'entity.itemkind.fields.f_remarks' => 'Remarks',
			'entity.hscode.title' => 'HS codes',
			'entity.hscode.fields.f_code' => 'Code',
			'entity.hscode.fields.f_mstr_item_id' => 'Item',
			'entity.hscode.fields.f_iso3166_3' => 'Country',
			'entity.hscode.fields.f_remarks' => 'Remarks',
			'entity.item.title' => 'Items',
			'entity.item.fields.f_code' => 'Item code',
			'entity.item.fields.f_identification' => 'Identification code',
			'entity.item.fields.f_control_code' => 'Control code',
			'entity.item.fields.f_label_code' => 'Display code',
			'entity.item.fields.f_name' => 'Item name',
			'entity.item.fields.f_pronunciation' => 'Reading',
			'entity.item.fields.f_nickname' => 'Abbreviation',
			'entity.item.fields.f_mstr_item_kind_id' => 'Item kind',
			'entity.item.fields.f_catalog_item' => 'Purchased item',
			'entity.item.fields.f_detail' => 'Details',
			'entity.item.fields.f_shared_unit_id' => 'Item unit',
			'entity.item.fields.f_remarks' => 'Remarks',
			'entity.item.reverse.itemoptask' => 'Item process operation lines',
			'entity.item.reverse.opapply' => 'Process plans applied to items',
			'entity.item.reverse.purchaseline' => 'Receipt lines',
			'entity.item.reverse.equipment' => 'Equipment',
			'entity.itemhs.title' => 'HS codes',
			'entity.itemhs.fields.f_hs' => 'HS code',
			'entity.itemsizekind.title' => 'Item size kinds',
			'entity.itemsizekind.fields.f_code' => 'Size kind code',
			'entity.itemsizekind.fields.f_pronunciation' => 'Reading',
			'entity.itemsizekind.fields.f_nickname' => 'Abbreviation',
			'entity.itemsizekind.fields.f_names' => 'Size kind name',
			'entity.itemsizekind.fields.f_shared_unit_id' => 'Unit',
			'entity.itemsizekind.fields.f_remarks' => 'Remarks',
			'entity.itemsize.title' => 'Item sizes',
			'entity.itemsize.fields.f_mstr_item_size_kind_id' => 'Item size kind',
			'entity.itemsize.fields.f_detail' => 'Details',
			'entity.itemsize.fields.f_remarks' => 'Remarks',
			'entity.itempack.title' => 'Packing sizes',
			'entity.itempack.fields.f_label' => 'Packing kind',
			'entity.itempack.fields.f_w' => 'Width',
			'entity.itempack.fields.f_d' => 'Depth',
			'entity.itempack.fields.f_h' => 'Height',
			'entity.itempack.fields.f_unit' => 'Unit',
			'entity.itemop.title' => 'Item process operations',
			'entity.itemop.fields.f_control_code' => 'Control code',
			'entity.itemop.fields.f_name' => 'Operation name',
			'entity.itemop.fields.f_pronunciation' => 'Reading',
			'entity.itemop.fields.f_nickname' => 'Abbreviation',
			'entity.itemop.fields.f_mstr_operation_id' => 'Process operation',
			'entity.itemop.fields.f_detail' => 'Details',
			'entity.itemop.fields.f_remarks' => 'Remarks',
			'entity.itemmaker.title' => 'Manufacturers',
			'entity.itemmaker.fields.f_maker' => 'Manufacturer name',
			'entity.itemmaker.fields.f_partno' => 'Manufacturer part number',
			'entity.itemoptask.title' => 'Item process operation lines',
			'entity.itemoptask.fields.f_mstr_item_id' => 'Item',
			'entity.itemoptask.fields.f_sequence' => 'Order',
			'entity.itemoptask.fields.f_default_interval' => 'Standard time',
			'entity.itemoptask.fields.f_remarks' => 'Remarks',
			'entity.itemsupplier.title' => 'Item suppliers',
			'entity.itemsupplier.fields.f_supplier' => 'Supplier',
			'entity.itemsupplier.fields.f_days' => 'Delivery time (days)',
			'entity.itemsupplier.fields.f_lot' => 'Minimum order lot',
			'entity.itemsupplier.fields.f_cost' => 'Unit price (JPY)',
			'entity.itemsupplier.fields.f_cost__off' => 'Quoted price (confirm each time)',
			'entity.itemsupplier.fields.f_asking' => 'Quoted price kind',
			'entity.itemtaskcost.title' => 'Item task costs',
			'entity.itemtaskcost.fields.f_taskres' => 'Task location',
			'entity.itemtaskcost.fields.f_cost' => 'Task unit cost (JPY)',
			'entity.itemtaskcost.fields.f_remarks' => 'Remarks',
			'entity.itemonhand.title' => 'Item stock',
			'entity.itemonhand.fields.f_item' => 'Item',
			'entity.itemonhand.fields.f_on_hand_quantity' => 'On hand',
			'entity.itemonhand.fields.f_visiter_count' => 'Visitor count',
			_ => null,
		};
	}
}
