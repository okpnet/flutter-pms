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
class WorkRecordStringsEn extends WorkRecordStrings with BaseTranslations<WorkRecordLocale, WorkRecordStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [WorkRecordLocale.build] is preferred.
	WorkRecordStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<WorkRecordLocale, WorkRecordStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: WorkRecordLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<WorkRecordLocale, WorkRecordStrings> _meta;
	@override TranslationMetadata<WorkRecordLocale, WorkRecordStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final WorkRecordStringsEn _root = this; // ignore: unused_field

	@override 
	WorkRecordStringsEn $copyWith({TranslationMetadata<WorkRecordLocale, WorkRecordStrings>? meta}) => WorkRecordStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _WorkRecordStrings$menu$en menu = _WorkRecordStrings$menu$en._(_root);
	@override late final _WorkRecordStrings$entity$en entity = _WorkRecordStrings$entity$en._(_root);
}

// Path: menu
class _WorkRecordStrings$menu$en extends WorkRecordStrings$menu$ja {
	_WorkRecordStrings$menu$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Work records';
}

// Path: entity
class _WorkRecordStrings$entity$en extends WorkRecordStrings$entity$ja {
	_WorkRecordStrings$entity$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _WorkRecordStrings$entity$container$en container = _WorkRecordStrings$entity$container$en._(_root);
	@override late final _WorkRecordStrings$entity$invapply$en invapply = _WorkRecordStrings$entity$invapply$en._(_root);
	@override late final _WorkRecordStrings$entity$invreq$en invreq = _WorkRecordStrings$entity$invreq$en._(_root);
	@override late final _WorkRecordStrings$entity$certificate$en certificate = _WorkRecordStrings$entity$certificate$en._(_root);
	@override late final _WorkRecordStrings$entity$workrec$en workrec = _WorkRecordStrings$entity$workrec$en._(_root);
	@override late final _WorkRecordStrings$entity$wrcert$en wrcert = _WorkRecordStrings$entity$wrcert$en._(_root);
	@override late final _WorkRecordStrings$entity$mrpvisiter$en mrpvisiter = _WorkRecordStrings$entity$mrpvisiter$en._(_root);
	@override late final _WorkRecordStrings$entity$stockstatus$en stockstatus = _WorkRecordStrings$entity$stockstatus$en._(_root);
}

// Path: entity.container
class _WorkRecordStrings$entity$container$en extends WorkRecordStrings$entity$container$ja {
	_WorkRecordStrings$entity$container$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Containers';
	@override late final _WorkRecordStrings$entity$container$fields$en fields = _WorkRecordStrings$entity$container$fields$en._(_root);
}

// Path: entity.invapply
class _WorkRecordStrings$entity$invapply$en extends WorkRecordStrings$entity$invapply$ja {
	_WorkRecordStrings$entity$invapply$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Allocations';
	@override late final _WorkRecordStrings$entity$invapply$fields$en fields = _WorkRecordStrings$entity$invapply$fields$en._(_root);
}

// Path: entity.invreq
class _WorkRecordStrings$entity$invreq$en extends WorkRecordStrings$entity$invreq$ja {
	_WorkRecordStrings$entity$invreq$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Allocation reservations';
	@override late final _WorkRecordStrings$entity$invreq$fields$en fields = _WorkRecordStrings$entity$invreq$fields$en._(_root);
}

// Path: entity.certificate
class _WorkRecordStrings$entity$certificate$en extends WorkRecordStrings$entity$certificate$ja {
	_WorkRecordStrings$entity$certificate$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Certificates';
	@override late final _WorkRecordStrings$entity$certificate$fields$en fields = _WorkRecordStrings$entity$certificate$fields$en._(_root);
}

// Path: entity.workrec
class _WorkRecordStrings$entity$workrec$en extends WorkRecordStrings$entity$workrec$ja {
	_WorkRecordStrings$entity$workrec$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Work records';
	@override late final _WorkRecordStrings$entity$workrec$fields$en fields = _WorkRecordStrings$entity$workrec$fields$en._(_root);
}

