///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ResourceStringsJa = ResourceStrings; // ignore: unused_element
class ResourceStrings with BaseTranslations<ResourceLocale, ResourceStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ResourceLocale.build] is preferred.
	ResourceStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ResourceLocale, ResourceStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ResourceLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ResourceLocale, ResourceStrings> _meta;
	@override TranslationMetadata<ResourceLocale, ResourceStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ResourceStrings _root = this; // ignore: unused_field

	ResourceStrings $copyWith({TranslationMetadata<ResourceLocale, ResourceStrings>? meta}) => ResourceStrings(meta: meta ?? this.$meta);

	// Translations
	late final ResourceStrings$menu$ja menu = ResourceStrings$menu$ja.internal(_root);
	late final ResourceStrings$entity$ja entity = ResourceStrings$entity$ja.internal(_root);
}

// Path: menu
class ResourceStrings$menu$ja {
	ResourceStrings$menu$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資源'
	String get group => '資源';
}

// Path: entity
class ResourceStrings$entity$ja {
	ResourceStrings$entity$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations
	late final ResourceStrings$entity$capability$ja capability = ResourceStrings$entity$capability$ja.internal(_root);
	late final ResourceStrings$entity$license$ja license = ResourceStrings$entity$license$ja.internal(_root);
	late final ResourceStrings$entity$location$ja location = ResourceStrings$entity$location$ja.internal(_root);
	late final ResourceStrings$entity$equipmentcategory$ja equipmentcategory = ResourceStrings$entity$equipmentcategory$ja.internal(_root);
	late final ResourceStrings$entity$equipment$ja equipment = ResourceStrings$entity$equipment$ja.internal(_root);
	late final ResourceStrings$entity$inspectionkind$ja inspectionkind = ResourceStrings$entity$inspectionkind$ja.internal(_root);
	late final ResourceStrings$entity$inspectionitem$ja inspectionitem = ResourceStrings$entity$inspectionitem$ja.internal(_root);
	late final ResourceStrings$entity$inspectionformula$ja inspectionformula = ResourceStrings$entity$inspectionformula$ja.internal(_root);
	late final ResourceStrings$entity$inspectionoperation$ja inspectionoperation = ResourceStrings$entity$inspectionoperation$ja.internal(_root);
	late final ResourceStrings$entity$operationline$ja operationline = ResourceStrings$entity$operationline$ja.internal(_root);
	late final ResourceStrings$entity$inspectionschedule$ja inspectionschedule = ResourceStrings$entity$inspectionschedule$ja.internal(_root);
	late final ResourceStrings$entity$scheduledetail$ja scheduledetail = ResourceStrings$entity$scheduledetail$ja.internal(_root);
	late final ResourceStrings$entity$inspectionresult$ja inspectionresult = ResourceStrings$entity$inspectionresult$ja.internal(_root);
	late final ResourceStrings$entity$inspectionfile$ja inspectionfile = ResourceStrings$entity$inspectionfile$ja.internal(_root);
	late final ResourceStrings$entity$workcalendar$ja workcalendar = ResourceStrings$entity$workcalendar$ja.internal(_root);
}

// Path: entity.capability
class ResourceStrings$entity$capability$ja {
	ResourceStrings$entity$capability$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '力量'
	String get title => '力量';

	late final ResourceStrings$entity$capability$fields$ja fields = ResourceStrings$entity$capability$fields$ja.internal(_root);
	late final ResourceStrings$entity$capability$reverse$ja reverse = ResourceStrings$entity$capability$reverse$ja.internal(_root);
}

// Path: entity.license
class ResourceStrings$entity$license$ja {
	ResourceStrings$entity$license$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資格'
	String get title => '資格';

	late final ResourceStrings$entity$license$fields$ja fields = ResourceStrings$entity$license$fields$ja.internal(_root);
	late final ResourceStrings$entity$license$reverse$ja reverse = ResourceStrings$entity$license$reverse$ja.internal(_root);
}

// Path: entity.location
class ResourceStrings$entity$location$ja {
	ResourceStrings$entity$location$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '場所'
	String get title => '場所';

