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
class PlanChangeStringsEn extends PlanChangeStrings with BaseTranslations<PlanChangeLocale, PlanChangeStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [PlanChangeLocale.build] is preferred.
	PlanChangeStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<PlanChangeLocale, PlanChangeStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: PlanChangeLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<PlanChangeLocale, PlanChangeStrings> _meta;
	@override TranslationMetadata<PlanChangeLocale, PlanChangeStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final PlanChangeStringsEn _root = this; // ignore: unused_field

	@override 
	PlanChangeStringsEn $copyWith({TranslationMetadata<PlanChangeLocale, PlanChangeStrings>? meta}) => PlanChangeStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _PlanChangeStrings$menu$en menu = _PlanChangeStrings$menu$en._(_root);
	@override late final _PlanChangeStrings$entity$en entity = _PlanChangeStrings$entity$en._(_root);
}

// Path: menu
class _PlanChangeStrings$menu$en extends PlanChangeStrings$menu$ja {
	_PlanChangeStrings$menu$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Plan changes';
}

// Path: entity
class _PlanChangeStrings$entity$en extends PlanChangeStrings$entity$ja {
	_PlanChangeStrings$entity$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _PlanChangeStrings$entity$planchange$en planchange = _PlanChangeStrings$entity$planchange$en._(_root);
	@override late final _PlanChangeStrings$entity$cancelopen$en cancelopen = _PlanChangeStrings$entity$cancelopen$en._(_root);
	@override late final _PlanChangeStrings$entity$actreqrelease$en actreqrelease = _PlanChangeStrings$entity$actreqrelease$en._(_root);
	@override late final _PlanChangeStrings$entity$actreqhold$en actreqhold = _PlanChangeStrings$entity$actreqhold$en._(_root);
	@override late final _PlanChangeStrings$entity$actlotrelease$en actlotrelease = _PlanChangeStrings$entity$actlotrelease$en._(_root);
	@override late final _PlanChangeStrings$entity$actlothold$en actlothold = _PlanChangeStrings$entity$actlothold$en._(_root);
	@override late final _PlanChangeStrings$entity$actlotscrap$en actlotscrap = _PlanChangeStrings$entity$actlotscrap$en._(_root);
	@override late final _PlanChangeStrings$entity$actlotdeliver$en actlotdeliver = _PlanChangeStrings$entity$actlotdeliver$en._(_root);
	@override late final _PlanChangeStrings$entity$actshipcancel$en actshipcancel = _PlanChangeStrings$entity$actshipcancel$en._(_root);
	@override late final _PlanChangeStrings$entity$actpurcancel$en actpurcancel = _PlanChangeStrings$entity$actpurcancel$en._(_root);
}

// Path: entity.planchange
class _PlanChangeStrings$entity$planchange$en extends PlanChangeStrings$entity$planchange$ja {
	_PlanChangeStrings$entity$planchange$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan change history';
	@override late final _PlanChangeStrings$entity$planchange$fields$en fields = _PlanChangeStrings$entity$planchange$fields$en._(_root);
}

// Path: entity.cancelopen
class _PlanChangeStrings$entity$cancelopen$en extends PlanChangeStrings$entity$cancelopen$ja {
	_PlanChangeStrings$entity$cancelopen$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open items';
	@override late final _PlanChangeStrings$entity$cancelopen$fields$en fields = _PlanChangeStrings$entity$cancelopen$fields$en._(_root);
}

// Path: entity.actreqrelease
class _PlanChangeStrings$entity$actreqrelease$en extends PlanChangeStrings$entity$actreqrelease$ja {
	_PlanChangeStrings$entity$actreqrelease$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Release allocation reservation';
	@override late final _PlanChangeStrings$entity$actreqrelease$fields$en fields = _PlanChangeStrings$entity$actreqrelease$fields$en._(_root);
}

