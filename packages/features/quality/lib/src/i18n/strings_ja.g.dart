///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef QualityStringsJa = QualityStrings; // ignore: unused_element
class QualityStrings with BaseTranslations<QualityLocale, QualityStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityLocale.build] is preferred.
	QualityStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityLocale, QualityStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<QualityLocale, QualityStrings> _meta;
	@override TranslationMetadata<QualityLocale, QualityStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final QualityStrings _root = this; // ignore: unused_field

	QualityStrings $copyWith({TranslationMetadata<QualityLocale, QualityStrings>? meta}) => QualityStrings(meta: meta ?? this.$meta);

	// Translations
	late final QualityStrings$menu$ja menu = QualityStrings$menu$ja.internal(_root);
	late final QualityStrings$entity$ja entity = QualityStrings$entity$ja.internal(_root);
}

// Path: menu
class QualityStrings$menu$ja {
	QualityStrings$menu$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品質管理'
	String get group => '品質管理';
}

// Path: entity
class QualityStrings$entity$ja {
	QualityStrings$entity$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations
	late final QualityStrings$entity$complaint$ja complaint = QualityStrings$entity$complaint$ja.internal(_root);
	late final QualityStrings$entity$compreceive$ja compreceive = QualityStrings$entity$compreceive$ja.internal(_root);
	late final QualityStrings$entity$compstake$ja compstake = QualityStrings$entity$compstake$ja.internal(_root);
	late final QualityStrings$entity$compfile$ja compfile = QualityStrings$entity$compfile$ja.internal(_root);
	late final QualityStrings$entity$corder$ja corder = QualityStrings$entity$corder$ja.internal(_root);
	late final QualityStrings$entity$corderimp$ja corderimp = QualityStrings$entity$corderimp$ja.internal(_root);
	late final QualityStrings$entity$cproc$ja cproc = QualityStrings$entity$cproc$ja.internal(_root);
	late final QualityStrings$entity$cprocimp$ja cprocimp = QualityStrings$entity$cprocimp$ja.internal(_root);
	late final QualityStrings$entity$cequip$ja cequip = QualityStrings$entity$cequip$ja.internal(_root);
	late final QualityStrings$entity$cequipimp$ja cequipimp = QualityStrings$entity$cequipimp$ja.internal(_root);
	late final QualityStrings$entity$orderrisk$ja orderrisk = QualityStrings$entity$orderrisk$ja.internal(_root);
	late final QualityStrings$entity$orderdetailrisk$ja orderdetailrisk = QualityStrings$entity$orderdetailrisk$ja.internal(_root);
	late final QualityStrings$entity$odrimp$ja odrimp = QualityStrings$entity$odrimp$ja.internal(_root);
	late final QualityStrings$entity$taskrisk$ja taskrisk = QualityStrings$entity$taskrisk$ja.internal(_root);
	late final QualityStrings$entity$trimp$ja trimp = QualityStrings$entity$trimp$ja.internal(_root);
	late final QualityStrings$entity$auditstd$ja auditstd = QualityStrings$entity$auditstd$ja.internal(_root);
	late final QualityStrings$entity$auditstdimp$ja auditstdimp = QualityStrings$entity$auditstdimp$ja.internal(_root);
	late final QualityStrings$entity$auditteam$ja auditteam = QualityStrings$entity$auditteam$ja.internal(_root);
	late final QualityStrings$entity$auditor$ja auditor = QualityStrings$entity$auditor$ja.internal(_root);
	late final QualityStrings$entity$audit$ja audit = QualityStrings$entity$audit$ja.internal(_root);
	late final QualityStrings$entity$auditteamlink$ja auditteamlink = QualityStrings$entity$auditteamlink$ja.internal(_root);
	late final QualityStrings$entity$auditmember$ja auditmember = QualityStrings$entity$auditmember$ja.internal(_root);
}

// Path: entity.complaint
class QualityStrings$entity$complaint$ja {
	QualityStrings$entity$complaint$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常'
	String get title => '異常';

	late final QualityStrings$entity$complaint$fields$ja fields = QualityStrings$entity$complaint$fields$ja.internal(_root);
}

// Path: entity.compreceive
class QualityStrings$entity$compreceive$ja {
	QualityStrings$entity$compreceive$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常報告受領'
	String get title => '異常報告受領';