	late final ResourceStrings$entity$location$fields$ja fields = ResourceStrings$entity$location$fields$ja.internal(_root);
	late final ResourceStrings$entity$location$reverse$ja reverse = ResourceStrings$entity$location$reverse$ja.internal(_root);
}

// Path: entity.equipmentcategory
class ResourceStrings$entity$equipmentcategory$ja {
	ResourceStrings$entity$equipmentcategory$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備分類'
	String get title => '設備分類';

	late final ResourceStrings$entity$equipmentcategory$fields$ja fields = ResourceStrings$entity$equipmentcategory$fields$ja.internal(_root);
}

// Path: entity.equipment
class ResourceStrings$entity$equipment$ja {
	ResourceStrings$entity$equipment$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備'
	String get title => '設備';

	late final ResourceStrings$entity$equipment$fields$ja fields = ResourceStrings$entity$equipment$fields$ja.internal(_root);
	late final ResourceStrings$entity$equipment$reverse$ja reverse = ResourceStrings$entity$equipment$reverse$ja.internal(_root);
}

// Path: entity.inspectionkind
class ResourceStrings$entity$inspectionkind$ja {
	ResourceStrings$entity$inspectionkind$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検整備区分'
	String get title => '点検整備区分';

	late final ResourceStrings$entity$inspectionkind$fields$ja fields = ResourceStrings$entity$inspectionkind$fields$ja.internal(_root);
}

// Path: entity.inspectionitem
class ResourceStrings$entity$inspectionitem$ja {
	ResourceStrings$entity$inspectionitem$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検整備項目'
	String get title => '点検整備項目';

	late final ResourceStrings$entity$inspectionitem$fields$ja fields = ResourceStrings$entity$inspectionitem$fields$ja.internal(_root);
}

// Path: entity.inspectionformula
class ResourceStrings$entity$inspectionformula$ja {
	ResourceStrings$entity$inspectionformula$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検整備算式'
	String get title => '点検整備算式';

	late final ResourceStrings$entity$inspectionformula$fields$ja fields = ResourceStrings$entity$inspectionformula$fields$ja.internal(_root);
}

// Path: entity.inspectionoperation
class ResourceStrings$entity$inspectionoperation$ja {
	ResourceStrings$entity$inspectionoperation$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備点検整備運用'
	String get title => '設備点検整備運用';

	late final ResourceStrings$entity$inspectionoperation$fields$ja fields = ResourceStrings$entity$inspectionoperation$fields$ja.internal(_root);
}

// Path: entity.operationline
class ResourceStrings$entity$operationline$ja {
	ResourceStrings$entity$operationline$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '運用明細'
	String get title => '運用明細';

	late final ResourceStrings$entity$operationline$fields$ja fields = ResourceStrings$entity$operationline$fields$ja.internal(_root);
}

// Path: entity.inspectionschedule
class ResourceStrings$entity$inspectionschedule$ja {
	ResourceStrings$entity$inspectionschedule$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検予定'
	String get title => '点検予定';

	late final ResourceStrings$entity$inspectionschedule$fields$ja fields = ResourceStrings$entity$inspectionschedule$fields$ja.internal(_root);
}

// Path: entity.scheduledetail
class ResourceStrings$entity$scheduledetail$ja {
	ResourceStrings$entity$scheduledetail$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '予定明細'
	String get title => '予定明細';

	late final ResourceStrings$entity$scheduledetail$fields$ja fields = ResourceStrings$entity$scheduledetail$fields$ja.internal(_root);
}

// Path: entity.inspectionresult
class ResourceStrings$entity$inspectionresult$ja {
	ResourceStrings$entity$inspectionresult$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検実施'
	String get title => '点検実施';

	late final ResourceStrings$entity$inspectionresult$fields$ja fields = ResourceStrings$entity$inspectionresult$fields$ja.internal(_root);
}

// Path: entity.inspectionfile
class ResourceStrings$entity$inspectionfile$ja {
	ResourceStrings$entity$inspectionfile$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ファイル'
	String get title => 'ファイル';

	late final ResourceStrings$entity$inspectionfile$fields$ja fields = ResourceStrings$entity$inspectionfile$fields$ja.internal(_root);
}

// Path: entity.workcalendar
class ResourceStrings$entity$workcalendar$ja {
	ResourceStrings$entity$workcalendar$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '稼働カレンダー'
	String get title => '稼働カレンダー';

