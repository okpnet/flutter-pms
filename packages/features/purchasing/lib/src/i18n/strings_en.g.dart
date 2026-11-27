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
class PurchasingStringsEn extends PurchasingStrings with BaseTranslations<PurchasingLocale, PurchasingStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [PurchasingLocale.build] is preferred.
	PurchasingStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<PurchasingLocale, PurchasingStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: PurchasingLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<PurchasingLocale, PurchasingStrings> _meta;
	@override TranslationMetadata<PurchasingLocale, PurchasingStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final PurchasingStringsEn _root = this; // ignore: unused_field

	@override 
	PurchasingStringsEn $copyWith({TranslationMetadata<PurchasingLocale, PurchasingStrings>? meta}) => PurchasingStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _PurchasingStrings$complaintAction$en complaintAction = _PurchasingStrings$complaintAction$en._(_root);
	@override late final _PurchasingStrings$menu$en menu = _PurchasingStrings$menu$en._(_root);
	@override late final _PurchasingStrings$entity$en entity = _PurchasingStrings$entity$en._(_root);
}

// Path: complaintAction
class _PurchasingStrings$complaintAction$en extends PurchasingStrings$complaintAction$ja {
	_PurchasingStrings$complaintAction$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get purchaseRec => 'Register nonconformity';
}

// Path: menu
class _PurchasingStrings$menu$en extends PurchasingStrings$menu$ja {
	_PurchasingStrings$menu$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Purchasing';
}

// Path: entity
class _PurchasingStrings$entity$en extends PurchasingStrings$entity$ja {
	_PurchasingStrings$entity$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _PurchasingStrings$entity$unrec$en unrec = _PurchasingStrings$entity$unrec$en._(_root);
	@override late final _PurchasingStrings$entity$unrecdetail$en unrecdetail = _PurchasingStrings$entity$unrecdetail$en._(_root);
	@override late final _PurchasingStrings$entity$purchase$en purchase = _PurchasingStrings$entity$purchase$en._(_root);
	@override late final _PurchasingStrings$entity$purdetail$en purdetail = _PurchasingStrings$entity$purdetail$en._(_root);
	@override late final _PurchasingStrings$entity$purchaserec$en purchaserec = _PurchasingStrings$entity$purchaserec$en._(_root);
	@override late final _PurchasingStrings$entity$purchaseline$en purchaseline = _PurchasingStrings$entity$purchaseline$en._(_root);
	@override late final _PurchasingStrings$entity$purcert$en purcert = _PurchasingStrings$entity$purcert$en._(_root);
}

// Path: entity.unrec
class _PurchasingStrings$entity$unrec$en extends PurchasingStrings$entity$unrec$ja {
	_PurchasingStrings$entity$unrec$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unrecorded orders';
	@override late final _PurchasingStrings$entity$unrec$fields$en fields = _PurchasingStrings$entity$unrec$fields$en._(_root);
}

// Path: entity.unrecdetail
class _PurchasingStrings$entity$unrecdetail$en extends PurchasingStrings$entity$unrecdetail$ja {
	_PurchasingStrings$entity$unrecdetail$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unrecorded order lines';
	@override late final _PurchasingStrings$entity$unrecdetail$fields$en fields = _PurchasingStrings$entity$unrecdetail$fields$en._(_root);
}

// Path: entity.purchase
class _PurchasingStrings$entity$purchase$en extends PurchasingStrings$entity$purchase$ja {
	_PurchasingStrings$entity$purchase$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Purchase orders';
	@override late final _PurchasingStrings$entity$purchase$fields$en fields = _PurchasingStrings$entity$purchase$fields$en._(_root);
}

// Path: entity.purdetail
class _PurchasingStrings$entity$purdetail$en extends PurchasingStrings$entity$purdetail$ja {
	_PurchasingStrings$entity$purdetail$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Purchase order lines';
	@override late final _PurchasingStrings$entity$purdetail$fields$en fields = _PurchasingStrings$entity$purdetail$fields$en._(_root);
}

// Path: entity.purchaserec
class _PurchasingStrings$entity$purchaserec$en extends PurchasingStrings$entity$purchaserec$ja {
	_PurchasingStrings$entity$purchaserec$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Receipts';
	@override late final _PurchasingStrings$entity$purchaserec$fields$en fields = _PurchasingStrings$entity$purchaserec$fields$en._(_root);
}

