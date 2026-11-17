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
class QualityCommonStringsEn extends QualityCommonStrings with BaseTranslations<QualityCommonLocale, QualityCommonStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityCommonLocale.build] is preferred.
	QualityCommonStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityCommonLocale, QualityCommonStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityCommonLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<QualityCommonLocale, QualityCommonStrings> _meta;
	@override TranslationMetadata<QualityCommonLocale, QualityCommonStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final QualityCommonStringsEn _root = this; // ignore: unused_field

	@override 
	QualityCommonStringsEn $copyWith({TranslationMetadata<QualityCommonLocale, QualityCommonStrings>? meta}) => QualityCommonStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _QualityCommonStrings$menu$en menu = _QualityCommonStrings$menu$en._(_root);
	@override late final _QualityCommonStrings$entity$en entity = _QualityCommonStrings$entity$en._(_root);
}

// Path: menu
class _QualityCommonStrings$menu$en extends QualityCommonStrings$menu$ja {
	_QualityCommonStrings$menu$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Quality common';
}

// Path: entity
class _QualityCommonStrings$entity$en extends QualityCommonStrings$entity$ja {
	_QualityCommonStrings$entity$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _QualityCommonStrings$entity$disposal$en disposal = _QualityCommonStrings$entity$disposal$en._(_root);
	@override late final _QualityCommonStrings$entity$recur$en recur = _QualityCommonStrings$entity$recur$en._(_root);
	@override late final _QualityCommonStrings$entity$obsdisp$en obsdisp = _QualityCommonStrings$entity$obsdisp$en._(_root);
	@override late final _QualityCommonStrings$entity$obsprev$en obsprev = _QualityCommonStrings$entity$obsprev$en._(_root);
	@override late final _QualityCommonStrings$entity$risk$en risk = _QualityCommonStrings$entity$risk$en._(_root);
	@override late final _QualityCommonStrings$entity$prevention$en prevention = _QualityCommonStrings$entity$prevention$en._(_root);
	@override late final _QualityCommonStrings$entity$preventiondetail$en preventiondetail = _QualityCommonStrings$entity$preventiondetail$en._(_root);
	@override late final _QualityCommonStrings$entity$auditstdcheck$en auditstdcheck = _QualityCommonStrings$entity$auditstdcheck$en._(_root);
}

// Path: entity.disposal
class _QualityCommonStrings$entity$disposal$en extends QualityCommonStrings$entity$disposal$ja {
	_QualityCommonStrings$entity$disposal$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nonconformity dispositions';
	@override late final _QualityCommonStrings$entity$disposal$fields$en fields = _QualityCommonStrings$entity$disposal$fields$en._(_root);
}

// Path: entity.recur
class _QualityCommonStrings$entity$recur$en extends QualityCommonStrings$entity$recur$ja {
	_QualityCommonStrings$entity$recur$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recurrence prevention actions';
	@override late final _QualityCommonStrings$entity$recur$fields$en fields = _QualityCommonStrings$entity$recur$fields$en._(_root);
}

// Path: entity.obsdisp
class _QualityCommonStrings$entity$obsdisp$en extends QualityCommonStrings$entity$obsdisp$ja {
	_QualityCommonStrings$entity$obsdisp$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Disposition monitoring';
	@override late final _QualityCommonStrings$entity$obsdisp$fields$en fields = _QualityCommonStrings$entity$obsdisp$fields$en._(_root);
}

// Path: entity.obsprev
class _QualityCommonStrings$entity$obsprev$en extends QualityCommonStrings$entity$obsprev$ja {
	_QualityCommonStrings$entity$obsprev$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recurrence prevention monitoring';
	@override late final _QualityCommonStrings$entity$obsprev$fields$en fields = _QualityCommonStrings$entity$obsprev$fields$en._(_root);
}

// Path: entity.risk
class _QualityCommonStrings$entity$risk$en extends QualityCommonStrings$entity$risk$ja {
	_QualityCommonStrings$entity$risk$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Risks';
	@override late final _QualityCommonStrings$entity$risk$fields$en fields = _QualityCommonStrings$entity$risk$fields$en._(_root);
}

