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
class ResourceStringsEn extends ResourceStrings with BaseTranslations<ResourceLocale, ResourceStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ResourceLocale.build] is preferred.
	ResourceStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ResourceLocale, ResourceStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ResourceLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ResourceLocale, ResourceStrings> _meta;
	@override TranslationMetadata<ResourceLocale, ResourceStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ResourceStringsEn _root = this; // ignore: unused_field

	@override 
	ResourceStringsEn $copyWith({TranslationMetadata<ResourceLocale, ResourceStrings>? meta}) => ResourceStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _ResourceStrings$calendar$en calendar = _ResourceStrings$calendar$en._(_root);
	@override late final _ResourceStrings$menu$en menu = _ResourceStrings$menu$en._(_root);
	@override late final _ResourceStrings$entity$en entity = _ResourceStrings$entity$en._(_root);
}

// Path: calendar
class _ResourceStrings$calendar$en extends ResourceStrings$calendar$ja {
	_ResourceStrings$calendar$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get equipment => 'Equipment';
	@override String get allEquipment => 'All (every equipment)';
	@override String get holiday => 'Holiday';
	@override String get startTime => 'Start time';
	@override String get workInterval => 'Working hours';
	@override String get remarks => 'Remarks';
	@override String get noSelection => 'Select a day to change it here. Drag (or Shift + click) to select a range.';
	@override String selectedOne({required Object date}) => 'Selected: ${date}';
	@override String selectedRange({required Object from, required Object to, required Object count}) => 'Selected: ${from} - ${to} (${count} days)';
	@override String get apply => 'Apply to selected days';
	@override String get reset => 'Reset to default';
	@override String get importHolidays => 'Import public holidays';
	@override String get importHint => 'Registers the public holidays of the shown year as holidays (registered days are kept).';
	@override String importDone({required Object count}) => 'Registered ${count} holidays';
	@override String get saved => 'Applied';
	@override String failed({required Object count}) => 'Could not save ${count} days';
	@override String get invalidTime => 'Enter the time as HH:MM (e.g. 08:30)';
	@override String get legend => 'Holidays are red. Choose an equipment to see its special days only.';
	@override String get defaultNote => 'Days without a record count as 8 hours on weekdays and 0 on weekends.';
}

// Path: menu
class _ResourceStrings$menu$en extends ResourceStrings$menu$ja {
	_ResourceStrings$menu$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Resources';
}

// Path: entity
class _ResourceStrings$entity$en extends ResourceStrings$entity$ja {
	_ResourceStrings$entity$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _ResourceStrings$entity$capability$en capability = _ResourceStrings$entity$capability$en._(_root);
	@override late final _ResourceStrings$entity$license$en license = _ResourceStrings$entity$license$en._(_root);
	@override late final _ResourceStrings$entity$location$en location = _ResourceStrings$entity$location$en._(_root);
	@override late final _ResourceStrings$entity$equipmentcategory$en equipmentcategory = _ResourceStrings$entity$equipmentcategory$en._(_root);
	@override late final _ResourceStrings$entity$equipment$en equipment = _ResourceStrings$entity$equipment$en._(_root);
	@override late final _ResourceStrings$entity$inspectionkind$en inspectionkind = _ResourceStrings$entity$inspectionkind$en._(_root);
	@override late final _ResourceStrings$entity$inspectionitem$en inspectionitem = _ResourceStrings$entity$inspectionitem$en._(_root);
	@override late final _ResourceStrings$entity$inspectionformula$en inspectionformula = _ResourceStrings$entity$inspectionformula$en._(_root);
	@override late final _ResourceStrings$entity$inspectionoperation$en inspectionoperation = _ResourceStrings$entity$inspectionoperation$en._(_root);
	@override late final _ResourceStrings$entity$operationline$en operationline = _ResourceStrings$entity$operationline$en._(_root);
	@override late final _ResourceStrings$entity$inspectionschedule$en inspectionschedule = _ResourceStrings$entity$inspectionschedule$en._(_root);
	@override late final _ResourceStrings$entity$scheduledetail$en scheduledetail = _ResourceStrings$entity$scheduledetail$en._(_root);
	@override late final _ResourceStrings$entity$inspectionresult$en inspectionresult = _ResourceStrings$entity$inspectionresult$en._(_root);
	@override late final _ResourceStrings$entity$inspectionfile$en inspectionfile = _ResourceStrings$entity$inspectionfile$en._(_root);
	@override late final _ResourceStrings$entity$workcalendar$en workcalendar = _ResourceStrings$entity$workcalendar$en._(_root);
}