// Path: entity.actreqhold
class _PlanChangeStrings$entity$actreqhold$en extends PlanChangeStrings$entity$actreqhold$ja {
	_PlanChangeStrings$entity$actreqhold$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Store allocation reservation';
	@override late final _PlanChangeStrings$entity$actreqhold$fields$en fields = _PlanChangeStrings$entity$actreqhold$fields$en._(_root);
}

// Path: entity.actlotrelease
class _PlanChangeStrings$entity$actlotrelease$en extends PlanChangeStrings$entity$actlotrelease$ja {
	_PlanChangeStrings$entity$actlotrelease$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Return to stock';
	@override late final _PlanChangeStrings$entity$actlotrelease$fields$en fields = _PlanChangeStrings$entity$actlotrelease$fields$en._(_root);
}

// Path: entity.actlothold
class _PlanChangeStrings$entity$actlothold$en extends PlanChangeStrings$entity$actlothold$ja {
	_PlanChangeStrings$entity$actlothold$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold goods';
	@override late final _PlanChangeStrings$entity$actlothold$fields$en fields = _PlanChangeStrings$entity$actlothold$fields$en._(_root);
}

// Path: entity.actlotscrap
class _PlanChangeStrings$entity$actlotscrap$en extends PlanChangeStrings$entity$actlotscrap$ja {
	_PlanChangeStrings$entity$actlotscrap$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrap goods';
	@override late final _PlanChangeStrings$entity$actlotscrap$fields$en fields = _PlanChangeStrings$entity$actlotscrap$fields$en._(_root);
}

// Path: entity.actlotdeliver
class _PlanChangeStrings$entity$actlotdeliver$en extends PlanChangeStrings$entity$actlotdeliver$ja {
	_PlanChangeStrings$entity$actlotdeliver$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hand over to customer';
	@override late final _PlanChangeStrings$entity$actlotdeliver$fields$en fields = _PlanChangeStrings$entity$actlotdeliver$fields$en._(_root);
}

// Path: entity.actshipcancel
class _PlanChangeStrings$entity$actshipcancel$en extends PlanChangeStrings$entity$actshipcancel$ja {
	_PlanChangeStrings$entity$actshipcancel$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancel shipping order';
	@override late final _PlanChangeStrings$entity$actshipcancel$fields$en fields = _PlanChangeStrings$entity$actshipcancel$fields$en._(_root);
}

// Path: entity.actpurcancel
class _PlanChangeStrings$entity$actpurcancel$en extends PlanChangeStrings$entity$actpurcancel$ja {
	_PlanChangeStrings$entity$actpurcancel$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancel outsourcing order';
	@override late final _PlanChangeStrings$entity$actpurcancel$fields$en fields = _PlanChangeStrings$entity$actpurcancel$fields$en._(_root);
}

// Path: entity.planchange.fields
class _PlanChangeStrings$entity$planchange$fields$en extends PlanChangeStrings$entity$planchange$fields$ja {
	_PlanChangeStrings$entity$planchange$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_change_at => 'Changed on';
	@override String get f_symbol => 'Symbol';
	@override String get f_is_order_detail => 'Sales order line';
	@override String get f_is_purchase_detail => 'Purchase order line';
	@override String get f_is_operations_plan => 'Production plan';
	@override String get f_is_inventory_request => 'Allocation reservation';
	@override String get f_is_visiter => 'Lot';
	@override String get f_is_shipping_order_detail => 'Shipping order line';
	@override String get f_item => 'Item';
	@override String get f_is_cancel => 'Cancel';
	@override String get f_is_quantity_change => 'Quantity change';
	@override String get f_is_date_change => 'Delivery date change';
	@override String get f_is_postpone => 'Postpone';
	@override String get f_is_advance => 'Advance';
	@override String get f_is_stop => 'Stop';
	@override String get f_is_resume => 'Resume';
	@override String get f_is_discontinue => 'Discontinue';
	@override String get f_is_release => 'Return to stock';
	@override String get f_is_hold => 'Hold';
	@override String get f_is_scrap => 'Scrap';
	@override String get f_is_deliver => 'Hand over';
	@override String get f_has_settlement => 'Has settlement';
	@override String get f_customer_cause => 'Customer\'s reason';
	@override String get f_supplier_cause => 'Supplier\'s / subcontractor\'s reason';
	@override String get f_quality_cause => 'Quality cause';
	@override String get f_from_mrp => 'From an MRP suggestion';
	@override String get f_is_reflected => 'Reflected in MRP';
	@override String get f_is_unreflected => 'Not reflected in MRP';
	@override String get f_is_root => 'Originating change';
	@override String get f_cancel_quantity => 'Canceled quantity';
	@override String get f_old_quantity => 'Quantity before';
	@override String get f_new_quantity => 'Quantity after';
	@override String get f_old_date => 'Delivery date before';
	@override String get f_new_date => 'Delivery date after';
	@override String get f_reason => 'Reason';
}