	late final QualityStrings$entity$compreceive$fields$ja fields = QualityStrings$entity$compreceive$fields$ja.internal(_root);
}

// Path: entity.compstake
class QualityStrings$entity$compstake$ja {
	QualityStrings$entity$compstake$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '利害関係者苦情'
	String get title => '利害関係者苦情';

	late final QualityStrings$entity$compstake$fields$ja fields = QualityStrings$entity$compstake$fields$ja.internal(_root);
}

// Path: entity.compfile
class QualityStrings$entity$compfile$ja {
	QualityStrings$entity$compfile$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常報告ファイル'
	String get title => '異常報告ファイル';

	late final QualityStrings$entity$compfile$fields$ja fields = QualityStrings$entity$compfile$fields$ja.internal(_root);
}

// Path: entity.corder
class QualityStrings$entity$corder$ja {
	QualityStrings$entity$corder$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '注文苦情'
	String get title => '注文苦情';

	late final QualityStrings$entity$corder$fields$ja fields = QualityStrings$entity$corder$fields$ja.internal(_root);
}

// Path: entity.corderimp
class QualityStrings$entity$corderimp$ja {
	QualityStrings$entity$corderimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込'
	String get title => '取込';

	late final QualityStrings$entity$corderimp$fields$ja fields = QualityStrings$entity$corderimp$fields$ja.internal(_root);
}

// Path: entity.cproc
class QualityStrings$entity$cproc$ja {
	QualityStrings$entity$cproc$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程苦情'
	String get title => '工程苦情';

	late final QualityStrings$entity$cproc$fields$ja fields = QualityStrings$entity$cproc$fields$ja.internal(_root);
}

// Path: entity.cprocimp
class QualityStrings$entity$cprocimp$ja {
	QualityStrings$entity$cprocimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込'
	String get title => '取込';

	late final QualityStrings$entity$cprocimp$fields$ja fields = QualityStrings$entity$cprocimp$fields$ja.internal(_root);
}

// Path: entity.cequip
class QualityStrings$entity$cequip$ja {
	QualityStrings$entity$cequip$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備苦情'
	String get title => '設備苦情';

	late final QualityStrings$entity$cequip$fields$ja fields = QualityStrings$entity$cequip$fields$ja.internal(_root);
}

// Path: entity.cequipimp
class QualityStrings$entity$cequipimp$ja {
	QualityStrings$entity$cequipimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込'
	String get title => '取込';

	late final QualityStrings$entity$cequipimp$fields$ja fields = QualityStrings$entity$cequipimp$fields$ja.internal(_root);
}

// Path: entity.orderrisk
class QualityStrings$entity$orderrisk$ja {
	QualityStrings$entity$orderrisk$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '注文リスク'
	String get title => '注文リスク';

	late final QualityStrings$entity$orderrisk$fields$ja fields = QualityStrings$entity$orderrisk$fields$ja.internal(_root);
}

// Path: entity.orderdetailrisk
class QualityStrings$entity$orderdetailrisk$ja {
	QualityStrings$entity$orderdetailrisk$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注明細リスク'
	String get title => '受注明細リスク';

	late final QualityStrings$entity$orderdetailrisk$fields$ja fields = QualityStrings$entity$orderdetailrisk$fields$ja.internal(_root);
}

// Path: entity.odrimp
class QualityStrings$entity$odrimp$ja {
	QualityStrings$entity$odrimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込：リスク'
	String get title => '取込：リスク';

	late final QualityStrings$entity$odrimp$fields$ja fields = QualityStrings$entity$odrimp$fields$ja.internal(_root);
}

// Path: entity.taskrisk
class QualityStrings$entity$taskrisk$ja {
	QualityStrings$entity$taskrisk$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程リスク'
	String get title => '工程リスク';

	late final QualityStrings$entity$taskrisk$fields$ja fields = QualityStrings$entity$taskrisk$fields$ja.internal(_root);
}

// Path: entity.trimp
class QualityStrings$entity$trimp$ja {
	QualityStrings$entity$trimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込：リスク'
	String get title => '取込：リスク';

	late final QualityStrings$entity$trimp$fields$ja fields = QualityStrings$entity$trimp$fields$ja.internal(_root);
}