// Path: entity.capability
class _ResourceStrings$entity$capability$en extends ResourceStrings$entity$capability$ja {
	_ResourceStrings$entity$capability$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Capabilities';
	@override late final _ResourceStrings$entity$capability$fields$en fields = _ResourceStrings$entity$capability$fields$en._(_root);
	@override late final _ResourceStrings$entity$capability$reverse$en reverse = _ResourceStrings$entity$capability$reverse$en._(_root);
}

// Path: entity.license
class _ResourceStrings$entity$license$en extends ResourceStrings$entity$license$ja {
	_ResourceStrings$entity$license$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Licenses';
	@override late final _ResourceStrings$entity$license$fields$en fields = _ResourceStrings$entity$license$fields$en._(_root);
	@override late final _ResourceStrings$entity$license$reverse$en reverse = _ResourceStrings$entity$license$reverse$en._(_root);
}

// Path: entity.location
class _ResourceStrings$entity$location$en extends ResourceStrings$entity$location$ja {
	_ResourceStrings$entity$location$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Locations';
	@override late final _ResourceStrings$entity$location$fields$en fields = _ResourceStrings$entity$location$fields$en._(_root);
	@override late final _ResourceStrings$entity$location$reverse$en reverse = _ResourceStrings$entity$location$reverse$en._(_root);
}

// Path: entity.equipmentcategory
class _ResourceStrings$entity$equipmentcategory$en extends ResourceStrings$entity$equipmentcategory$ja {
	_ResourceStrings$entity$equipmentcategory$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Equipment categories';
	@override late final _ResourceStrings$entity$equipmentcategory$fields$en fields = _ResourceStrings$entity$equipmentcategory$fields$en._(_root);
}

// Path: entity.equipment
class _ResourceStrings$entity$equipment$en extends ResourceStrings$entity$equipment$ja {
	_ResourceStrings$entity$equipment$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Equipment';
	@override late final _ResourceStrings$entity$equipment$fields$en fields = _ResourceStrings$entity$equipment$fields$en._(_root);
	@override late final _ResourceStrings$entity$equipment$reverse$en reverse = _ResourceStrings$entity$equipment$reverse$en._(_root);
}

// Path: entity.inspectionkind
class _ResourceStrings$entity$inspectionkind$en extends ResourceStrings$entity$inspectionkind$ja {
	_ResourceStrings$entity$inspectionkind$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inspection and maintenance kinds';
	@override late final _ResourceStrings$entity$inspectionkind$fields$en fields = _ResourceStrings$entity$inspectionkind$fields$en._(_root);
}

// Path: entity.inspectionitem
class _ResourceStrings$entity$inspectionitem$en extends ResourceStrings$entity$inspectionitem$ja {
	_ResourceStrings$entity$inspectionitem$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inspection and maintenance items';
	@override late final _ResourceStrings$entity$inspectionitem$fields$en fields = _ResourceStrings$entity$inspectionitem$fields$en._(_root);
}

// Path: entity.inspectionformula
class _ResourceStrings$entity$inspectionformula$en extends ResourceStrings$entity$inspectionformula$ja {
	_ResourceStrings$entity$inspectionformula$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inspection formulas';
	@override late final _ResourceStrings$entity$inspectionformula$fields$en fields = _ResourceStrings$entity$inspectionformula$fields$en._(_root);
}

// Path: entity.inspectionoperation
class _ResourceStrings$entity$inspectionoperation$en extends ResourceStrings$entity$inspectionoperation$ja {
	_ResourceStrings$entity$inspectionoperation$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Equipment inspection and maintenance operations';
	@override late final _ResourceStrings$entity$inspectionoperation$fields$en fields = _ResourceStrings$entity$inspectionoperation$fields$en._(_root);
}