	late final ResourceStrings$entity$workcalendar$fields$ja fields = ResourceStrings$entity$workcalendar$fields$ja.internal(_root);
}

// Path: entity.capability.fields
class ResourceStrings$entity$capability$fields$ja {
	ResourceStrings$entity$capability$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '力量コード'
	String get f_code => '力量コード';

	/// ja: '力量名称'
	String get f_name => '力量名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '基準'
	String get f_reference_value => '基準';

	/// ja: '最大'
	String get f_max => '最大';

	/// ja: '最小'
	String get f_min => '最小';

	/// ja: '刻み'
	String get f_step => '刻み';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.capability.reverse
class ResourceStrings$entity$capability$reverse$ja {
	ResourceStrings$entity$capability$reverse$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保持者'
	String get staffcapability => '保持者';
}

// Path: entity.license.fields
class ResourceStrings$entity$license$fields$ja {
	ResourceStrings$entity$license$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資格コード'
	String get f_code => '資格コード';

	/// ja: '資格名称'
	String get f_name => '資格名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '公的'
	String get f_public_license => '公的';

	/// ja: '顧客'
	String get f_customer_license => '顧客';

	/// ja: '内部'
	String get f_organization_license => '内部';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.license.reverse
class ResourceStrings$entity$license$reverse$ja {
	ResourceStrings$entity$license$reverse$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保持者'
	String get stafflicense => '保持者';
}

// Path: entity.location.fields
class ResourceStrings$entity$location$fields$ja {
	ResourceStrings$entity$location$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '場所コード'
	String get f_code => '場所コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '場所名称'
	String get f_name => '場所名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '使用'
	String get f_use => '使用';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.location.reverse
class ResourceStrings$entity$location$reverse$ja {
	ResourceStrings$entity$location$reverse$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備'
	String get equipment => '設備';
}

// Path: entity.equipmentcategory.fields
class ResourceStrings$entity$equipmentcategory$fields$ja {
	ResourceStrings$entity$equipmentcategory$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '分類コード'
	String get f_code => '分類コード';

	/// ja: '分類名称'
	String get f_name => '分類名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '適用開始'
	String get f_start => '適用開始';

	/// ja: '適用終了'
	String get f_end => '適用終了';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.equipment.fields
class ResourceStrings$entity$equipment$fields$ja {
	ResourceStrings$entity$equipment$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備コード'
	String get f_code => '設備コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '表示コード'
	String get f_label_code => '表示コード';

	/// ja: '品目(設備名)'
	String get f_item => '品目(設備名)';

	/// ja: '設備分類'
	String get f_category => '設備分類';

	/// ja: '場所'
	String get f_location => '場所';
}

// Path: entity.equipment.reverse
class ResourceStrings$entity$equipment$reverse$ja {
	ResourceStrings$entity$equipment$reverse$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備点検整備運用'
	String get inspectionoperation => '設備点検整備運用';
}

// Path: entity.inspectionkind.fields
class ResourceStrings$entity$inspectionkind$fields$ja {
	ResourceStrings$entity$inspectionkind$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '区分コード'
	String get f_code => '区分コード';

	/// ja: '区分名称'
	String get f_name => '区分名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '周期の目安'
	String get f_cycle => '周期の目安';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.inspectionitem.fields
class ResourceStrings$entity$inspectionitem$fields$ja {
	ResourceStrings$entity$inspectionitem$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検コード'
	String get f_code => '点検コード';

	/// ja: '点検名称'
	String get f_name => '点検名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '点検区分'
	String get f_kind => '点検区分';
}

// Path: entity.inspectionformula.fields
class ResourceStrings$entity$inspectionformula$fields$ja {
	ResourceStrings$entity$inspectionformula$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '式'
	String get f_expr => '式';
}

// Path: entity.inspectionoperation.fields
class ResourceStrings$entity$inspectionoperation$fields$ja {
	ResourceStrings$entity$inspectionoperation$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '運用コード'
	String get f_code => '運用コード';

	/// ja: '運用名称'
	String get f_name => '運用名称';

	/// ja: '設備'
	String get f_equipment => '設備';