// Path: entity.prevention
class _QualityCommonStrings$entity$prevention$en extends QualityCommonStrings$entity$prevention$ja {
	_QualityCommonStrings$entity$prevention$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preventive measures';
	@override late final _QualityCommonStrings$entity$prevention$fields$en fields = _QualityCommonStrings$entity$prevention$fields$en._(_root);
}

// Path: entity.preventiondetail
class _QualityCommonStrings$entity$preventiondetail$en extends QualityCommonStrings$entity$preventiondetail$ja {
	_QualityCommonStrings$entity$preventiondetail$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preventive actions';
	@override late final _QualityCommonStrings$entity$preventiondetail$fields$en fields = _QualityCommonStrings$entity$preventiondetail$fields$en._(_root);
}

// Path: entity.auditstdcheck
class _QualityCommonStrings$entity$auditstdcheck$en extends QualityCommonStrings$entity$auditstdcheck$ja {
	_QualityCommonStrings$entity$auditstdcheck$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audit standard items';
	@override late final _QualityCommonStrings$entity$auditstdcheck$fields$en fields = _QualityCommonStrings$entity$auditstdcheck$fields$en._(_root);
}

// Path: entity.disposal.fields
class _QualityCommonStrings$entity$disposal$fields$en extends QualityCommonStrings$entity$disposal$fields$ja {
	_QualityCommonStrings$entity$disposal$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_complaint_id => 'Nonconformity';
	@override String get f_disposal_at => 'Disposed on';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_approval_at => 'Approved on';
	@override String get f_department_id => 'Responsible organization';
	@override String get f_operation_staff_id => 'Responsible staff';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.recur.fields
class _QualityCommonStrings$entity$recur$fields$en extends QualityCommonStrings$entity$recur$fields$ja {
	_QualityCommonStrings$entity$recur$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_disposal_id => 'Disposition';
	@override String get f_occurent_at => 'Occurred on';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_operation_staff_id => 'Responsible staff';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.obsdisp.fields
class _QualityCommonStrings$entity$obsdisp$fields$en extends QualityCommonStrings$entity$obsdisp$fields$ja {
	_QualityCommonStrings$entity$obsdisp$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_enable => 'Effectiveness';
	@override String get f_observe_schedule => 'Planned monitoring date';
	@override String get f_observe_at => 'Monitored on';
	@override String get f_observer_staff_id => 'Monitored by';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.obsprev.fields
class _QualityCommonStrings$entity$obsprev$fields$en extends QualityCommonStrings$entity$obsprev$fields$ja {
	_QualityCommonStrings$entity$obsprev$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_trans_observer_disposal_id => 'Monitoring';
	@override String get f_trans_recurrence_prevention_id => 'Recurrence prevention';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.risk.fields
class _QualityCommonStrings$entity$risk$fields$en extends QualityCommonStrings$entity$risk$fields$ja {
	_QualityCommonStrings$entity$risk$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_frequency => 'Frequency';
	@override String get f_momentous => 'Severity';
	@override String get f_action => 'Actionable';
	@override String get f_residual_risk_id => 'Residual risk';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.prevention.fields
class _QualityCommonStrings$entity$prevention$fields$en extends QualityCommonStrings$entity$prevention$fields$ja {
	_QualityCommonStrings$entity$prevention$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_number => 'Number';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.preventiondetail.fields
class _QualityCommonStrings$entity$preventiondetail$fields$en extends QualityCommonStrings$entity$preventiondetail$fields$ja {
	_QualityCommonStrings$entity$preventiondetail$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_number => 'Number';
	@override String get f_trans_risk_id => 'Risk';
	@override String get f_info_department_id => 'Organization';
	@override String get f_start_at => 'Start date';
	@override String get f_stop_at => 'End date';
	@override String get f_title => 'Subject';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.auditstdcheck.fields
class _QualityCommonStrings$entity$auditstdcheck$fields$en extends QualityCommonStrings$entity$auditstdcheck$fields$ja {
	_QualityCommonStrings$entity$auditstdcheck$fields$en._(QualityCommonStringsEn root) : this._root = root, super.internal(root);