// Path: entity.auditstd
class QualityStrings$entity$auditstd$ja {
	QualityStrings$entity$auditstd$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準'
	String get title => '監査標準';

	late final QualityStrings$entity$auditstd$fields$ja fields = QualityStrings$entity$auditstd$fields$ja.internal(_root);
}

// Path: entity.auditstdimp
class QualityStrings$entity$auditstdimp$ja {
	QualityStrings$entity$auditstdimp$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込：監査標準項目'
	String get title => '取込：監査標準項目';

	late final QualityStrings$entity$auditstdimp$fields$ja fields = QualityStrings$entity$auditstdimp$fields$ja.internal(_root);
}

// Path: entity.auditteam
class QualityStrings$entity$auditteam$ja {
	QualityStrings$entity$auditteam$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査チーム'
	String get title => '監査チーム';

	late final QualityStrings$entity$auditteam$fields$ja fields = QualityStrings$entity$auditteam$fields$ja.internal(_root);
}

// Path: entity.auditor
class QualityStrings$entity$auditor$ja {
	QualityStrings$entity$auditor$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査員'
	String get title => '監査員';

	late final QualityStrings$entity$auditor$fields$ja fields = QualityStrings$entity$auditor$fields$ja.internal(_root);
}

// Path: entity.audit
class QualityStrings$entity$audit$ja {
	QualityStrings$entity$audit$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査'
	String get title => '監査';

	late final QualityStrings$entity$audit$fields$ja fields = QualityStrings$entity$audit$fields$ja.internal(_root);
}

// Path: entity.auditteamlink
class QualityStrings$entity$auditteamlink$ja {
	QualityStrings$entity$auditteamlink$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査チーム'
	String get title => '監査チーム';

	late final QualityStrings$entity$auditteamlink$fields$ja fields = QualityStrings$entity$auditteamlink$fields$ja.internal(_root);
}

// Path: entity.auditmember
class QualityStrings$entity$auditmember$ja {
	QualityStrings$entity$auditmember$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査参加者'
	String get title => '監査参加者';

	late final QualityStrings$entity$auditmember$fields$ja fields = QualityStrings$entity$auditmember$fields$ja.internal(_root);
}

// Path: entity.complaint.fields
class QualityStrings$entity$complaint$fields$ja {
	QualityStrings$entity$complaint$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発生年月日'
	String get f_occurent_at => '発生年月日';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '承認'
	String get f_approvals => '承認';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.compreceive.fields
class QualityStrings$entity$compreceive$fields$ja {
	QualityStrings$entity$compreceive$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受領日'
	String get f_receive_at => '受領日';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.compstake.fields
class QualityStrings$entity$compstake$fields$ja {
	QualityStrings$entity$compstake$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.compfile.fields
class QualityStrings$entity$compfile$fields$ja {
	QualityStrings$entity$compfile$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ファイル名'
	String get f_fname => 'ファイル名';

	/// ja: '登録日'
	String get f_date => '登録日';
}

// Path: entity.corder.fields
class QualityStrings$entity$corder$fields$ja {
	QualityStrings$entity$corder$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常'
	String get f_trans_complaint_id => '異常';

	/// ja: '注文'
	String get f_trans_order_id => '注文';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.corderimp.fields
class QualityStrings$entity$corderimp$fields$ja {
	QualityStrings$entity$corderimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込種別'
	String get f_kind => '取込種別';

	/// ja: '取込内容'
	String get f_title => '取込内容';

	/// ja: '取込日'
	String get f_date => '取込日';
}

// Path: entity.cproc.fields
class QualityStrings$entity$cproc$fields$ja {
	QualityStrings$entity$cproc$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常'
	String get f_trans_complaint_id => '異常';

	/// ja: '工程'
	String get f_mstr_task_id => '工程';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.cprocimp.fields
class QualityStrings$entity$cprocimp$fields$ja {
	QualityStrings$entity$cprocimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込種別'
	String get f_kind => '取込種別';

	/// ja: '取込内容'
	String get f_title => '取込内容';

	/// ja: '取込日'
	String get f_date => '取込日';
}

// Path: entity.cequip.fields
class QualityStrings$entity$cequip$fields$ja {
	QualityStrings$entity$cequip$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常'
	String get f_trans_complaint_id => '異常';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.cequipimp.fields
class QualityStrings$entity$cequipimp$fields$ja {
	QualityStrings$entity$cequipimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '取込種別'
	String get f_kind => '取込種別';

