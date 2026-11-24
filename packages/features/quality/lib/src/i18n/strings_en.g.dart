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
class QualityStringsEn extends QualityStrings with BaseTranslations<QualityLocale, QualityStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityLocale.build] is preferred.
	QualityStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityLocale, QualityStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<QualityLocale, QualityStrings> _meta;
	@override TranslationMetadata<QualityLocale, QualityStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final QualityStringsEn _root = this; // ignore: unused_field

	@override 
	QualityStringsEn $copyWith({TranslationMetadata<QualityLocale, QualityStrings>? meta}) => QualityStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _QualityStrings$auditRun$en auditRun = _QualityStrings$auditRun$en._(_root);
	@override late final _QualityStrings$auditNotice$en auditNotice = _QualityStrings$auditNotice$en._(_root);
	@override late final _QualityStrings$complaintRegister$en complaintRegister = _QualityStrings$complaintRegister$en._(_root);
	@override late final _QualityStrings$auditPlan$en auditPlan = _QualityStrings$auditPlan$en._(_root);
	@override late final _QualityStrings$menu$en menu = _QualityStrings$menu$en._(_root);
	@override late final _QualityStrings$entity$en entity = _QualityStrings$entity$en._(_root);
}

// Path: auditRun
class _QualityStrings$auditRun$en extends QualityStrings$auditRun$ja {
	_QualityStrings$auditRun$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get myTitle => 'My audits';
	@override String get myHint => 'Audits assigned to your team. In-progress audits come first, then by scheduled date.';
	@override String get sectionInProgress => 'In progress';
	@override String get sectionPlanned => 'Planned';
	@override String get sectionDone => 'Done';
	@override String get empty => 'No audits are assigned to you.';
	@override String get loadFailed => 'Could not load the audits.';
	@override String get refresh => 'Reload';
	@override String get statusInProgress => 'In progress';
	@override String get statusPlanned => 'Planned';
	@override String get statusDone => 'Done';
	@override String get statusOverdue => 'Overdue';
	@override String team({required Object name}) => 'Team: ${name}';
	@override String scheduled({required Object date}) => 'Scheduled: ${date}';
	@override String performed({required Object date}) => 'Performed: ${date}';
	@override String progress({required Object done, required Object total}) => 'Answered ${done} / ${total} items';
	@override String get runTitle => 'Conduct audit';
	@override String get back => 'Back';
	@override String get tabItems => 'Items';
	@override String get tabComplaints => 'Nonconformities';
	@override String get start => 'Start audit';
	@override String get finish => 'Finish audit';
	@override String get conclusion => 'Conclusion';
	@override String get finishTitle => 'Finish the audit';
	@override String get cancel => 'Cancel';
	@override String get ok => 'Finish';
	@override String get noItems => 'There are no items. Starting the audit prepares the items of the audit standard.';
	@override String get itemValue => 'Value';
	@override String expected({required Object expr}) => 'Criterion: ${expr}';
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override String get judgePass => 'Pass';
	@override String get judgeFail => 'Fail';
	@override String get itemFindings => 'Findings (comment)';
	@override String get save => 'Save';
	@override String get saved => 'Saved.';
	@override String get saveFailed => 'Could not save.';
	@override String get answered => 'Answered';
	@override String get unanswered => 'Not answered';
	@override String complaintCount({required Object n}) => '${n} nonconformities';
	@override String get enterComplaint => 'Enter nonconformity';
	@override String get backToItem => 'Back to items';
	@override String get complaintItem => 'Item';
	@override String get complaintTitle => 'Title';
	@override String get complaintDetails => 'Details';
	@override String get register => 'Register nonconformity';
	@override String get registered => 'Registered.';
	@override String get registerFailed => 'Could not register.';
	@override String get titleRequired => 'Enter a title.';
	@override String get itemRequired => 'Choose an item.';
	@override String get complaintsOfItem => 'Nonconformities of this item';
	@override String get noComplaints => 'No nonconformities for this item.';
	@override String get actionFailed => 'The operation failed.';
}