	/// ja: '点検整備区分'
	String get f_kind => '点検整備区分';
}

// Path: entity.operationline.fields
class ResourceStrings$entity$operationline$fields$ja {
	ResourceStrings$entity$operationline$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検整備'
	String get f_item => '点検整備';

	/// ja: '順'
	String get f_seq => '順';

	/// ja: '担当の役職'
	String get f_role => '担当の役職';
}

// Path: entity.inspectionschedule.fields
class ResourceStrings$entity$inspectionschedule$fields$ja {
	ResourceStrings$entity$inspectionschedule$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '管理コード'
	String get f_code => '管理コード';

	/// ja: '予定名称'
	String get f_name => '予定名称';

	/// ja: '点検整備運用'
	String get f_operation => '点検整備運用';
}

// Path: entity.scheduledetail.fields
class ResourceStrings$entity$scheduledetail$fields$ja {
	ResourceStrings$entity$scheduledetail$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '点検整備項目'
	String get f_item => '点検整備項目';

	/// ja: '開始予定日'
	String get f_start => '開始予定日';

	/// ja: '終了予定日'
	String get f_end => '終了予定日';

	/// ja: '担当者'
	String get f_staff => '担当者';
}

// Path: entity.inspectionresult.fields
class ResourceStrings$entity$inspectionresult$fields$ja {
	ResourceStrings$entity$inspectionresult$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '実施日'
	String get f_date => '実施日';

	/// ja: '実施者'
	String get f_staff => '実施者';

	/// ja: '結果'
	String get f_result => '結果';

	/// ja: '測定値・所見'
	String get f_value => '測定値・所見';

	/// ja: '備考'
	String get f_note => '備考';
}

// Path: entity.inspectionfile.fields
class ResourceStrings$entity$inspectionfile$fields$ja {
	ResourceStrings$entity$inspectionfile$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ファイル名'
	String get f_fname => 'ファイル名';

	/// ja: '種類'
	String get f_ftype => '種類';

	/// ja: '登録日'
	String get f_regdate => '登録日';
}

// Path: entity.workcalendar.fields
class ResourceStrings$entity$workcalendar$fields$ja {
	ResourceStrings$entity$workcalendar$fields$ja.internal(this._root);

	final ResourceStrings _root; // ignore: unused_field

	// Translations

	/// ja: '稼働日'
	String get f_work_date => '稼働日';

	/// ja: '設備'
	String get f_equipment => '設備';

	/// ja: '開始時刻'
	String get f_start_time => '開始時刻';

	/// ja: '稼働時間（HH:MM）'
	String get f_work_interval => '稼働時間（HH:MM）';