	/// ja: '取込内容'
	String get f_title => '取込内容';

	/// ja: '取込日'
	String get f_date => '取込日';
}

// Path: entity.orderrisk.fields
class QualityStrings$entity$orderrisk$fields$ja {
	QualityStrings$entity$orderrisk$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '注文'
	String get f_trans_order_id => '注文';

	/// ja: 'リスク'
	String get f_trans_risk_id => 'リスク';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.orderdetailrisk.fields
class QualityStrings$entity$orderdetailrisk$fields$ja {
	QualityStrings$entity$orderdetailrisk$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注明細'
	String get f_trans_order_detail_id => '受注明細';

	/// ja: 'リスク'
	String get f_risk_id => 'リスク';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.odrimp.fields
class QualityStrings$entity$odrimp$fields$ja {
	QualityStrings$entity$odrimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'リスク'
	String get f_risk => 'リスク';
}

// Path: entity.taskrisk.fields
class QualityStrings$entity$taskrisk$fields$ja {
	QualityStrings$entity$taskrisk$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get f_mstr_task_id => '工程';

	/// ja: 'リスク'
	String get f_risk_id => 'リスク';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.trimp.fields
class QualityStrings$entity$trimp$fields$ja {
	QualityStrings$entity$trimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'リスク'
	String get f_risk => 'リスク';
}

// Path: entity.auditstd.fields
class QualityStrings$entity$auditstd$fields$ja {
	QualityStrings$entity$auditstd$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準コード'
	String get f_code => '監査標準コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '監査標準名称'
	String get f_name => '監査標準名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '区分'
	String get f_category => '区分';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.auditstdimp.fields
class QualityStrings$entity$auditstdimp$fields$ja {
	QualityStrings$entity$auditstdimp$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準項目'
	String get f_check => '監査標準項目';
}

// Path: entity.auditteam.fields
class QualityStrings$entity$auditteam$fields$ja {
	QualityStrings$entity$auditteam$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'チーム名'
	String get f_name => 'チーム名';

	/// ja: '監査'
	String get f_trans_audit_id => '監査';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.auditor.fields
class QualityStrings$entity$auditor$fields$ja {
	QualityStrings$entity$auditor$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'メンバー区分'
	String get f_ccategory => 'メンバー区分';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.audit.fields
class QualityStrings$entity$audit$fields$ja {
	QualityStrings$entity$audit$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '開始予定日'
	String get f_scheduled_start_date => '開始予定日';

	/// ja: '終了予定日'
	String get f_expected_end_date => '終了予定日';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '組織情報'
	String get f_info_department_id => '組織情報';