// Path: auditNotice
class _QualityStrings$auditNotice$en extends QualityStrings$auditNotice$ja {
	_QualityStrings$auditNotice$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String summary({required Object n}) => '${n} audits are coming up';
	@override String get all => 'My audits';
	@override String get overdue => 'Overdue';
	@override String get inProgress => 'In progress';
	@override String get today => 'Today';
	@override String inDays({required Object n}) => 'In ${n} days';
}

// Path: complaintRegister
class _QualityStrings$complaintRegister$en extends QualityStrings$complaintRegister$ja {
	_QualityStrings$complaintRegister$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Register a nonconformity';
	@override String get hint => 'Choose the target, then enter a title and details. The target decides the kind (equipment, process, work record, receipt, lot, order, stakeholder).';
	@override String get kind => 'Target kind';
	@override String get kindEquipment => 'Equipment (found in an equipment inspection)';
	@override String get kindProcess => 'Process (found in a process)';
	@override String get kindWork => 'Work record (found in a work record)';
	@override String get kindPurchaseRec => 'Receipt (found at receiving)';
	@override String get kindVisiter => 'Lot (found in a shelf move)';
	@override String get kindOrder => 'Order (customer claim)';
	@override String get kindStakeholder => 'Stakeholder (stakeholder complaint)';
	@override String get target => 'Target';
	@override String get targetNone => 'Please choose';
	@override String get targetBySymbol => 'Target symbol or ID';
	@override String get pick => 'Choose';
	@override String get titleLabel => 'Title';
	@override String get details => 'Details';
	@override String get occurredAt => 'Found on';
	@override String get now => 'Time of registration';
	@override String get pickDate => 'Pick a date';
	@override String get quantity => 'Quantity (default 1)';
	@override String get quantityRequired => 'Quantity (required)';
	@override String get register => 'Register';
	@override String get registered => 'Registered.';
	@override String get failed => 'Could not register.';
	@override String get errorTitle => 'Enter a title.';
	@override String get errorTarget => 'Choose a target.';
	@override String get errorQuantity => 'Enter a number greater than 0.';
}

// Path: auditPlan
class _QualityStrings$auditPlan$en extends QualityStrings$auditPlan$ja {
	_QualityStrings$auditPlan$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Register audit plan';
	@override String get back => 'Back';
	@override String get hint => 'Enter the audit title, standard, and teams with schedules. Each row becomes one team (with auditors) and one scheduled audit.';
	@override String get loadFailed => 'Could not load the options.';
	@override String get fieldTitle => 'Audit title';
	@override String get fieldDetails => 'Details';
	@override String get fieldStandard => 'Audit standard';
	@override String get fieldDepartment => 'Target department (optional)';
	@override String get fieldStakeholder => 'Target stakeholder (optional)';
	@override String get notSelected => 'Not specified';
	@override String get lines => 'Teams and schedules';
	@override String get addLine => 'Add row';
	@override String get removeLine => 'Remove this row';
	@override String line({required Object n}) => 'Team ${n}';
	@override String get teamName => 'Team name';
	@override String get auditors => 'Auditors';
	@override String get pickAuditors => 'Choose auditors';
	@override String get noAuditors => 'No auditors chosen';
	@override String get scheduledAt => 'Scheduled at';
	@override String get expectedEndAt => 'Expected end';
	@override String get pickDate => 'Choose';
	@override String get clearDate => 'Clear';
	@override String get notSet => 'Not set';
	@override String get register => 'Register';
	@override String get registered => 'Registered.';
	@override String get registerFailed => 'Could not register.';
	@override String get goMyAudits => 'Go to my audits';
	@override String get errTitle => 'Enter a title.';
	@override String get errStandard => 'Choose an audit standard.';
	@override String get errLines => 'Add at least one row.';
	@override String get errTeam => 'Enter a team name.';
	@override String get errAuditor => 'Choose auditors.';
	@override String get errPeriod => 'The expected end is before the schedule.';
	@override String get pickerTitle => 'Choose auditors';
	@override String get ok => 'OK';
	@override String get cancel => 'Cancel';
}

