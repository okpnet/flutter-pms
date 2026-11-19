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
	@override late final _WorkRecordStrings$register$en register = _WorkRecordStrings$register$en._(_root);
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

// Path: register
class _WorkRecordStrings$register$en extends WorkRecordStrings$register$ja {
	_WorkRecordStrings$register$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Record results';
	@override String get empty => 'There are no production plans.';
	@override String get loadFailed => 'Could not load.';
	@override String get retry => 'Reload';
	@override late final _WorkRecordStrings$register$plan$en plan = _WorkRecordStrings$register$plan$en._(_root);
	@override late final _WorkRecordStrings$register$step$en step = _WorkRecordStrings$register$step$en._(_root);
	@override late final _WorkRecordStrings$register$status$en status = _WorkRecordStrings$register$status$en._(_root);
	@override late final _WorkRecordStrings$register$action$en action = _WorkRecordStrings$register$action$en._(_root);
	@override late final _WorkRecordStrings$register$history$en history = _WorkRecordStrings$register$history$en._(_root);
	@override late final _WorkRecordStrings$register$start$en start = _WorkRecordStrings$register$start$en._(_root);
	@override late final _WorkRecordStrings$register$finish$en finish = _WorkRecordStrings$register$finish$en._(_root);
	@override late final _WorkRecordStrings$register$picker$en picker = _WorkRecordStrings$register$picker$en._(_root);
	@override late final _WorkRecordStrings$register$outcome$en outcome = _WorkRecordStrings$register$outcome$en._(_root);
	@override late final _WorkRecordStrings$register$error$en error = _WorkRecordStrings$register$error$en._(_root);
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

// Path: register.plan
class _WorkRecordStrings$register$plan$en extends WorkRecordStrings$register$plan$ja {
	_WorkRecordStrings$register$plan$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get no => 'Plan no.';
	@override String get item => 'Item';
	@override String get order => 'Order';
	@override String get customer => 'Customer';
	@override String get quantity => 'Planned qty';
	@override String get completed => 'Completed (last step)';
	@override String get due => 'Due';
	@override String get inProgress => 'Steps in progress';
}

// Path: register.step
class _WorkRecordStrings$register$step$en extends WorkRecordStrings$register$step$ja {
	_WorkRecordStrings$register$step$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get sequence => 'Step';
	@override String get process => 'Process';
	@override String get status => 'Status';
	@override String get planned => 'Planned minutes';
	@override String get startPlan => 'Planned start';
	@override String get finishPlan => 'Planned finish';
	@override String get equipment => 'Equipment';
	@override String get rounds => 'Results';
	@override String get staff => 'Staff';
	@override String get container => 'Container';
	@override String get startedAt => 'Started';
	@override String get finishedAt => 'Finished';
	@override String get actions => 'Record';
}

// Path: register.status
class _WorkRecordStrings$register$status$en extends WorkRecordStrings$register$status$ja {
	_WorkRecordStrings$register$status$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get notStarted => 'Not started';
	@override String get inProgress => 'In progress';
	@override String get completed => 'Done';
}

// Path: register.action
class _WorkRecordStrings$register$action$en extends WorkRecordStrings$register$action$ja {
	_WorkRecordStrings$register$action$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get start => 'Start';
	@override String get finish => 'Finish';
	@override String get search => 'Find & start';
	@override String get history => 'Results';
	@override String get cancel => 'Cancel';
	@override String get close => 'Close';
}

// Path: register.history
class _WorkRecordStrings$register$history$en extends WorkRecordStrings$register$history$ja {
	_WorkRecordStrings$register$history$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String title({required Object process}) => 'Results: ${process}';
	@override String get empty => 'No results yet.';
	@override String get round => 'Round';
	@override String get resultNo => 'Result no.';
	@override String get startedAt => 'Started';
	@override String get finishedAt => 'Finished';
	@override String get staff => 'Staff';
	@override String get container => 'Container (source)';
	@override String get startQuantity => 'Start qty';
	@override String get doneQuantity => 'Done qty';
	@override String get defect => 'Nonconforming';
	@override String get handover => 'Handover';
}

// Path: register.start
class _WorkRecordStrings$register$start$en extends WorkRecordStrings$register$start$ja {
	_WorkRecordStrings$register$start$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String title({required Object process}) => 'Start: ${process}';
	@override String get staff => 'Staff';
	@override String get quantity => 'Start quantity';
	@override String get quantityAll => 'All';
	@override String quantityHint({required Object max, required Object stock, required Object remaining}) => 'Up to ${max} (container stock ${stock}, plan remaining ${remaining})';
	@override String get container => 'Container to take from';
	@override String get reserved => 'Reserved';
	@override String stock({required Object n}) => 'Stock ${n}';
	@override String get change => 'Change / search containers';
	@override String get none => 'No container to take from.';
	@override String get submit => 'Start (issue from container)';
}

// Path: register.finish
class _WorkRecordStrings$register$finish$en extends WorkRecordStrings$register$finish$ja {
	_WorkRecordStrings$register$finish$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String title({required Object process}) => 'Finish: ${process}';
	@override String taken({required Object n, required Object container}) => 'Taken ${n} (from ${container})';
	@override String get done => 'Completed quantity';
	@override String get destination => 'Destination container';
	@override String shortfall({required Object n}) => 'Completed is ${n} less than taken';
	@override String get intentional => 'Intentional';
	@override String get nonconforming => 'Nonconforming';
	@override String get intentionalReason => 'Reason';
	@override String get intentionalNote => 'The difference goes back to the source container (picked up as a handover next time).';
	@override String get defectQuantity => 'Nonconforming quantity';
	@override String get defectReason => 'Nonconforming reason';
	@override String get defectContainer => 'Container for nonconforming';
	@override String returnNote({required Object n}) => '${n} short of nonconforming goes back to the source.';
	@override String get submit => 'Register finish (issue to container)';
}

// Path: register.picker
class _WorkRecordStrings$register$picker$en extends WorkRecordStrings$register$picker$ja {
	_WorkRecordStrings$register$picker$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Select a container';
	@override String get name => 'Container';
	@override String get location => 'Location';
	@override String get contents => 'Contents';
	@override String get quantity => 'Stock';
	@override String get reserved => 'Reserved';
	@override String get reason => 'Why unavailable';
	@override String get unavailable => 'This container cannot be taken from.';
}

// Path: register.outcome
class _WorkRecordStrings$register$outcome$en extends WorkRecordStrings$register$outcome$ja {
	_WorkRecordStrings$register$outcome$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Result';
	@override String get startedTitle => 'Start registered';
	@override String get finishedTitle => 'Finish registered';
	@override String result({required Object no, required Object round}) => 'Result ${no} (round ${round})';
	@override String issuedFrom({required Object n, required Object container}) => 'Issued ${n} from ${container}';
	@override String issuedTo({required Object n, required Object container}) => 'Issued ${n} to ${container}';
	@override String defect({required Object no, required Object n, required Object container}) => 'Process defect ${no}: issued ${n} to ${container}';
	@override String returned({required Object n, required Object container}) => 'Returned ${n} to ${container}';
	@override String get stepCompleted => 'This step is complete.';
	@override String updated({required Object n}) => '${n} records updated';
}

// Path: register.error
class _WorkRecordStrings$register$error$en extends WorkRecordStrings$register$error$ja {
	_WorkRecordStrings$register$error$en._(WorkRecordStringsEn root) : this._root = root, super.internal(root);