// Path: entity.cancelopen.fields
class _PlanChangeStrings$entity$cancelopen$fields$en extends PlanChangeStrings$entity$cancelopen$fields$ja {
	_PlanChangeStrings$entity$cancelopen$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_symbol => 'Symbol';
	@override String get f_is_inventory_request => 'Unreleased allocation reservation';
	@override String get f_is_work_in_process => 'Work in process';
	@override String get f_is_hold => 'Goods still on hold';
	@override String get f_is_shipping_order => 'Unshipped shipping order';
	@override String get f_is_outsource_order => 'Uncanceled outsourcing order';
	@override String get f_is_supply_at_supplier => 'Supplied material at the subcontractor';
	@override String get f_is_customer_supply => 'Customer-supplied material not returned';
	@override String get f_cause_cancel => 'Cancel';
	@override String get f_cause_stop => 'Stop';
	@override String get f_cause_discontinue => 'Discontinue';
	@override String get f_item => 'Item';
	@override String get f_quantity => 'Quantity';
	@override String get f_since => 'Cause date';
	@override String get f_do_req_release => 'Release';
	@override String get f_do_req_hold => 'Store';
	@override String get f_do_lot_release => 'Return to stock';
	@override String get f_do_lot_hold => 'Hold';
	@override String get f_do_lot_scrap => 'Scrap';
	@override String get f_do_lot_deliver => 'Hand over';
	@override String get f_do_ship_cancel => 'Cancel shipment';
	@override String get f_do_pur_cancel => 'Cancel order';
}

// Path: entity.actreqrelease.fields
class _PlanChangeStrings$entity$actreqrelease$fields$en extends PlanChangeStrings$entity$actreqrelease$fields$ja {
	_PlanChangeStrings$entity$actreqrelease$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_reason => 'Reason';
}

// Path: entity.actreqhold.fields
class _PlanChangeStrings$entity$actreqhold$fields$en extends PlanChangeStrings$entity$actreqhold$fields$ja {
	_PlanChangeStrings$entity$actreqhold$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_container => 'Container to hold in';
	@override String get f_reason => 'Reason';
}

// Path: entity.actlotrelease.fields
class _PlanChangeStrings$entity$actlotrelease$fields$en extends PlanChangeStrings$entity$actlotrelease$fields$ja {
	_PlanChangeStrings$entity$actlotrelease$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_reason => 'Reason';
}

// Path: entity.actlothold.fields
class _PlanChangeStrings$entity$actlothold$fields$en extends PlanChangeStrings$entity$actlothold$fields$ja {
	_PlanChangeStrings$entity$actlothold$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_container => 'Container to hold in';
	@override String get f_quantity => 'Quantity';
	@override String get f_reason => 'Reason';
}

// Path: entity.actlotscrap.fields
class _PlanChangeStrings$entity$actlotscrap$fields$en extends PlanChangeStrings$entity$actlotscrap$fields$ja {
	_PlanChangeStrings$entity$actlotscrap$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_quantity => 'Quantity';
	@override String get f_reason => 'Reason';
}