// Path: menu
class _QualityStrings$menu$en extends QualityStrings$menu$ja {
	_QualityStrings$menu$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Quality control';
}

// Path: entity
class _QualityStrings$entity$en extends QualityStrings$entity$ja {
	_QualityStrings$entity$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _QualityStrings$entity$complaint$en complaint = _QualityStrings$entity$complaint$en._(_root);
	@override late final _QualityStrings$entity$compreceive$en compreceive = _QualityStrings$entity$compreceive$en._(_root);
	@override late final _QualityStrings$entity$compstake$en compstake = _QualityStrings$entity$compstake$en._(_root);
	@override late final _QualityStrings$entity$compfile$en compfile = _QualityStrings$entity$compfile$en._(_root);
	@override late final _QualityStrings$entity$orderrisk$en orderrisk = _QualityStrings$entity$orderrisk$en._(_root);
	@override late final _QualityStrings$entity$orderdetailrisk$en orderdetailrisk = _QualityStrings$entity$orderdetailrisk$en._(_root);
	@override late final _QualityStrings$entity$odrimp$en odrimp = _QualityStrings$entity$odrimp$en._(_root);
	@override late final _QualityStrings$entity$taskrisk$en taskrisk = _QualityStrings$entity$taskrisk$en._(_root);
	@override late final _QualityStrings$entity$trimp$en trimp = _QualityStrings$entity$trimp$en._(_root);
	@override late final _QualityStrings$entity$auditstd$en auditstd = _QualityStrings$entity$auditstd$en._(_root);
	@override late final _QualityStrings$entity$auditstdimp$en auditstdimp = _QualityStrings$entity$auditstdimp$en._(_root);
	@override late final _QualityStrings$entity$auditteam$en auditteam = _QualityStrings$entity$auditteam$en._(_root);
	@override late final _QualityStrings$entity$auditor$en auditor = _QualityStrings$entity$auditor$en._(_root);
	@override late final _QualityStrings$entity$audit$en audit = _QualityStrings$entity$audit$en._(_root);
	@override late final _QualityStrings$entity$auditteamlink$en auditteamlink = _QualityStrings$entity$auditteamlink$en._(_root);
	@override late final _QualityStrings$entity$auditmember$en auditmember = _QualityStrings$entity$auditmember$en._(_root);
}

// Path: entity.complaint
class _QualityStrings$entity$complaint$en extends QualityStrings$entity$complaint$ja {
	_QualityStrings$entity$complaint$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nonconformities';
	@override late final _QualityStrings$entity$complaint$fields$en fields = _QualityStrings$entity$complaint$fields$en._(_root);
}

// Path: entity.compreceive
class _QualityStrings$entity$compreceive$en extends QualityStrings$entity$compreceive$ja {
	_QualityStrings$entity$compreceive$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nonconformity report receipts';
	@override late final _QualityStrings$entity$compreceive$fields$en fields = _QualityStrings$entity$compreceive$fields$en._(_root);
}

// Path: entity.compstake
class _QualityStrings$entity$compstake$en extends QualityStrings$entity$compstake$ja {
	_QualityStrings$entity$compstake$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stakeholder complaints';
	@override late final _QualityStrings$entity$compstake$fields$en fields = _QualityStrings$entity$compstake$fields$en._(_root);
}

// Path: entity.compfile
class _QualityStrings$entity$compfile$en extends QualityStrings$entity$compfile$ja {
	_QualityStrings$entity$compfile$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nonconformity report files';
	@override late final _QualityStrings$entity$compfile$fields$en fields = _QualityStrings$entity$compfile$fields$en._(_root);
}

// Path: entity.orderrisk
class _QualityStrings$entity$orderrisk$en extends QualityStrings$entity$orderrisk$ja {
	_QualityStrings$entity$orderrisk$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Order risks';
	@override late final _QualityStrings$entity$orderrisk$fields$en fields = _QualityStrings$entity$orderrisk$fields$en._(_root);
}