	final QualityCommonStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Audit standard item code';
	@override String get f_control_code => 'Control code';
	@override String get f_name => 'Standard item name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_mstr_audit_std_id => 'Audit standard';
	@override String get f_detail => 'Details';
	@override String get f_type_class => 'Type';
	@override String get f_formula_class => 'Formula';
	@override String get f_arg_class => 'Argument';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityCommonStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Quality common',
			'entity.disposal.title' => 'Nonconformity dispositions',
			'entity.disposal.fields.f_trans_complaint_id' => 'Nonconformity',
			'entity.disposal.fields.f_disposal_at' => 'Disposed on',
			'entity.disposal.fields.f_title' => 'Subject',
			'entity.disposal.fields.f_detail' => 'Details',
			'entity.disposal.fields.f_approval_at' => 'Approved on',
			'entity.disposal.fields.f_department_id' => 'Responsible organization',
			'entity.disposal.fields.f_operation_staff_id' => 'Responsible staff',
			'entity.disposal.fields.f_remarks' => 'Remarks',
			'entity.recur.title' => 'Recurrence prevention actions',
			'entity.recur.fields.f_trans_disposal_id' => 'Disposition',
			'entity.recur.fields.f_occurent_at' => 'Occurred on',
			'entity.recur.fields.f_title' => 'Subject',
			'entity.recur.fields.f_detail' => 'Details',
			'entity.recur.fields.f_operation_staff_id' => 'Responsible staff',
			'entity.recur.fields.f_remarks' => 'Remarks',
			'entity.obsdisp.title' => 'Disposition monitoring',
			'entity.obsdisp.fields.f_enable' => 'Effectiveness',
			'entity.obsdisp.fields.f_observe_schedule' => 'Planned monitoring date',
			'entity.obsdisp.fields.f_observe_at' => 'Monitored on',
			'entity.obsdisp.fields.f_observer_staff_id' => 'Monitored by',
			'entity.obsdisp.fields.f_remarks' => 'Remarks',
			'entity.obsprev.title' => 'Recurrence prevention monitoring',
			'entity.obsprev.fields.f_trans_observer_disposal_id' => 'Monitoring',
			'entity.obsprev.fields.f_trans_recurrence_prevention_id' => 'Recurrence prevention',
			'entity.obsprev.fields.f_remarks' => 'Remarks',
			'entity.risk.title' => 'Risks',
			'entity.risk.fields.f_title' => 'Subject',
			'entity.risk.fields.f_detail' => 'Details',
			'entity.risk.fields.f_frequency' => 'Frequency',
			'entity.risk.fields.f_momentous' => 'Severity',
			'entity.risk.fields.f_action' => 'Actionable',
			'entity.risk.fields.f_residual_risk_id' => 'Residual risk',
			'entity.risk.fields.f_remarks' => 'Remarks',
			'entity.prevention.title' => 'Preventive measures',
			'entity.prevention.fields.f_number' => 'Number',
			'entity.prevention.fields.f_title' => 'Subject',
			'entity.prevention.fields.f_detail' => 'Details',
			'entity.prevention.fields.f_remarks' => 'Remarks',
			'entity.preventiondetail.title' => 'Preventive actions',
			'entity.preventiondetail.fields.f_number' => 'Number',
			'entity.preventiondetail.fields.f_trans_risk_id' => 'Risk',
			'entity.preventiondetail.fields.f_info_department_id' => 'Organization',
			'entity.preventiondetail.fields.f_start_at' => 'Start date',
			'entity.preventiondetail.fields.f_stop_at' => 'End date',
			'entity.preventiondetail.fields.f_title' => 'Subject',
			'entity.preventiondetail.fields.f_detail' => 'Details',
			'entity.preventiondetail.fields.f_remarks' => 'Remarks',
			'entity.auditstdcheck.title' => 'Audit standard items',
			'entity.auditstdcheck.fields.f_code' => 'Audit standard item code',
			'entity.auditstdcheck.fields.f_control_code' => 'Control code',
			'entity.auditstdcheck.fields.f_name' => 'Standard item name',
			'entity.auditstdcheck.fields.f_pronunciation' => 'Reading',
			'entity.auditstdcheck.fields.f_nickname' => 'Abbreviation',
			'entity.auditstdcheck.fields.f_mstr_audit_std_id' => 'Audit standard',
			'entity.auditstdcheck.fields.f_detail' => 'Details',
			'entity.auditstdcheck.fields.f_type_class' => 'Type',
			'entity.auditstdcheck.fields.f_formula_class' => 'Formula',
			'entity.auditstdcheck.fields.f_arg_class' => 'Argument',
			'entity.auditstdcheck.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