// Path: entity.purchaseline
class _PurchasingStrings$entity$purchaseline$en extends PurchasingStrings$entity$purchaseline$ja {
	_PurchasingStrings$entity$purchaseline$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Receipt lines';
	@override late final _PurchasingStrings$entity$purchaseline$fields$en fields = _PurchasingStrings$entity$purchaseline$fields$en._(_root);
}

// Path: entity.purcert
class _PurchasingStrings$entity$purcert$en extends PurchasingStrings$entity$purcert$ja {
	_PurchasingStrings$entity$purcert$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Purchased item certificates';
	@override late final _PurchasingStrings$entity$purcert$fields$en fields = _PurchasingStrings$entity$purcert$fields$en._(_root);
}

// Path: entity.unrec.fields
class _PurchasingStrings$entity$unrec$fields$en extends PurchasingStrings$entity$unrec$fields$ja {
	_PurchasingStrings$entity$unrec$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_decision_date => 'Decision date';
	@override String get f_deadline => 'Delivery deadline';
	@override String get f_expected_completion_date => 'Expected completion date';
	@override String get f_planned_shipping_date => 'Planned shipping date';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.unrecdetail.fields
class _PurchasingStrings$entity$unrecdetail$fields$en extends PurchasingStrings$entity$unrecdetail$fields$ja {
	_PurchasingStrings$entity$unrecdetail$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_quantity => 'Quantity';
	@override String get f_unit_price => 'Unit price';
	@override String get f_price_adjustment => 'Price adjustment';
	@override String get f_fixed_price => 'Fixed unit price';
	@override String get f_material_supply => 'Material supply type';
	@override String get f_paid_supply => 'Paid supply type';
	@override String get f_deadline => 'Line delivery deadline';
	@override String get f_item_id => 'Item';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.purchase.fields
class _PurchasingStrings$entity$purchase$fields$en extends PurchasingStrings$entity$purchase$fields$ja {
	_PurchasingStrings$entity$purchase$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_stakeholder_id => 'Supplier';
	@override String get f_register_at => 'Registered on';
	@override String get f_purchase_order_date => 'Order date';
	@override String get f_deadline => 'Order deadline';
	@override String get f_purchase_amount => 'Order amount';
	@override String get f_received_amount => 'Received amount';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.purdetail.fields
class _PurchasingStrings$entity$purdetail$fields$en extends PurchasingStrings$entity$purdetail$fields$ja {
	_PurchasingStrings$entity$purdetail$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_resource_plan_id => 'Resource plan';
	@override String get f_restocking_purchase => 'Stock purchase';
	@override String get f_quantity => 'Quantity';
	@override String get f_unit_price => 'Unit price';
	@override String get f_price_adjustment => 'Price adjustment';
	@override String get f_fixed_price => 'Fixed unit price';
	@override String get f_material_supply => 'Material supply type';
	@override String get f_paid_supply => 'Paid supply type';
	@override String get f_period => 'Delivery date';
	@override String get f_item_id => 'Item';
	@override String get f_remarks => 'Remarks';
	@override String get f_cancel_quantity => 'Canceled quantity';
	@override String get f_stop => 'Stopped';
	@override String get f_received_quantity => 'Received';
	@override String get f_remaining_quantity => 'Remaining';
	@override String get f_open_quantity => 'Open quantity (0 while stopped)';
	@override String get f_cancel_closed => 'Fully canceled';
	@override String get f_currency_symbol => 'Currency symbol';
	@override String get f_amount_base => 'Amount in base currency (estimate)';
	@override String get f_rate_provisional => 'Provisional rate';
	@override String get f_reserve => 'Allocation reservation';
}

// Path: entity.purchaserec.fields
class _PurchasingStrings$entity$purchaserec$fields$en extends PurchasingStrings$entity$purchaserec$fields$ja {
	_PurchasingStrings$entity$purchaserec$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_purchase_detail_id => 'Purchase order line';
	@override String get f_receive_at => 'Received at';
	@override String get f_quantity => 'Quantity';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.purchaseline.fields
class _PurchasingStrings$entity$purchaseline$fields$en extends PurchasingStrings$entity$purchaseline$fields$ja {
	_PurchasingStrings$entity$purchaseline$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
	@override String get f_qty => 'Received quantity';
	@override String get f_unit => 'Unit';
}

// Path: entity.purcert.fields
class _PurchasingStrings$entity$purcert$fields$en extends PurchasingStrings$entity$purcert$fields$ja {
	_PurchasingStrings$entity$purcert$fields$en._(PurchasingStringsEn root) : this._root = root, super.internal(root);