// Path: entity.operationline
class _ResourceStrings$entity$operationline$en extends ResourceStrings$entity$operationline$ja {
	_ResourceStrings$entity$operationline$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Operation lines';
	@override late final _ResourceStrings$entity$operationline$fields$en fields = _ResourceStrings$entity$operationline$fields$en._(_root);
}

// Path: entity.inspectionschedule
class _ResourceStrings$entity$inspectionschedule$en extends ResourceStrings$entity$inspectionschedule$ja {
	_ResourceStrings$entity$inspectionschedule$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inspection schedules';
	@override late final _ResourceStrings$entity$inspectionschedule$fields$en fields = _ResourceStrings$entity$inspectionschedule$fields$en._(_root);
}

// Path: entity.scheduledetail
class _ResourceStrings$entity$scheduledetail$en extends ResourceStrings$entity$scheduledetail$ja {
	_ResourceStrings$entity$scheduledetail$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schedule lines';
	@override late final _ResourceStrings$entity$scheduledetail$fields$en fields = _ResourceStrings$entity$scheduledetail$fields$en._(_root);
}

// Path: entity.inspectionresult
class _ResourceStrings$entity$inspectionresult$en extends ResourceStrings$entity$inspectionresult$ja {
	_ResourceStrings$entity$inspectionresult$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inspection results';
	@override late final _ResourceStrings$entity$inspectionresult$fields$en fields = _ResourceStrings$entity$inspectionresult$fields$en._(_root);
}

// Path: entity.inspectionfile
class _ResourceStrings$entity$inspectionfile$en extends ResourceStrings$entity$inspectionfile$ja {
	_ResourceStrings$entity$inspectionfile$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Files';
	@override late final _ResourceStrings$entity$inspectionfile$fields$en fields = _ResourceStrings$entity$inspectionfile$fields$en._(_root);
}

// Path: entity.workcalendar
class _ResourceStrings$entity$workcalendar$en extends ResourceStrings$entity$workcalendar$ja {
	_ResourceStrings$entity$workcalendar$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Work calendar';
	@override late final _ResourceStrings$entity$workcalendar$fields$en fields = _ResourceStrings$entity$workcalendar$fields$en._(_root);
}