// Path: entity.wrcert
class _WorkRecordStrings$entity$wrcert$en extends WorkRecordStrings$entity$wrcert$ja {
	_WorkRecordStrings$entity$wrcert$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Work certificates';
	@override late final _WorkRecordStrings$entity$wrcert$fields$en fields = _WorkRecordStrings$entity$wrcert$fields$en._(_root);
}

// Path: entity.mrpvisiter
class _WorkRecordStrings$entity$mrpvisiter$en extends WorkRecordStrings$entity$mrpvisiter$ja {
	_WorkRecordStrings$entity$mrpvisiter$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visitor items';
	@override late final _WorkRecordStrings$entity$mrpvisiter$fields$en fields = _WorkRecordStrings$entity$mrpvisiter$fields$en._(_root);
}

// Path: entity.stockstatus
class _WorkRecordStrings$entity$stockstatus$en extends WorkRecordStrings$entity$stockstatus$ja {
	_WorkRecordStrings$entity$stockstatus$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stock status';
	@override late final _WorkRecordStrings$entity$stockstatus$fields$en fields = _WorkRecordStrings$entity$stockstatus$fields$en._(_root);
}

// Path: entity.container.fields
class _WorkRecordStrings$entity$container$fields$en extends WorkRecordStrings$entity$container$fields$ja {
	_WorkRecordStrings$entity$container$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Code';
	@override String get f_name => 'Container name';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.invapply.fields
class _WorkRecordStrings$entity$invapply$fields$en extends WorkRecordStrings$entity$invapply$fields$ja {
	_WorkRecordStrings$entity$invapply$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_register_at => 'Allocated on';
	@override String get f_trans_inventory_request_id => 'Allocation reservation';
	@override String get f_staff_id => 'Worker';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.invreq.fields
class _WorkRecordStrings$entity$invreq$fields$en extends WorkRecordStrings$entity$invreq$fields$ja {
	_WorkRecordStrings$entity$invreq$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_register_at => 'Reserved on';
	@override String get f_register_plan_at => 'Planned allocation date';
	@override String get f_trans_purchase_rez_id => 'Purchase allocation';
	@override String get f_trans_product_rez_id => 'Production allocation';
	@override String get f_trans_resource_plan_id => 'Resource plan';
	@override String get f_quantity => 'Allocated quantity';
	@override String get f_staff_id => 'Worker';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.certificate.fields
class _WorkRecordStrings$entity$certificate$fields$en extends WorkRecordStrings$entity$certificate$fields$ja {
	_WorkRecordStrings$entity$certificate$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_serial => 'Serial number';
	@override String get f_title => 'Subject';
	@override String get f_class => 'Class';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.workrec.fields
class _WorkRecordStrings$entity$workrec$fields$en extends WorkRecordStrings$entity$workrec$fields$ja {
	_WorkRecordStrings$entity$workrec$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_work_plan_id => 'Work plan line';
	@override String get f_nth_time => 'Times';
	@override String get f_start_at => 'Start';
	@override String get f_stop_at => 'End';
	@override String get f_qty => 'Work quantity';
	@override String get f_staff_id => 'Worker';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.wrcert.fields
class _WorkRecordStrings$entity$wrcert$fields$en extends WorkRecordStrings$entity$wrcert$fields$ja {
	_WorkRecordStrings$entity$wrcert$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_certificate_id => 'Certificate';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.mrpvisiter.fields
class _WorkRecordStrings$entity$mrpvisiter$fields$en extends WorkRecordStrings$entity$mrpvisiter$fields$ja {
	_WorkRecordStrings$entity$mrpvisiter$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
	@override String get f_item_count => 'Item count';
	@override String get f_finished => 'Finished';
	@override String get f_quantity => 'Quantity';
}

// Path: entity.stockstatus.fields
class _WorkRecordStrings$entity$stockstatus$fields$en extends WorkRecordStrings$entity$stockstatus$fields$ja {
	_WorkRecordStrings$entity$stockstatus$fields$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_location => 'Location';
	@override String get f_container => 'Container';
	@override String get f_item => 'Item';
	@override String get f_qty => 'On hand';
	@override String get f_safety => 'Safety stock';
	@override String get f_avail => 'Available to issue';
	@override String get f_reserved => 'Reserved';
	@override String get f_reserve => 'Allocation reservation';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on WorkRecordStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Work records',
			'entity.container.title' => 'Containers',
			'entity.container.fields.f_code' => 'Code',
			'entity.container.fields.f_name' => 'Container name',
			'entity.container.fields.f_remarks' => 'Remarks',
			'entity.invapply.title' => 'Allocations',
			'entity.invapply.fields.f_register_at' => 'Allocated on',
			'entity.invapply.fields.f_trans_inventory_request_id' => 'Allocation reservation',
			'entity.invapply.fields.f_staff_id' => 'Worker',
			'entity.invapply.fields.f_remarks' => 'Remarks',
			'entity.invreq.title' => 'Allocation reservations',
			'entity.invreq.fields.f_register_at' => 'Reserved on',
			'entity.invreq.fields.f_register_plan_at' => 'Planned allocation date',
			'entity.invreq.fields.f_trans_purchase_rez_id' => 'Purchase allocation',
			'entity.invreq.fields.f_trans_product_rez_id' => 'Production allocation',
			'entity.invreq.fields.f_trans_resource_plan_id' => 'Resource plan',
			'entity.invreq.fields.f_quantity' => 'Allocated quantity',
			'entity.invreq.fields.f_staff_id' => 'Worker',
			'entity.invreq.fields.f_remarks' => 'Remarks',
			'entity.certificate.title' => 'Certificates',
			'entity.certificate.fields.f_serial' => 'Serial number',
			'entity.certificate.fields.f_title' => 'Subject',
			'entity.certificate.fields.f_class' => 'Class',
			'entity.certificate.fields.f_remarks' => 'Remarks',
			'entity.workrec.title' => 'Work records',
			'entity.workrec.fields.f_trans_work_plan_id' => 'Work plan line',
			'entity.workrec.fields.f_nth_time' => 'Times',
			'entity.workrec.fields.f_start_at' => 'Start',
			'entity.workrec.fields.f_stop_at' => 'End',
			'entity.workrec.fields.f_qty' => 'Work quantity',
			'entity.workrec.fields.f_staff_id' => 'Worker',
			'entity.workrec.fields.f_remarks' => 'Remarks',
			'entity.wrcert.title' => 'Work certificates',
			'entity.wrcert.fields.f_trans_certificate_id' => 'Certificate',
			'entity.wrcert.fields.f_remarks' => 'Remarks',
			'entity.mrpvisiter.title' => 'Visitor items',
			'entity.mrpvisiter.fields.f_item' => 'Item',
			'entity.mrpvisiter.fields.f_item_count' => 'Item count',
			'entity.mrpvisiter.fields.f_finished' => 'Finished',
			'entity.mrpvisiter.fields.f_quantity' => 'Quantity',
			'entity.stockstatus.title' => 'Stock status',
			'entity.stockstatus.fields.f_location' => 'Location',
			'entity.stockstatus.fields.f_container' => 'Container',
			'entity.stockstatus.fields.f_item' => 'Item',
			'entity.stockstatus.fields.f_qty' => 'On hand',
			'entity.stockstatus.fields.f_safety' => 'Safety stock',
			'entity.stockstatus.fields.f_avail' => 'Available to issue',
			'entity.stockstatus.fields.f_reserved' => 'Reserved',
			'entity.stockstatus.fields.f_reserve' => 'Allocation reservation',
			_ => null,
		};
	}
}