	final PurchasingStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_certificate_id => 'Certificate';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on PurchasingStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'complaintAction.purchaseRec' => 'Register nonconformity',
			'menu.group' => 'Purchasing',
			'entity.unrec.title' => 'Unrecorded orders',
			'entity.unrec.fields.f_decision_date' => 'Decision date',
			'entity.unrec.fields.f_deadline' => 'Delivery deadline',
			'entity.unrec.fields.f_expected_completion_date' => 'Expected completion date',
			'entity.unrec.fields.f_planned_shipping_date' => 'Planned shipping date',
			'entity.unrec.fields.f_remarks' => 'Remarks',
			'entity.unrecdetail.title' => 'Unrecorded order lines',
			'entity.unrecdetail.fields.f_quantity' => 'Quantity',
			'entity.unrecdetail.fields.f_unit_price' => 'Unit price',
			'entity.unrecdetail.fields.f_price_adjustment' => 'Price adjustment',
			'entity.unrecdetail.fields.f_fixed_price' => 'Fixed unit price',
			'entity.unrecdetail.fields.f_material_supply' => 'Material supply type',
			'entity.unrecdetail.fields.f_paid_supply' => 'Paid supply type',
			'entity.unrecdetail.fields.f_deadline' => 'Line delivery deadline',
			'entity.unrecdetail.fields.f_item_id' => 'Item',
			'entity.unrecdetail.fields.f_remarks' => 'Remarks',
			'entity.purchase.title' => 'Purchase orders',
			'entity.purchase.fields.f_stakeholder_id' => 'Supplier',
			'entity.purchase.fields.f_register_at' => 'Registered on',
			'entity.purchase.fields.f_purchase_order_date' => 'Order date',
			'entity.purchase.fields.f_deadline' => 'Order deadline',
			'entity.purchase.fields.f_purchase_amount' => 'Order amount',
			'entity.purchase.fields.f_received_amount' => 'Received amount',
			'entity.purchase.fields.f_remarks' => 'Remarks',
			'entity.purdetail.title' => 'Purchase order lines',
			'entity.purdetail.fields.f_trans_resource_plan_id' => 'Resource plan',
			'entity.purdetail.fields.f_restocking_purchase' => 'Stock purchase',
			'entity.purdetail.fields.f_quantity' => 'Quantity',
			'entity.purdetail.fields.f_unit_price' => 'Unit price',
			'entity.purdetail.fields.f_price_adjustment' => 'Price adjustment',
			'entity.purdetail.fields.f_fixed_price' => 'Fixed unit price',
			'entity.purdetail.fields.f_material_supply' => 'Material supply type',
			'entity.purdetail.fields.f_paid_supply' => 'Paid supply type',
			'entity.purdetail.fields.f_period' => 'Delivery date',
			'entity.purdetail.fields.f_item_id' => 'Item',
			'entity.purdetail.fields.f_remarks' => 'Remarks',
			'entity.purdetail.fields.f_cancel_quantity' => 'Canceled quantity',
			'entity.purdetail.fields.f_stop' => 'Stopped',
			'entity.purdetail.fields.f_received_quantity' => 'Received',
			'entity.purdetail.fields.f_remaining_quantity' => 'Remaining',
			'entity.purdetail.fields.f_open_quantity' => 'Open quantity (0 while stopped)',
			'entity.purdetail.fields.f_cancel_closed' => 'Fully canceled',
			'entity.purdetail.fields.f_currency_symbol' => 'Currency symbol',
			'entity.purdetail.fields.f_amount_base' => 'Amount in base currency (estimate)',
			'entity.purdetail.fields.f_rate_provisional' => 'Provisional rate',
			'entity.purdetail.fields.f_reserve' => 'Allocation reservation',
			'entity.purchaserec.title' => 'Receipts',
			'entity.purchaserec.fields.f_trans_purchase_detail_id' => 'Purchase order line',
			'entity.purchaserec.fields.f_receive_at' => 'Received at',
			'entity.purchaserec.fields.f_quantity' => 'Quantity',
			'entity.purchaserec.fields.f_remarks' => 'Remarks',
			'entity.purchaseline.title' => 'Receipt lines',
			'entity.purchaseline.fields.f_item' => 'Item',
			'entity.purchaseline.fields.f_qty' => 'Received quantity',
			'entity.purchaseline.fields.f_unit' => 'Unit',
			'entity.purcert.title' => 'Purchased item certificates',
			'entity.purcert.fields.f_trans_certificate_id' => 'Certificate',
			'entity.purcert.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