// Path: entity.capability.fields
class _ResourceStrings$entity$capability$fields$en extends ResourceStrings$entity$capability$fields$ja {
	_ResourceStrings$entity$capability$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Capability code';
	@override String get f_name => 'Capability name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_detail => 'Details';
	@override String get f_reference_value => 'Reference';
	@override String get f_max => 'Maximum';
	@override String get f_min => 'Minimum';
	@override String get f_step => 'Step';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.capability.reverse
class _ResourceStrings$entity$capability$reverse$en extends ResourceStrings$entity$capability$reverse$ja {
	_ResourceStrings$entity$capability$reverse$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get staffcapability => 'Holders';
}

// Path: entity.license.fields
class _ResourceStrings$entity$license$fields$en extends ResourceStrings$entity$license$fields$ja {
	_ResourceStrings$entity$license$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'License code';
	@override String get f_name => 'License name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_detail => 'Details';
	@override String get f_public_license => 'Public';
	@override String get f_customer_license => 'Customer';
	@override String get f_organization_license => 'Internal';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.license.reverse
class _ResourceStrings$entity$license$reverse$en extends ResourceStrings$entity$license$reverse$ja {
	_ResourceStrings$entity$license$reverse$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get stafflicense => 'Holders';
}

// Path: entity.location.fields
class _ResourceStrings$entity$location$fields$en extends ResourceStrings$entity$location$fields$ja {
	_ResourceStrings$entity$location$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Location code';
	@override String get f_control_code => 'Control code';
	@override String get f_name => 'Location name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_use => 'Use';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.location.reverse
class _ResourceStrings$entity$location$reverse$en extends ResourceStrings$entity$location$reverse$ja {
	_ResourceStrings$entity$location$reverse$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get equipment => 'Equipment';
}

// Path: entity.equipmentcategory.fields
class _ResourceStrings$entity$equipmentcategory$fields$en extends ResourceStrings$entity$equipmentcategory$fields$ja {
	_ResourceStrings$entity$equipmentcategory$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Category code';
	@override String get f_name => 'Category name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_start => 'Effective from';
	@override String get f_end => 'Effective until';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.equipment.fields
class _ResourceStrings$entity$equipment$fields$en extends ResourceStrings$entity$equipment$fields$ja {
	_ResourceStrings$entity$equipment$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Equipment code';
	@override String get f_control_code => 'Control code';
	@override String get f_label_code => 'Display code';
	@override String get f_item => 'Item (equipment name)';
	@override String get f_category => 'Equipment category';
	@override String get f_location => 'Location';
}

// Path: entity.equipment.reverse
class _ResourceStrings$entity$equipment$reverse$en extends ResourceStrings$entity$equipment$reverse$ja {
	_ResourceStrings$entity$equipment$reverse$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get inspectionoperation => 'Equipment inspection and maintenance operations';
}

// Path: entity.inspectionkind.fields
class _ResourceStrings$entity$inspectionkind$fields$en extends ResourceStrings$entity$inspectionkind$fields$ja {
	_ResourceStrings$entity$inspectionkind$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Kind code';
	@override String get f_name => 'Kind name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_cycle => 'Approximate cycle';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.inspectionitem.fields
class _ResourceStrings$entity$inspectionitem$fields$en extends ResourceStrings$entity$inspectionitem$fields$ja {
	_ResourceStrings$entity$inspectionitem$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Inspection code';
	@override String get f_name => 'Inspection name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_kind => 'Inspection kind';
}

// Path: entity.inspectionformula.fields
class _ResourceStrings$entity$inspectionformula$fields$en extends ResourceStrings$entity$inspectionformula$fields$ja {
	_ResourceStrings$entity$inspectionformula$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_expr => 'Expression';
}

// Path: entity.inspectionoperation.fields
class _ResourceStrings$entity$inspectionoperation$fields$en extends ResourceStrings$entity$inspectionoperation$fields$ja {
	_ResourceStrings$entity$inspectionoperation$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Operation code';
	@override String get f_name => 'Operation name';
	@override String get f_equipment => 'Equipment';
	@override String get f_kind => 'Inspection and maintenance kind';
}

// Path: entity.operationline.fields
class _ResourceStrings$entity$operationline$fields$en extends ResourceStrings$entity$operationline$fields$ja {
	_ResourceStrings$entity$operationline$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Inspection and maintenance';
	@override String get f_seq => 'Order';
	@override String get f_role => 'Responsible position';
}

// Path: entity.inspectionschedule.fields
class _ResourceStrings$entity$inspectionschedule$fields$en extends ResourceStrings$entity$inspectionschedule$fields$ja {
	_ResourceStrings$entity$inspectionschedule$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Control code';
	@override String get f_name => 'Schedule name';
	@override String get f_operation => 'Inspection and maintenance operation';
}

// Path: entity.scheduledetail.fields
class _ResourceStrings$entity$scheduledetail$fields$en extends ResourceStrings$entity$scheduledetail$fields$ja {
	_ResourceStrings$entity$scheduledetail$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Inspection and maintenance item';
	@override String get f_start => 'Planned start date';
	@override String get f_end => 'Planned end date';
	@override String get f_staff => 'Staff';
}

// Path: entity.inspectionresult.fields
class _ResourceStrings$entity$inspectionresult$fields$en extends ResourceStrings$entity$inspectionresult$fields$ja {
	_ResourceStrings$entity$inspectionresult$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_date => 'Performed on';
	@override String get f_staff => 'Performed by';
	@override String get f_result => 'Result';
	@override String get f_value => 'Measured value / findings';
	@override String get f_note => 'Remarks';
}

// Path: entity.inspectionfile.fields
class _ResourceStrings$entity$inspectionfile$fields$en extends ResourceStrings$entity$inspectionfile$fields$ja {
	_ResourceStrings$entity$inspectionfile$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_file => 'File';
	@override String get f_regdate => 'Registered on';
}

// Path: entity.workcalendar.fields
class _ResourceStrings$entity$workcalendar$fields$en extends ResourceStrings$entity$workcalendar$fields$ja {
	_ResourceStrings$entity$workcalendar$fields$en._(ResourceStringsEn root) : this._root = root, super.internal(root);