// Path: entity.orderdetailrisk
class _QualityStrings$entity$orderdetailrisk$en extends QualityStrings$entity$orderdetailrisk$ja {
	_QualityStrings$entity$orderdetailrisk$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sales order line risks';
	@override late final _QualityStrings$entity$orderdetailrisk$fields$en fields = _QualityStrings$entity$orderdetailrisk$fields$en._(_root);
}

// Path: entity.odrimp
class _QualityStrings$entity$odrimp$en extends QualityStrings$entity$odrimp$ja {
	_QualityStrings$entity$odrimp$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Import: risks';
	@override late final _QualityStrings$entity$odrimp$fields$en fields = _QualityStrings$entity$odrimp$fields$en._(_root);
}

// Path: entity.taskrisk
class _QualityStrings$entity$taskrisk$en extends QualityStrings$entity$taskrisk$ja {
	_QualityStrings$entity$taskrisk$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Task risks';
	@override late final _QualityStrings$entity$taskrisk$fields$en fields = _QualityStrings$entity$taskrisk$fields$en._(_root);
}

// Path: entity.trimp
class _QualityStrings$entity$trimp$en extends QualityStrings$entity$trimp$ja {
	_QualityStrings$entity$trimp$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Import: risks';
	@override late final _QualityStrings$entity$trimp$fields$en fields = _QualityStrings$entity$trimp$fields$en._(_root);
}

// Path: entity.auditstd
class _QualityStrings$entity$auditstd$en extends QualityStrings$entity$auditstd$ja {
	_QualityStrings$entity$auditstd$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audit standards';
	@override late final _QualityStrings$entity$auditstd$fields$en fields = _QualityStrings$entity$auditstd$fields$en._(_root);
}

// Path: entity.auditstdimp
class _QualityStrings$entity$auditstdimp$en extends QualityStrings$entity$auditstdimp$ja {
	_QualityStrings$entity$auditstdimp$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Import: audit standard items';
	@override late final _QualityStrings$entity$auditstdimp$fields$en fields = _QualityStrings$entity$auditstdimp$fields$en._(_root);
}

// Path: entity.auditteam
class _QualityStrings$entity$auditteam$en extends QualityStrings$entity$auditteam$ja {
	_QualityStrings$entity$auditteam$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audit teams';
	@override late final _QualityStrings$entity$auditteam$fields$en fields = _QualityStrings$entity$auditteam$fields$en._(_root);
}

// Path: entity.auditor
class _QualityStrings$entity$auditor$en extends QualityStrings$entity$auditor$ja {
	_QualityStrings$entity$auditor$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Auditors';
	@override late final _QualityStrings$entity$auditor$fields$en fields = _QualityStrings$entity$auditor$fields$en._(_root);
}

// Path: entity.audit
class _QualityStrings$entity$audit$en extends QualityStrings$entity$audit$ja {
	_QualityStrings$entity$audit$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audits';
	@override late final _QualityStrings$entity$audit$fields$en fields = _QualityStrings$entity$audit$fields$en._(_root);
}

// Path: entity.auditteamlink
class _QualityStrings$entity$auditteamlink$en extends QualityStrings$entity$auditteamlink$ja {
	_QualityStrings$entity$auditteamlink$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audit teams';
	@override late final _QualityStrings$entity$auditteamlink$fields$en fields = _QualityStrings$entity$auditteamlink$fields$en._(_root);
}

// Path: entity.auditmember
class _QualityStrings$entity$auditmember$en extends QualityStrings$entity$auditmember$ja {
	_QualityStrings$entity$auditmember$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audit participants';
	@override late final _QualityStrings$entity$auditmember$fields$en fields = _QualityStrings$entity$auditmember$fields$en._(_root);
}