	final WorkRecordStringsEn _root; // ignore: unused_field

	// Translations
	@override String get required => 'Required.';
	@override String get notPositive => 'Enter 1 or more.';
	@override String get overStock => 'More than the container stock.';
	@override String get overRemaining => 'More than the plan remaining.';
	@override String get overTaken => 'More than taken.';
	@override String get notAvailable => 'This container cannot be taken from.';
	@override String get reasonRequired => 'Select a reason.';
	@override String get overShortfall => 'More than the shortfall.';
	@override String get shortfallRequired => 'Choose intentional or nonconforming.';
	@override String failed({required Object reason}) => 'Could not register: ${reason}. Your input is kept; you can try again.';
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
	@override String get f_file => 'File';
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
			'entity.certificate.fields.f_file' => 'File',
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
			'register.title' => 'Record results',
			'register.empty' => 'There are no production plans.',
			'register.loadFailed' => 'Could not load.',
			'register.retry' => 'Reload',
			'register.plan.no' => 'Plan no.',
			'register.plan.item' => 'Item',
			'register.plan.order' => 'Order',
			'register.plan.customer' => 'Customer',
			'register.plan.quantity' => 'Planned qty',
			'register.plan.completed' => 'Completed (last step)',
			'register.plan.due' => 'Due',
			'register.plan.inProgress' => 'Steps in progress',
			'register.step.sequence' => 'Step',
			'register.step.process' => 'Process',
			'register.step.status' => 'Status',
			'register.step.planned' => 'Planned minutes',
			'register.step.startPlan' => 'Planned start',
			'register.step.finishPlan' => 'Planned finish',
			'register.step.equipment' => 'Equipment',
			'register.step.rounds' => 'Results',
			'register.step.staff' => 'Staff',
			'register.step.container' => 'Container',
			'register.step.startedAt' => 'Started',
			'register.step.finishedAt' => 'Finished',
			'register.step.actions' => 'Record',
			'register.status.notStarted' => 'Not started',
			'register.status.inProgress' => 'In progress',
			'register.status.completed' => 'Done',
			'register.action.start' => 'Start',
			'register.action.finish' => 'Finish',
			'register.action.search' => 'Find & start',
			'register.action.history' => 'Results',
			'register.action.cancel' => 'Cancel',
			'register.action.close' => 'Close',
			'register.history.title' => ({required Object process}) => 'Results: ${process}',
			'register.history.empty' => 'No results yet.',
			'register.history.round' => 'Round',
			'register.history.resultNo' => 'Result no.',
			'register.history.startedAt' => 'Started',
			'register.history.finishedAt' => 'Finished',
			'register.history.staff' => 'Staff',
			'register.history.container' => 'Container (source)',
			'register.history.startQuantity' => 'Start qty',
			'register.history.doneQuantity' => 'Done qty',
			'register.history.defect' => 'Nonconforming',
			'register.history.handover' => 'Handover',
			'register.start.title' => ({required Object process}) => 'Start: ${process}',
			'register.start.staff' => 'Staff',
			'register.start.quantity' => 'Start quantity',
			'register.start.quantityAll' => 'All',
			'register.start.quantityHint' => ({required Object max, required Object stock, required Object remaining}) => 'Up to ${max} (container stock ${stock}, plan remaining ${remaining})',
			'register.start.container' => 'Container to take from',
			'register.start.reserved' => 'Reserved',
			'register.start.stock' => ({required Object n}) => 'Stock ${n}',
			'register.start.change' => 'Change / search containers',
			'register.start.none' => 'No container to take from.',
			'register.start.submit' => 'Start (issue from container)',
			'register.finish.title' => ({required Object process}) => 'Finish: ${process}',
			'register.finish.taken' => ({required Object n, required Object container}) => 'Taken ${n} (from ${container})',
			'register.finish.done' => 'Completed quantity',
			'register.finish.destination' => 'Destination container',
			'register.finish.shortfall' => ({required Object n}) => 'Completed is ${n} less than taken',
			'register.finish.intentional' => 'Intentional',
			'register.finish.nonconforming' => 'Nonconforming',
			'register.finish.intentionalReason' => 'Reason',
			'register.finish.intentionalNote' => 'The difference goes back to the source container (picked up as a handover next time).',
			'register.finish.defectQuantity' => 'Nonconforming quantity',
			'register.finish.defectReason' => 'Nonconforming reason',
			'register.finish.defectContainer' => 'Container for nonconforming',
			'register.finish.returnNote' => ({required Object n}) => '${n} short of nonconforming goes back to the source.',
			'register.finish.submit' => 'Register finish (issue to container)',
			'register.picker.title' => 'Select a container',
			'register.picker.name' => 'Container',
			'register.picker.location' => 'Location',
			'register.picker.contents' => 'Contents',
			'register.picker.quantity' => 'Stock',
			'register.picker.reserved' => 'Reserved',
			'register.picker.reason' => 'Why unavailable',
			'register.picker.unavailable' => 'This container cannot be taken from.',
			'register.outcome.title' => 'Result',
			'register.outcome.startedTitle' => 'Start registered',
			'register.outcome.finishedTitle' => 'Finish registered',
			'register.outcome.result' => ({required Object no, required Object round}) => 'Result ${no} (round ${round})',
			'register.outcome.issuedFrom' => ({required Object n, required Object container}) => 'Issued ${n} from ${container}',
			'register.outcome.issuedTo' => ({required Object n, required Object container}) => 'Issued ${n} to ${container}',
			'register.outcome.defect' => ({required Object no, required Object n, required Object container}) => 'Process defect ${no}: issued ${n} to ${container}',
			'register.outcome.returned' => ({required Object n, required Object container}) => 'Returned ${n} to ${container}',
			'register.outcome.stepCompleted' => 'This step is complete.',
			'register.outcome.updated' => ({required Object n}) => '${n} records updated',
			'register.error.required' => 'Required.',
			'register.error.notPositive' => 'Enter 1 or more.',
			'register.error.overStock' => 'More than the container stock.',
			'register.error.overRemaining' => 'More than the plan remaining.',
			'register.error.overTaken' => 'More than taken.',
			'register.error.notAvailable' => 'This container cannot be taken from.',
			'register.error.reasonRequired' => 'Select a reason.',
			'register.error.overShortfall' => 'More than the shortfall.',
			'register.error.shortfallRequired' => 'Choose intentional or nonconforming.',
			'register.error.failed' => ({required Object reason}) => 'Could not register: ${reason}. Your input is kept; you can try again.',
			_ => null,
		};
	}
}
