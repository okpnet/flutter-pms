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
class SalesStringsEn extends SalesStrings with BaseTranslations<SalesLocale, SalesStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SalesLocale.build] is preferred.
	SalesStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SalesLocale, SalesStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SalesLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<SalesLocale, SalesStrings> _meta;
	@override TranslationMetadata<SalesLocale, SalesStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final SalesStringsEn _root = this; // ignore: unused_field

	@override 
	SalesStringsEn $copyWith({TranslationMetadata<SalesLocale, SalesStrings>? meta}) => SalesStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _SalesStrings$complaintAction$en complaintAction = _SalesStrings$complaintAction$en._(_root);
	@override late final _SalesStrings$menu$en menu = _SalesStrings$menu$en._(_root);
	@override late final _SalesStrings$entity$en entity = _SalesStrings$entity$en._(_root);
}

// Path: complaintAction
class _SalesStrings$complaintAction$en extends SalesStrings$complaintAction$ja {
	_SalesStrings$complaintAction$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get order => 'Register claim';
}

// Path: menu
class _SalesStrings$menu$en extends SalesStrings$menu$ja {
	_SalesStrings$menu$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Sales';
}

// Path: entity
class _SalesStrings$entity$en extends SalesStrings$entity$ja {
	_SalesStrings$entity$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _SalesStrings$entity$order$en order = _SalesStrings$entity$order$en._(_root);
	@override late final _SalesStrings$entity$orderdetail$en orderdetail = _SalesStrings$entity$orderdetail$en._(_root);
	@override late final _SalesStrings$entity$shipplan$en shipplan = _SalesStrings$entity$shipplan$en._(_root);
	@override late final _SalesStrings$entity$shipline$en shipline = _SalesStrings$entity$shipline$en._(_root);
}

// Path: entity.order
class _SalesStrings$entity$order$en extends SalesStrings$entity$order$ja {
	_SalesStrings$entity$order$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sales orders';
	@override late final _SalesStrings$entity$order$fields$en fields = _SalesStrings$entity$order$fields$en._(_root);
}

// Path: entity.orderdetail
class _SalesStrings$entity$orderdetail$en extends SalesStrings$entity$orderdetail$ja {
	_SalesStrings$entity$orderdetail$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sales order lines';
	@override late final _SalesStrings$entity$orderdetail$fields$en fields = _SalesStrings$entity$orderdetail$fields$en._(_root);
}

// Path: entity.shipplan
class _SalesStrings$entity$shipplan$en extends SalesStrings$entity$shipplan$ja {
	_SalesStrings$entity$shipplan$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shipping plans';
	@override late final _SalesStrings$entity$shipplan$fields$en fields = _SalesStrings$entity$shipplan$fields$en._(_root);
}

// Path: entity.shipline
class _SalesStrings$entity$shipline$en extends SalesStrings$entity$shipline$ja {
	_SalesStrings$entity$shipline$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shipping instructions';
	@override late final _SalesStrings$entity$shipline$fields$en fields = _SalesStrings$entity$shipline$fields$en._(_root);
}

// Path: entity.order.fields
class _SalesStrings$entity$order$fields$en extends SalesStrings$entity$order$fields$ja {
	_SalesStrings$entity$order$fields$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_order_number => 'Order number';
	@override String get f_customer_order_number => 'Customer order number';
	@override String get f_stakeholder_id => 'Customer';
	@override String get f_order_processing_date => 'Order date';
	@override String get f_delivery_date => 'Delivery date';
	@override String get f_deadline => 'Completion deadline';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.orderdetail.fields
class _SalesStrings$entity$orderdetail$fields$en extends SalesStrings$entity$orderdetail$fields$ja {
	_SalesStrings$entity$orderdetail$fields$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item_id => 'Item';
	@override String get f_quantity => 'Quantity';
	@override String get f_unit_price => 'Unit price';
	@override String get f_price_adjustment => 'Price adjustment';
	@override String get f_fixed_price => 'Fixed unit price';
	@override String get f_master_error_count => 'Master data issues';
	@override String get f_cancel_quantity => 'Canceled quantity';
	@override String get f_stop => 'Stopped';
	@override String get f_remaining_quantity => 'Remaining';
	@override String get f_open_quantity => 'Open quantity (0 while stopped)';
	@override String get f_cancel_closed => 'Fully canceled';
	@override String get f_settlement_amount => 'Settlement amount';
	@override String get f_currency_symbol => 'Currency symbol';
	@override String get f_amount_base => 'Amount in base currency (estimate)';
	@override String get f_rate_provisional => 'Provisional rate';
	@override String get f_delivery_date => 'Line delivery date';
	@override String get f_deadline => 'Line completion deadline';
	@override String get f_remarks => 'Remarks';
	@override String get f_customer_property => 'Product owned by customer';
}

// Path: entity.shipplan.fields
class _SalesStrings$entity$shipplan$fields$en extends SalesStrings$entity$shipplan$fields$ja {
	_SalesStrings$entity$shipplan$fields$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_order => 'Sales order';
	@override String get f_code => 'Shipping plan code';
	@override String get f_date => 'Planned shipping date';
	@override String get f_arrival => 'Planned arrival date';
	@override String get f_carrier => 'Carrier';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.shipline.fields
class _SalesStrings$entity$shipline$fields$en extends SalesStrings$entity$shipline$fields$ja {
	_SalesStrings$entity$shipline$fields$en._(SalesStringsEn root) : this._root = root, super.internal(root);