// Path: entity.complaint.fields
class _QualityStrings$entity$complaint$fields$en extends QualityStrings$entity$complaint$fields$ja {
	_QualityStrings$entity$complaint$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_occurent_at => 'Occurred on';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_reporter_staff_id => 'Reporter';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.compreceive.fields
class _QualityStrings$entity$compreceive$fields$en extends QualityStrings$entity$compreceive$fields$ja {
	_QualityStrings$entity$compreceive$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_receive_at => 'Received on';
	@override String get f_receive_staff_id => 'Received by';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.compstake.fields
class _QualityStrings$entity$compstake$fields$en extends QualityStrings$entity$compstake$fields$ja {
	_QualityStrings$entity$compstake$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_stakeholder_id => 'Stakeholder';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.compfile.fields
class _QualityStrings$entity$compfile$fields$en extends QualityStrings$entity$compfile$fields$ja {
	_QualityStrings$entity$compfile$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_file => 'File';
	@override String get f_date => 'Registered on';
}

// Path: entity.orderrisk.fields
class _QualityStrings$entity$orderrisk$fields$en extends QualityStrings$entity$orderrisk$fields$ja {
	_QualityStrings$entity$orderrisk$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_order_id => 'Order';
	@override String get f_trans_risk_id => 'Risk';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.orderdetailrisk.fields
class _QualityStrings$entity$orderdetailrisk$fields$en extends QualityStrings$entity$orderdetailrisk$fields$ja {
	_QualityStrings$entity$orderdetailrisk$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_order_detail_id => 'Sales order line';
	@override String get f_risk_id => 'Risk';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.odrimp.fields
class _QualityStrings$entity$odrimp$fields$en extends QualityStrings$entity$odrimp$fields$ja {
	_QualityStrings$entity$odrimp$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_risk => 'Risk';
}

// Path: entity.taskrisk.fields
class _QualityStrings$entity$taskrisk$fields$en extends QualityStrings$entity$taskrisk$fields$ja {
	_QualityStrings$entity$taskrisk$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_mstr_task_id => 'Task';
	@override String get f_risk_id => 'Risk';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.trimp.fields
class _QualityStrings$entity$trimp$fields$en extends QualityStrings$entity$trimp$fields$ja {
	_QualityStrings$entity$trimp$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_risk => 'Risk';
}

// Path: entity.auditstd.fields
class _QualityStrings$entity$auditstd$fields$en extends QualityStrings$entity$auditstd$fields$ja {
	_QualityStrings$entity$auditstd$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Audit standard code';
	@override String get f_control_code => 'Control code';
	@override String get f_name => 'Audit standard name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_category => 'Category';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.auditstdimp.fields
class _QualityStrings$entity$auditstdimp$fields$en extends QualityStrings$entity$auditstdimp$fields$ja {
	_QualityStrings$entity$auditstdimp$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_check => 'Audit standard item';
}

// Path: entity.auditteam.fields
class _QualityStrings$entity$auditteam$fields$en extends QualityStrings$entity$auditteam$fields$ja {
	_QualityStrings$entity$auditteam$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Team name';
	@override String get f_trans_audit_id => 'Audit';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.auditor.fields
class _QualityStrings$entity$auditor$fields$en extends QualityStrings$entity$auditor$fields$ja {
	_QualityStrings$entity$auditor$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_audit_std_id => 'Audit standard';
	@override String get f_ccategory => 'Member category';
	@override String get f_staff_id => 'Audit member';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.audit.fields
class _QualityStrings$entity$audit$fields$en extends QualityStrings$entity$audit$fields$ja {
	_QualityStrings$entity$audit$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_audit_std_id => 'Audit standard';
	@override String get f_staff_id => 'Audit lead';
	@override String get f_scheduled_start_date => 'Planned start date';
	@override String get f_expected_end_date => 'Planned end date';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_info_department_id => 'Organization';
	@override String get f_mstr_stakeholder_id => 'Stakeholder';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.auditteamlink.fields
class _QualityStrings$entity$auditteamlink$fields$en extends QualityStrings$entity$auditteamlink$fields$ja {
	_QualityStrings$entity$auditteamlink$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_team => 'Audit team';
}

// Path: entity.auditmember.fields
class _QualityStrings$entity$auditmember$fields$en extends QualityStrings$entity$auditmember$fields$ja {
	_QualityStrings$entity$auditmember$fields$en._(QualityStringsEn root) : this._root = root, super.internal(root);