	final ResourceStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_work_date => 'Work date';
	@override String get f_equipment => 'Equipment';
	@override String get f_start_time => 'Start time';
	@override String get f_work_interval => 'Working time (HH:MM)';
	@override String get f_holiday => 'Holiday';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ResourceStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'calendar.equipment' => 'Equipment',
			'calendar.allEquipment' => 'All (every equipment)',
			'calendar.holiday' => 'Holiday',
			'calendar.startTime' => 'Start time',
			'calendar.workInterval' => 'Working hours',
			'calendar.remarks' => 'Remarks',
			'calendar.noSelection' => 'Select a day to change it here. Drag (or Shift + click) to select a range.',
			'calendar.selectedOne' => ({required Object date}) => 'Selected: ${date}',
			'calendar.selectedRange' => ({required Object from, required Object to, required Object count}) => 'Selected: ${from} - ${to} (${count} days)',
			'calendar.apply' => 'Apply to selected days',
			'calendar.reset' => 'Reset to default',
			'calendar.importHolidays' => 'Import public holidays',
			'calendar.importHint' => 'Registers the public holidays of the shown year as holidays (registered days are kept).',
			'calendar.importDone' => ({required Object count}) => 'Registered ${count} holidays',
			'calendar.saved' => 'Applied',
			'calendar.failed' => ({required Object count}) => 'Could not save ${count} days',
			'calendar.invalidTime' => 'Enter the time as HH:MM (e.g. 08:30)',
			'calendar.legend' => 'Holidays are red. Choose an equipment to see its special days only.',
			'calendar.defaultNote' => 'Days without a record count as 8 hours on weekdays and 0 on weekends.',
			'menu.group' => 'Resources',
			'entity.capability.title' => 'Capabilities',
			'entity.capability.fields.f_code' => 'Capability code',
			'entity.capability.fields.f_name' => 'Capability name',
			'entity.capability.fields.f_pronunciation' => 'Reading',
			'entity.capability.fields.f_detail' => 'Details',
			'entity.capability.fields.f_reference_value' => 'Reference',
			'entity.capability.fields.f_max' => 'Maximum',
			'entity.capability.fields.f_min' => 'Minimum',
			'entity.capability.fields.f_step' => 'Step',
			'entity.capability.fields.f_remarks' => 'Remarks',
			'entity.capability.reverse.staffcapability' => 'Holders',
			'entity.license.title' => 'Licenses',
			'entity.license.fields.f_code' => 'License code',
			'entity.license.fields.f_name' => 'License name',
			'entity.license.fields.f_pronunciation' => 'Reading',
			'entity.license.fields.f_detail' => 'Details',
			'entity.license.fields.f_public_license' => 'Public',
			'entity.license.fields.f_customer_license' => 'Customer',
			'entity.license.fields.f_organization_license' => 'Internal',
			'entity.license.fields.f_remarks' => 'Remarks',
			'entity.license.reverse.stafflicense' => 'Holders',
			'entity.location.title' => 'Locations',
			'entity.location.fields.f_code' => 'Location code',
			'entity.location.fields.f_control_code' => 'Control code',
			'entity.location.fields.f_name' => 'Location name',
			'entity.location.fields.f_pronunciation' => 'Reading',
			'entity.location.fields.f_use' => 'Use',
			'entity.location.fields.f_remarks' => 'Remarks',
			'entity.location.reverse.equipment' => 'Equipment',
			'entity.equipmentcategory.title' => 'Equipment categories',
			'entity.equipmentcategory.fields.f_code' => 'Category code',
			'entity.equipmentcategory.fields.f_name' => 'Category name',
			'entity.equipmentcategory.fields.f_pronunciation' => 'Reading',
			'entity.equipmentcategory.fields.f_start' => 'Effective from',
			'entity.equipmentcategory.fields.f_end' => 'Effective until',
			'entity.equipmentcategory.fields.f_remarks' => 'Remarks',
			'entity.equipment.title' => 'Equipment',
			'entity.equipment.fields.f_code' => 'Equipment code',
			'entity.equipment.fields.f_control_code' => 'Control code',
			'entity.equipment.fields.f_label_code' => 'Display code',
			'entity.equipment.fields.f_item' => 'Item (equipment name)',
			'entity.equipment.fields.f_category' => 'Equipment category',
			'entity.equipment.fields.f_location' => 'Location',
			'entity.equipment.reverse.inspectionoperation' => 'Equipment inspection and maintenance operations',
			'entity.inspectionkind.title' => 'Inspection and maintenance kinds',
			'entity.inspectionkind.fields.f_code' => 'Kind code',
			'entity.inspectionkind.fields.f_name' => 'Kind name',
			'entity.inspectionkind.fields.f_pronunciation' => 'Reading',
			'entity.inspectionkind.fields.f_cycle' => 'Approximate cycle',
			'entity.inspectionkind.fields.f_remarks' => 'Remarks',
			'entity.inspectionitem.title' => 'Inspection and maintenance items',
			'entity.inspectionitem.fields.f_code' => 'Inspection code',
			'entity.inspectionitem.fields.f_name' => 'Inspection name',
			'entity.inspectionitem.fields.f_pronunciation' => 'Reading',
			'entity.inspectionitem.fields.f_kind' => 'Inspection kind',
			'entity.inspectionformula.title' => 'Inspection formulas',
			'entity.inspectionformula.fields.f_expr' => 'Expression',
			'entity.inspectionoperation.title' => 'Equipment inspection and maintenance operations',
			'entity.inspectionoperation.fields.f_code' => 'Operation code',
			'entity.inspectionoperation.fields.f_name' => 'Operation name',
			'entity.inspectionoperation.fields.f_equipment' => 'Equipment',
			'entity.inspectionoperation.fields.f_kind' => 'Inspection and maintenance kind',
			'entity.operationline.title' => 'Operation lines',
			'entity.operationline.fields.f_item' => 'Inspection and maintenance',
			'entity.operationline.fields.f_seq' => 'Order',
			'entity.operationline.fields.f_role' => 'Responsible position',
			'entity.inspectionschedule.title' => 'Inspection schedules',
			'entity.inspectionschedule.fields.f_code' => 'Control code',
			'entity.inspectionschedule.fields.f_name' => 'Schedule name',
			'entity.inspectionschedule.fields.f_operation' => 'Inspection and maintenance operation',
			'entity.scheduledetail.title' => 'Schedule lines',
			'entity.scheduledetail.fields.f_item' => 'Inspection and maintenance item',
			'entity.scheduledetail.fields.f_start' => 'Planned start date',
			'entity.scheduledetail.fields.f_end' => 'Planned end date',
			'entity.scheduledetail.fields.f_staff' => 'Staff',
			'entity.inspectionresult.title' => 'Inspection results',
			'entity.inspectionresult.fields.f_date' => 'Performed on',
			'entity.inspectionresult.fields.f_staff' => 'Performed by',
			'entity.inspectionresult.fields.f_result' => 'Result',
			'entity.inspectionresult.fields.f_value' => 'Measured value / findings',
			'entity.inspectionresult.fields.f_note' => 'Remarks',
			'entity.inspectionfile.title' => 'Files',
			'entity.inspectionfile.fields.f_file' => 'File',
			'entity.inspectionfile.fields.f_regdate' => 'Registered on',
			'entity.workcalendar.title' => 'Work calendar',
			'entity.workcalendar.fields.f_work_date' => 'Work date',
			'entity.workcalendar.fields.f_equipment' => 'Equipment',
			'entity.workcalendar.fields.f_start_time' => 'Start time',
			'entity.workcalendar.fields.f_work_interval' => 'Working time (HH:MM)',
			'entity.workcalendar.fields.f_holiday' => 'Holiday',
			'entity.workcalendar.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