// Path: entity.actlotdeliver.fields
class _PlanChangeStrings$entity$actlotdeliver$fields$en extends PlanChangeStrings$entity$actlotdeliver$fields$ja {
	_PlanChangeStrings$entity$actlotdeliver$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_quantity => 'Quantity';
	@override String get f_reason => 'Reason';
}

// Path: entity.actshipcancel.fields
class _PlanChangeStrings$entity$actshipcancel$fields$en extends PlanChangeStrings$entity$actshipcancel$fields$ja {
	_PlanChangeStrings$entity$actshipcancel$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_reason => 'Reason';
}

// Path: entity.actpurcancel.fields
class _PlanChangeStrings$entity$actpurcancel$fields$en extends PlanChangeStrings$entity$actpurcancel$fields$ja {
	_PlanChangeStrings$entity$actpurcancel$fields$en._(PlanChangeStringsEn root) : this._root = root, super.internal(root);

	final PlanChangeStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_target => 'Target';
	@override String get f_quantity => 'Quantity';
	@override String get f_reason => 'Reason';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on PlanChangeStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Plan changes',
			'entity.planchange.title' => 'Plan change history',
			'entity.planchange.fields.f_change_at' => 'Changed on',
			'entity.planchange.fields.f_symbol' => 'Symbol',
			'entity.planchange.fields.f_is_order_detail' => 'Sales order line',
			'entity.planchange.fields.f_is_purchase_detail' => 'Purchase order line',
			'entity.planchange.fields.f_is_operations_plan' => 'Production plan',
			'entity.planchange.fields.f_is_inventory_request' => 'Allocation reservation',
			'entity.planchange.fields.f_is_visiter' => 'Lot',
			'entity.planchange.fields.f_is_shipping_order_detail' => 'Shipping order line',
			'entity.planchange.fields.f_item' => 'Item',
			'entity.planchange.fields.f_is_cancel' => 'Cancel',
			'entity.planchange.fields.f_is_quantity_change' => 'Quantity change',
			'entity.planchange.fields.f_is_date_change' => 'Delivery date change',
			'entity.planchange.fields.f_is_postpone' => 'Postpone',
			'entity.planchange.fields.f_is_advance' => 'Advance',
			'entity.planchange.fields.f_is_stop' => 'Stop',
			'entity.planchange.fields.f_is_resume' => 'Resume',
			'entity.planchange.fields.f_is_discontinue' => 'Discontinue',
			'entity.planchange.fields.f_is_release' => 'Return to stock',
			'entity.planchange.fields.f_is_hold' => 'Hold',
			'entity.planchange.fields.f_is_scrap' => 'Scrap',
			'entity.planchange.fields.f_is_deliver' => 'Hand over',
			'entity.planchange.fields.f_has_settlement' => 'Has settlement',
			'entity.planchange.fields.f_customer_cause' => 'Customer\'s reason',
			'entity.planchange.fields.f_supplier_cause' => 'Supplier\'s / subcontractor\'s reason',
			'entity.planchange.fields.f_quality_cause' => 'Quality cause',
			'entity.planchange.fields.f_from_mrp' => 'From an MRP suggestion',
			'entity.planchange.fields.f_is_reflected' => 'Reflected in MRP',
			'entity.planchange.fields.f_is_unreflected' => 'Not reflected in MRP',
			'entity.planchange.fields.f_is_root' => 'Originating change',
			'entity.planchange.fields.f_cancel_quantity' => 'Canceled quantity',
			'entity.planchange.fields.f_old_quantity' => 'Quantity before',
			'entity.planchange.fields.f_new_quantity' => 'Quantity after',
			'entity.planchange.fields.f_old_date' => 'Delivery date before',
			'entity.planchange.fields.f_new_date' => 'Delivery date after',
			'entity.planchange.fields.f_reason' => 'Reason',
			'entity.cancelopen.title' => 'Open items',
			'entity.cancelopen.fields.f_symbol' => 'Symbol',
			'entity.cancelopen.fields.f_is_inventory_request' => 'Unreleased allocation reservation',
			'entity.cancelopen.fields.f_is_work_in_process' => 'Work in process',
			'entity.cancelopen.fields.f_is_hold' => 'Goods still on hold',
			'entity.cancelopen.fields.f_is_shipping_order' => 'Unshipped shipping order',
			'entity.cancelopen.fields.f_is_outsource_order' => 'Uncanceled outsourcing order',
			'entity.cancelopen.fields.f_is_supply_at_supplier' => 'Supplied material at the subcontractor',
			'entity.cancelopen.fields.f_is_customer_supply' => 'Customer-supplied material not returned',
			'entity.cancelopen.fields.f_cause_cancel' => 'Cancel',
			'entity.cancelopen.fields.f_cause_stop' => 'Stop',
			'entity.cancelopen.fields.f_cause_discontinue' => 'Discontinue',
			'entity.cancelopen.fields.f_item' => 'Item',
			'entity.cancelopen.fields.f_quantity' => 'Quantity',
			'entity.cancelopen.fields.f_since' => 'Cause date',
			'entity.cancelopen.fields.f_do_req_release' => 'Release',
			'entity.cancelopen.fields.f_do_req_hold' => 'Store',
			'entity.cancelopen.fields.f_do_lot_release' => 'Return to stock',
			'entity.cancelopen.fields.f_do_lot_hold' => 'Hold',
			'entity.cancelopen.fields.f_do_lot_scrap' => 'Scrap',
			'entity.cancelopen.fields.f_do_lot_deliver' => 'Hand over',
			'entity.cancelopen.fields.f_do_ship_cancel' => 'Cancel shipment',
			'entity.cancelopen.fields.f_do_pur_cancel' => 'Cancel order',
			'entity.actreqrelease.title' => 'Release allocation reservation',
			'entity.actreqrelease.fields.f_target' => 'Target',
			'entity.actreqrelease.fields.f_reason' => 'Reason',
			'entity.actreqhold.title' => 'Store allocation reservation',
			'entity.actreqhold.fields.f_target' => 'Target',
			'entity.actreqhold.fields.f_container' => 'Container to hold in',
			'entity.actreqhold.fields.f_reason' => 'Reason',
			'entity.actlotrelease.title' => 'Return to stock',
			'entity.actlotrelease.fields.f_target' => 'Target',
			'entity.actlotrelease.fields.f_reason' => 'Reason',
			'entity.actlothold.title' => 'Hold goods',
			'entity.actlothold.fields.f_target' => 'Target',
			'entity.actlothold.fields.f_container' => 'Container to hold in',
			'entity.actlothold.fields.f_quantity' => 'Quantity',
			'entity.actlothold.fields.f_reason' => 'Reason',
			'entity.actlotscrap.title' => 'Scrap goods',
			'entity.actlotscrap.fields.f_target' => 'Target',
			'entity.actlotscrap.fields.f_quantity' => 'Quantity',
			'entity.actlotscrap.fields.f_reason' => 'Reason',
			'entity.actlotdeliver.title' => 'Hand over to customer',
			'entity.actlotdeliver.fields.f_target' => 'Target',
			'entity.actlotdeliver.fields.f_quantity' => 'Quantity',
			'entity.actlotdeliver.fields.f_reason' => 'Reason',
			'entity.actshipcancel.title' => 'Cancel shipping order',
			'entity.actshipcancel.fields.f_target' => 'Target',
			'entity.actshipcancel.fields.f_reason' => 'Reason',
			'entity.actpurcancel.title' => 'Cancel outsourcing order',
			'entity.actpurcancel.fields.f_target' => 'Target',
			'entity.actpurcancel.fields.f_quantity' => 'Quantity',
			'entity.actpurcancel.fields.f_reason' => 'Reason',
			_ => null,
		};
	}
}