	final QualityStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_class => 'Participation category';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'auditRun.myTitle' => 'My audits',
			'auditRun.myHint' => 'Audits assigned to your team. In-progress audits come first, then by scheduled date.',
			'auditRun.sectionInProgress' => 'In progress',
			'auditRun.sectionPlanned' => 'Planned',
			'auditRun.sectionDone' => 'Done',
			'auditRun.empty' => 'No audits are assigned to you.',
			'auditRun.loadFailed' => 'Could not load the audits.',
			'auditRun.refresh' => 'Reload',
			'auditRun.statusInProgress' => 'In progress',
			'auditRun.statusPlanned' => 'Planned',
			'auditRun.statusDone' => 'Done',
			'auditRun.statusOverdue' => 'Overdue',
			'auditRun.team' => ({required Object name}) => 'Team: ${name}',
			'auditRun.scheduled' => ({required Object date}) => 'Scheduled: ${date}',
			'auditRun.performed' => ({required Object date}) => 'Performed: ${date}',
			'auditRun.progress' => ({required Object done, required Object total}) => 'Answered ${done} / ${total} items',
			'auditRun.runTitle' => 'Conduct audit',
			'auditRun.back' => 'Back',
			'auditRun.tabItems' => 'Items',
			'auditRun.tabComplaints' => 'Nonconformities',
			'auditRun.start' => 'Start audit',
			'auditRun.finish' => 'Finish audit',
			'auditRun.conclusion' => 'Conclusion',
			'auditRun.finishTitle' => 'Finish the audit',
			'auditRun.cancel' => 'Cancel',
			'auditRun.ok' => 'Finish',
			'auditRun.noItems' => 'There are no items. Starting the audit prepares the items of the audit standard.',
			'auditRun.itemValue' => 'Value',
			'auditRun.expected' => ({required Object expr}) => 'Criterion: ${expr}',
			'auditRun.yes' => 'Yes',
			'auditRun.no' => 'No',
			'auditRun.judgePass' => 'Pass',
			'auditRun.judgeFail' => 'Fail',
			'auditRun.itemFindings' => 'Findings (comment)',
			'auditRun.save' => 'Save',
			'auditRun.saved' => 'Saved.',
			'auditRun.saveFailed' => 'Could not save.',
			'auditRun.answered' => 'Answered',
			'auditRun.unanswered' => 'Not answered',
			'auditRun.complaintCount' => ({required Object n}) => '${n} nonconformities',
			'auditRun.enterComplaint' => 'Enter nonconformity',
			'auditRun.backToItem' => 'Back to items',
			'auditRun.complaintItem' => 'Item',
			'auditRun.complaintTitle' => 'Title',
			'auditRun.complaintDetails' => 'Details',
			'auditRun.register' => 'Register nonconformity',
			'auditRun.registered' => 'Registered.',
			'auditRun.registerFailed' => 'Could not register.',
			'auditRun.titleRequired' => 'Enter a title.',
			'auditRun.itemRequired' => 'Choose an item.',
			'auditRun.complaintsOfItem' => 'Nonconformities of this item',
			'auditRun.noComplaints' => 'No nonconformities for this item.',
			'auditRun.actionFailed' => 'The operation failed.',
			'auditNotice.summary' => ({required Object n}) => '${n} audits are coming up',
			'auditNotice.all' => 'My audits',
			'auditNotice.overdue' => 'Overdue',
			'auditNotice.inProgress' => 'In progress',
			'auditNotice.today' => 'Today',
			'auditNotice.inDays' => ({required Object n}) => 'In ${n} days',
			'complaintRegister.title' => 'Register a nonconformity',
			'complaintRegister.hint' => 'Choose the target, then enter a title and details. The target decides the kind (equipment, process, work record, receipt, lot, order, stakeholder).',
			'complaintRegister.kind' => 'Target kind',
			'complaintRegister.kindEquipment' => 'Equipment (found in an equipment inspection)',
			'complaintRegister.kindProcess' => 'Process (found in a process)',
			'complaintRegister.kindWork' => 'Work record (found in a work record)',
			'complaintRegister.kindPurchaseRec' => 'Receipt (found at receiving)',
			'complaintRegister.kindVisiter' => 'Lot (found in a shelf move)',
			'complaintRegister.kindOrder' => 'Order (customer claim)',
			'complaintRegister.kindStakeholder' => 'Stakeholder (stakeholder complaint)',
			'complaintRegister.target' => 'Target',
			'complaintRegister.targetNone' => 'Please choose',
			'complaintRegister.targetBySymbol' => 'Target symbol or ID',
			'complaintRegister.pick' => 'Choose',
			'complaintRegister.titleLabel' => 'Title',
			'complaintRegister.details' => 'Details',
			'complaintRegister.occurredAt' => 'Found on',
			'complaintRegister.now' => 'Time of registration',
			'complaintRegister.pickDate' => 'Pick a date',
			'complaintRegister.quantity' => 'Quantity (default 1)',
			'complaintRegister.quantityRequired' => 'Quantity (required)',
			'complaintRegister.register' => 'Register',
			'complaintRegister.registered' => 'Registered.',
			'complaintRegister.failed' => 'Could not register.',
			'complaintRegister.errorTitle' => 'Enter a title.',
			'complaintRegister.errorTarget' => 'Choose a target.',
			'complaintRegister.errorQuantity' => 'Enter a number greater than 0.',
			'auditPlan.title' => 'Register audit plan',
			'auditPlan.back' => 'Back',
			'auditPlan.hint' => 'Enter the audit title, standard, and teams with schedules. Each row becomes one team (with auditors) and one scheduled audit.',
			'auditPlan.loadFailed' => 'Could not load the options.',
			'auditPlan.fieldTitle' => 'Audit title',
			'auditPlan.fieldDetails' => 'Details',
			'auditPlan.fieldStandard' => 'Audit standard',
			'auditPlan.fieldDepartment' => 'Target department (optional)',
			'auditPlan.fieldStakeholder' => 'Target stakeholder (optional)',
			'auditPlan.notSelected' => 'Not specified',
			'auditPlan.lines' => 'Teams and schedules',
			'auditPlan.addLine' => 'Add row',
			'auditPlan.removeLine' => 'Remove this row',
			'auditPlan.line' => ({required Object n}) => 'Team ${n}',
			'auditPlan.teamName' => 'Team name',
			'auditPlan.auditors' => 'Auditors',
			'auditPlan.pickAuditors' => 'Choose auditors',
			'auditPlan.noAuditors' => 'No auditors chosen',
			'auditPlan.scheduledAt' => 'Scheduled at',
			'auditPlan.expectedEndAt' => 'Expected end',
			'auditPlan.pickDate' => 'Choose',
			'auditPlan.clearDate' => 'Clear',
			'auditPlan.notSet' => 'Not set',
			'auditPlan.register' => 'Register',
			'auditPlan.registered' => 'Registered.',
			'auditPlan.registerFailed' => 'Could not register.',
			'auditPlan.goMyAudits' => 'Go to my audits',
			'auditPlan.errTitle' => 'Enter a title.',
			'auditPlan.errStandard' => 'Choose an audit standard.',
			'auditPlan.errLines' => 'Add at least one row.',
			'auditPlan.errTeam' => 'Enter a team name.',
			'auditPlan.errAuditor' => 'Choose auditors.',
			'auditPlan.errPeriod' => 'The expected end is before the schedule.',
			'auditPlan.pickerTitle' => 'Choose auditors',
			'auditPlan.ok' => 'OK',
			'auditPlan.cancel' => 'Cancel',
			'menu.group' => 'Quality control',
			'entity.complaint.title' => 'Nonconformities',
			'entity.complaint.fields.f_occurent_at' => 'Occurred on',
			'entity.complaint.fields.f_title' => 'Subject',
			'entity.complaint.fields.f_detail' => 'Details',
			'entity.complaint.fields.f_reporter_staff_id' => 'Reporter',
			'entity.complaint.fields.f_remarks' => 'Remarks',
			'entity.compreceive.title' => 'Nonconformity report receipts',
			'entity.compreceive.fields.f_receive_at' => 'Received on',
			'entity.compreceive.fields.f_receive_staff_id' => 'Received by',
			'entity.compreceive.fields.f_detail' => 'Details',
			'entity.compreceive.fields.f_remarks' => 'Remarks',
			'entity.compstake.title' => 'Stakeholder complaints',
			'entity.compstake.fields.f_stakeholder_id' => 'Stakeholder',
			'entity.compstake.fields.f_remarks' => 'Remarks',
			'entity.compfile.title' => 'Nonconformity report files',
			'entity.compfile.fields.f_file' => 'File',
			'entity.compfile.fields.f_date' => 'Registered on',
			'entity.orderrisk.title' => 'Order risks',
			'entity.orderrisk.fields.f_trans_order_id' => 'Order',
			'entity.orderrisk.fields.f_trans_risk_id' => 'Risk',
			'entity.orderrisk.fields.f_remarks' => 'Remarks',
			'entity.orderdetailrisk.title' => 'Sales order line risks',
			'entity.orderdetailrisk.fields.f_trans_order_detail_id' => 'Sales order line',
			'entity.orderdetailrisk.fields.f_risk_id' => 'Risk',
			'entity.orderdetailrisk.fields.f_remarks' => 'Remarks',
			'entity.odrimp.title' => 'Import: risks',
			'entity.odrimp.fields.f_risk' => 'Risk',
			'entity.taskrisk.title' => 'Task risks',
			'entity.taskrisk.fields.f_mstr_task_id' => 'Task',
			'entity.taskrisk.fields.f_risk_id' => 'Risk',
			'entity.taskrisk.fields.f_remarks' => 'Remarks',
			'entity.trimp.title' => 'Import: risks',
			'entity.trimp.fields.f_risk' => 'Risk',
			'entity.auditstd.title' => 'Audit standards',
			'entity.auditstd.fields.f_code' => 'Audit standard code',
			'entity.auditstd.fields.f_control_code' => 'Control code',
			'entity.auditstd.fields.f_name' => 'Audit standard name',
			'entity.auditstd.fields.f_pronunciation' => 'Reading',
			'entity.auditstd.fields.f_nickname' => 'Abbreviation',
			'entity.auditstd.fields.f_category' => 'Category',
			'entity.auditstd.fields.f_detail' => 'Details',
			'entity.auditstd.fields.f_remarks' => 'Remarks',
			'entity.auditstdimp.title' => 'Import: audit standard items',
			'entity.auditstdimp.fields.f_check' => 'Audit standard item',
			'entity.auditteam.title' => 'Audit teams',
			'entity.auditteam.fields.f_name' => 'Team name',
			'entity.auditteam.fields.f_trans_audit_id' => 'Audit',
			'entity.auditteam.fields.f_remarks' => 'Remarks',
			'entity.auditor.title' => 'Auditors',
			'entity.auditor.fields.f_audit_std_id' => 'Audit standard',
			'entity.auditor.fields.f_ccategory' => 'Member category',
			'entity.auditor.fields.f_staff_id' => 'Audit member',
			'entity.auditor.fields.f_remarks' => 'Remarks',
			'entity.audit.title' => 'Audits',
			'entity.audit.fields.f_audit_std_id' => 'Audit standard',
			'entity.audit.fields.f_staff_id' => 'Audit lead',
			'entity.audit.fields.f_scheduled_start_date' => 'Planned start date',
			'entity.audit.fields.f_expected_end_date' => 'Planned end date',
			'entity.audit.fields.f_title' => 'Subject',
			'entity.audit.fields.f_detail' => 'Details',
			'entity.audit.fields.f_info_department_id' => 'Organization',
			'entity.audit.fields.f_mstr_stakeholder_id' => 'Stakeholder',
			'entity.audit.fields.f_remarks' => 'Remarks',
			'entity.auditteamlink.title' => 'Audit teams',
			'entity.auditteamlink.fields.f_team' => 'Audit team',
			'entity.auditmember.title' => 'Audit participants',
			'entity.auditmember.fields.f_class' => 'Participation category',
			'entity.auditmember.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