	final SalesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_orderdetail => 'Sales order line';
	@override String get f_qty => 'Shipping quantity';
	@override String get f_date => 'Line planned date';
	@override String get f_arrival => 'Line arrival date';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SalesStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'complaintAction.order' => 'Register claim',
			'menu.group' => 'Sales',
			'entity.order.title' => 'Sales orders',
			'entity.order.fields.f_order_number' => 'Order number',
			'entity.order.fields.f_customer_order_number' => 'Customer order number',
			'entity.order.fields.f_stakeholder_id' => 'Customer',
			'entity.order.fields.f_order_processing_date' => 'Order date',
			'entity.order.fields.f_delivery_date' => 'Delivery date',
			'entity.order.fields.f_deadline' => 'Completion deadline',
			'entity.order.fields.f_remarks' => 'Remarks',
			'entity.orderdetail.title' => 'Sales order lines',
			'entity.orderdetail.fields.f_item_id' => 'Item',
			'entity.orderdetail.fields.f_quantity' => 'Quantity',
			'entity.orderdetail.fields.f_unit_price' => 'Unit price',
			'entity.orderdetail.fields.f_price_adjustment' => 'Price adjustment',
			'entity.orderdetail.fields.f_fixed_price' => 'Fixed unit price',
			'entity.orderdetail.fields.f_master_error_count' => 'Master data issues',
			'entity.orderdetail.fields.f_cancel_quantity' => 'Canceled quantity',
			'entity.orderdetail.fields.f_stop' => 'Stopped',
			'entity.orderdetail.fields.f_remaining_quantity' => 'Remaining',
			'entity.orderdetail.fields.f_open_quantity' => 'Open quantity (0 while stopped)',
			'entity.orderdetail.fields.f_cancel_closed' => 'Fully canceled',
			'entity.orderdetail.fields.f_settlement_amount' => 'Settlement amount',
			'entity.orderdetail.fields.f_currency_symbol' => 'Currency symbol',
			'entity.orderdetail.fields.f_amount_base' => 'Amount in base currency (estimate)',
			'entity.orderdetail.fields.f_rate_provisional' => 'Provisional rate',
			'entity.orderdetail.fields.f_delivery_date' => 'Line delivery date',
			'entity.orderdetail.fields.f_deadline' => 'Line completion deadline',
			'entity.orderdetail.fields.f_remarks' => 'Remarks',
			'entity.orderdetail.fields.f_customer_property' => 'Product owned by customer',
			'entity.shipplan.title' => 'Shipping plans',
			'entity.shipplan.fields.f_order' => 'Sales order',
			'entity.shipplan.fields.f_code' => 'Shipping plan code',
			'entity.shipplan.fields.f_date' => 'Planned shipping date',
			'entity.shipplan.fields.f_arrival' => 'Planned arrival date',
			'entity.shipplan.fields.f_carrier' => 'Carrier',
			'entity.shipplan.fields.f_remarks' => 'Remarks',
			'entity.shipline.title' => 'Shipping instructions',
			'entity.shipline.fields.f_orderdetail' => 'Sales order line',
			'entity.shipline.fields.f_qty' => 'Shipping quantity',
			'entity.shipline.fields.f_date' => 'Line planned date',
			'entity.shipline.fields.f_arrival' => 'Line arrival date',
			'entity.shipline.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