	/// ja: '利害関係者'
	String get f_mstr_stakeholder_id => '利害関係者';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.auditteamlink.fields
class QualityStrings$entity$auditteamlink$fields$ja {
	QualityStrings$entity$auditteamlink$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査チーム'
	String get f_team => '監査チーム';
}

// Path: entity.auditmember.fields
class QualityStrings$entity$auditmember$fields$ja {
	QualityStrings$entity$auditmember$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '参加区分'
	String get f_class => '参加区分';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '品質管理',
			'entity.complaint.title' => '異常',
			'entity.complaint.fields.f_occurent_at' => '発生年月日',
			'entity.complaint.fields.f_title' => '件名',
			'entity.complaint.fields.f_detail' => '詳細',
			'entity.complaint.fields.f_approvals' => '承認',
			'entity.complaint.fields.f_remarks' => '備考',
			'entity.compreceive.title' => '異常報告受領',
			'entity.compreceive.fields.f_receive_at' => '受領日',
			'entity.compreceive.fields.f_detail' => '詳細',
			'entity.compreceive.fields.f_remarks' => '備考',
			'entity.compstake.title' => '利害関係者苦情',
			'entity.compstake.fields.f_remarks' => '備考',
			'entity.compfile.title' => '異常報告ファイル',
			'entity.compfile.fields.f_fname' => 'ファイル名',
			'entity.compfile.fields.f_date' => '登録日',
			'entity.corder.title' => '注文苦情',
			'entity.corder.fields.f_trans_complaint_id' => '異常',
			'entity.corder.fields.f_trans_order_id' => '注文',
			'entity.corder.fields.f_remarks' => '備考',
			'entity.corderimp.title' => '取込',
			'entity.corderimp.fields.f_kind' => '取込種別',
			'entity.corderimp.fields.f_title' => '取込内容',
			'entity.corderimp.fields.f_date' => '取込日',
			'entity.cproc.title' => '工程苦情',
			'entity.cproc.fields.f_trans_complaint_id' => '異常',
			'entity.cproc.fields.f_mstr_task_id' => '工程',
			'entity.cproc.fields.f_remarks' => '備考',
			'entity.cprocimp.title' => '取込',
			'entity.cprocimp.fields.f_kind' => '取込種別',
			'entity.cprocimp.fields.f_title' => '取込内容',
			'entity.cprocimp.fields.f_date' => '取込日',
			'entity.cequip.title' => '設備苦情',
			'entity.cequip.fields.f_trans_complaint_id' => '異常',
			'entity.cequip.fields.f_remarks' => '備考',
			'entity.cequipimp.title' => '取込',
			'entity.cequipimp.fields.f_kind' => '取込種別',
			'entity.cequipimp.fields.f_title' => '取込内容',
			'entity.cequipimp.fields.f_date' => '取込日',
			'entity.orderrisk.title' => '注文リスク',
			'entity.orderrisk.fields.f_trans_order_id' => '注文',
			'entity.orderrisk.fields.f_trans_risk_id' => 'リスク',
			'entity.orderrisk.fields.f_remarks' => '備考',
			'entity.orderdetailrisk.title' => '受注明細リスク',
			'entity.orderdetailrisk.fields.f_trans_order_detail_id' => '受注明細',
			'entity.orderdetailrisk.fields.f_risk_id' => 'リスク',
			'entity.orderdetailrisk.fields.f_remarks' => '備考',
			'entity.odrimp.title' => '取込：リスク',
			'entity.odrimp.fields.f_risk' => 'リスク',
			'entity.taskrisk.title' => '工程リスク',
			'entity.taskrisk.fields.f_mstr_task_id' => '工程',
			'entity.taskrisk.fields.f_risk_id' => 'リスク',
			'entity.taskrisk.fields.f_remarks' => '備考',
			'entity.trimp.title' => '取込：リスク',
			'entity.trimp.fields.f_risk' => 'リスク',
			'entity.auditstd.title' => '監査標準',
			'entity.auditstd.fields.f_code' => '監査標準コード',
			'entity.auditstd.fields.f_control_code' => '管理コード',
			'entity.auditstd.fields.f_name' => '監査標準名称',
			'entity.auditstd.fields.f_pronunciation' => '読み',
			'entity.auditstd.fields.f_nickname' => '略称',
			'entity.auditstd.fields.f_category' => '区分',
			'entity.auditstd.fields.f_detail' => '詳細',
			'entity.auditstd.fields.f_remarks' => '備考',
			'entity.auditstdimp.title' => '取込：監査標準項目',
			'entity.auditstdimp.fields.f_check' => '監査標準項目',
			'entity.auditteam.title' => '監査チーム',
			'entity.auditteam.fields.f_name' => 'チーム名',
			'entity.auditteam.fields.f_trans_audit_id' => '監査',
			'entity.auditteam.fields.f_remarks' => '備考',
			'entity.auditor.title' => '監査員',
			'entity.auditor.fields.f_ccategory' => 'メンバー区分',
			'entity.auditor.fields.f_remarks' => '備考',
			'entity.audit.title' => '監査',
			'entity.audit.fields.f_scheduled_start_date' => '開始予定日',
			'entity.audit.fields.f_expected_end_date' => '終了予定日',
			'entity.audit.fields.f_title' => '件名',
			'entity.audit.fields.f_detail' => '詳細',
			'entity.audit.fields.f_info_department_id' => '組織情報',
			'entity.audit.fields.f_mstr_stakeholder_id' => '利害関係者',
			'entity.audit.fields.f_remarks' => '備考',
			'entity.auditteamlink.title' => '監査チーム',
			'entity.auditteamlink.fields.f_team' => '監査チーム',
			'entity.auditmember.title' => '監査参加者',
			'entity.auditmember.fields.f_class' => '参加区分',
			'entity.auditmember.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