	/// ja: '休業日'
	String get f_holiday => '休業日';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ResourceStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '資源',
			'entity.capability.title' => '力量',
			'entity.capability.fields.f_code' => '力量コード',
			'entity.capability.fields.f_name' => '力量名称',
			'entity.capability.fields.f_pronunciation' => '読み',
			'entity.capability.fields.f_detail' => '詳細',
			'entity.capability.fields.f_reference_value' => '基準',
			'entity.capability.fields.f_max' => '最大',
			'entity.capability.fields.f_min' => '最小',
			'entity.capability.fields.f_step' => '刻み',
			'entity.capability.fields.f_remarks' => '備考',
			'entity.capability.reverse.staffcapability' => '保持者',
			'entity.license.title' => '資格',
			'entity.license.fields.f_code' => '資格コード',
			'entity.license.fields.f_name' => '資格名称',
			'entity.license.fields.f_pronunciation' => '読み',
			'entity.license.fields.f_detail' => '詳細',
			'entity.license.fields.f_public_license' => '公的',
			'entity.license.fields.f_customer_license' => '顧客',
			'entity.license.fields.f_organization_license' => '内部',
			'entity.license.fields.f_remarks' => '備考',
			'entity.license.reverse.stafflicense' => '保持者',
			'entity.location.title' => '場所',
			'entity.location.fields.f_code' => '場所コード',
			'entity.location.fields.f_control_code' => '管理コード',
			'entity.location.fields.f_name' => '場所名称',
			'entity.location.fields.f_pronunciation' => '読み',
			'entity.location.fields.f_use' => '使用',
			'entity.location.fields.f_remarks' => '備考',
			'entity.location.reverse.equipment' => '設備',
			'entity.equipmentcategory.title' => '設備分類',
			'entity.equipmentcategory.fields.f_code' => '分類コード',
			'entity.equipmentcategory.fields.f_name' => '分類名称',
			'entity.equipmentcategory.fields.f_pronunciation' => '読み',
			'entity.equipmentcategory.fields.f_start' => '適用開始',
			'entity.equipmentcategory.fields.f_end' => '適用終了',
			'entity.equipmentcategory.fields.f_remarks' => '備考',
			'entity.equipment.title' => '設備',
			'entity.equipment.fields.f_code' => '設備コード',
			'entity.equipment.fields.f_control_code' => '管理コード',
			'entity.equipment.fields.f_label_code' => '表示コード',
			'entity.equipment.fields.f_item' => '品目(設備名)',
			'entity.equipment.fields.f_category' => '設備分類',
			'entity.equipment.fields.f_location' => '場所',
			'entity.equipment.reverse.inspectionoperation' => '設備点検整備運用',
			'entity.inspectionkind.title' => '点検整備区分',
			'entity.inspectionkind.fields.f_code' => '区分コード',
			'entity.inspectionkind.fields.f_name' => '区分名称',
			'entity.inspectionkind.fields.f_pronunciation' => '読み',
			'entity.inspectionkind.fields.f_cycle' => '周期の目安',
			'entity.inspectionkind.fields.f_remarks' => '備考',
			'entity.inspectionitem.title' => '点検整備項目',
			'entity.inspectionitem.fields.f_code' => '点検コード',
			'entity.inspectionitem.fields.f_name' => '点検名称',
			'entity.inspectionitem.fields.f_pronunciation' => '読み',
			'entity.inspectionitem.fields.f_kind' => '点検区分',
			'entity.inspectionformula.title' => '点検整備算式',
			'entity.inspectionformula.fields.f_expr' => '式',
			'entity.inspectionoperation.title' => '設備点検整備運用',
			'entity.inspectionoperation.fields.f_code' => '運用コード',
			'entity.inspectionoperation.fields.f_name' => '運用名称',
			'entity.inspectionoperation.fields.f_equipment' => '設備',
			'entity.inspectionoperation.fields.f_kind' => '点検整備区分',
			'entity.operationline.title' => '運用明細',
			'entity.operationline.fields.f_item' => '点検整備',
			'entity.operationline.fields.f_seq' => '順',
			'entity.operationline.fields.f_role' => '担当の役職',
			'entity.inspectionschedule.title' => '点検予定',
			'entity.inspectionschedule.fields.f_code' => '管理コード',
			'entity.inspectionschedule.fields.f_name' => '予定名称',
			'entity.inspectionschedule.fields.f_operation' => '点検整備運用',
			'entity.scheduledetail.title' => '予定明細',
			'entity.scheduledetail.fields.f_item' => '点検整備項目',
			'entity.scheduledetail.fields.f_start' => '開始予定日',
			'entity.scheduledetail.fields.f_end' => '終了予定日',
			'entity.scheduledetail.fields.f_staff' => '担当者',
			'entity.inspectionresult.title' => '点検実施',
			'entity.inspectionresult.fields.f_date' => '実施日',
			'entity.inspectionresult.fields.f_staff' => '実施者',
			'entity.inspectionresult.fields.f_result' => '結果',
			'entity.inspectionresult.fields.f_value' => '測定値・所見',
			'entity.inspectionresult.fields.f_note' => '備考',
			'entity.inspectionfile.title' => 'ファイル',
			'entity.inspectionfile.fields.f_fname' => 'ファイル名',
			'entity.inspectionfile.fields.f_ftype' => '種類',
			'entity.inspectionfile.fields.f_regdate' => '登録日',
			'entity.workcalendar.title' => '稼働カレンダー',
			'entity.workcalendar.fields.f_work_date' => '稼働日',
			'entity.workcalendar.fields.f_equipment' => '設備',
			'entity.workcalendar.fields.f_start_time' => '開始時刻',
			'entity.workcalendar.fields.f_work_interval' => '稼働時間（HH:MM）',
			'entity.workcalendar.fields.f_holiday' => '休業日',
			'entity.workcalendar.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
