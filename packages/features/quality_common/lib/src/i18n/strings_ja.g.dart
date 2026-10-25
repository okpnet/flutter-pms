///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef QualityCommonStringsJa = QualityCommonStrings; // ignore: unused_element
class QualityCommonStrings with BaseTranslations<QualityCommonLocale, QualityCommonStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityCommonLocale.build] is preferred.
	QualityCommonStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityCommonLocale, QualityCommonStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityCommonLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<QualityCommonLocale, QualityCommonStrings> _meta;
	@override TranslationMetadata<QualityCommonLocale, QualityCommonStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final QualityCommonStrings _root = this; // ignore: unused_field

	QualityCommonStrings $copyWith({TranslationMetadata<QualityCommonLocale, QualityCommonStrings>? meta}) => QualityCommonStrings(meta: meta ?? this.$meta);

	// Translations
	late final QualityCommonStrings$menu$ja menu = QualityCommonStrings$menu$ja.internal(_root);
	late final QualityCommonStrings$entity$ja entity = QualityCommonStrings$entity$ja.internal(_root);
}

// Path: menu
class QualityCommonStrings$menu$ja {
	QualityCommonStrings$menu$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品質共通'
	String get group => '品質共通';
}

// Path: entity
class QualityCommonStrings$entity$ja {
	QualityCommonStrings$entity$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations
	late final QualityCommonStrings$entity$disposal$ja disposal = QualityCommonStrings$entity$disposal$ja.internal(_root);
	late final QualityCommonStrings$entity$recur$ja recur = QualityCommonStrings$entity$recur$ja.internal(_root);
	late final QualityCommonStrings$entity$obsdisp$ja obsdisp = QualityCommonStrings$entity$obsdisp$ja.internal(_root);
	late final QualityCommonStrings$entity$obsprev$ja obsprev = QualityCommonStrings$entity$obsprev$ja.internal(_root);
	late final QualityCommonStrings$entity$risk$ja risk = QualityCommonStrings$entity$risk$ja.internal(_root);
	late final QualityCommonStrings$entity$prevention$ja prevention = QualityCommonStrings$entity$prevention$ja.internal(_root);
	late final QualityCommonStrings$entity$preventiondetail$ja preventiondetail = QualityCommonStrings$entity$preventiondetail$ja.internal(_root);
	late final QualityCommonStrings$entity$auditstdcheck$ja auditstdcheck = QualityCommonStrings$entity$auditstdcheck$ja.internal(_root);
}

// Path: entity.disposal
class QualityCommonStrings$entity$disposal$ja {
	QualityCommonStrings$entity$disposal$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常処置'
	String get title => '異常処置';

	late final QualityCommonStrings$entity$disposal$fields$ja fields = QualityCommonStrings$entity$disposal$fields$ja.internal(_root);
}

// Path: entity.recur
class QualityCommonStrings$entity$recur$ja {
	QualityCommonStrings$entity$recur$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '再発防止処置'
	String get title => '再発防止処置';

	late final QualityCommonStrings$entity$recur$fields$ja fields = QualityCommonStrings$entity$recur$fields$ja.internal(_root);
}

// Path: entity.obsdisp
class QualityCommonStrings$entity$obsdisp$ja {
	QualityCommonStrings$entity$obsdisp$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '処置監視'
	String get title => '処置監視';

	late final QualityCommonStrings$entity$obsdisp$fields$ja fields = QualityCommonStrings$entity$obsdisp$fields$ja.internal(_root);
}

// Path: entity.obsprev
class QualityCommonStrings$entity$obsprev$ja {
	QualityCommonStrings$entity$obsprev$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '再発防止監視'
	String get title => '再発防止監視';

	late final QualityCommonStrings$entity$obsprev$fields$ja fields = QualityCommonStrings$entity$obsprev$fields$ja.internal(_root);
}

// Path: entity.risk
class QualityCommonStrings$entity$risk$ja {
	QualityCommonStrings$entity$risk$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'リスク'
	String get title => 'リスク';

	late final QualityCommonStrings$entity$risk$fields$ja fields = QualityCommonStrings$entity$risk$fields$ja.internal(_root);
}

// Path: entity.prevention
class QualityCommonStrings$entity$prevention$ja {
	QualityCommonStrings$entity$prevention$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未然防止'
	String get title => '未然防止';

	late final QualityCommonStrings$entity$prevention$fields$ja fields = QualityCommonStrings$entity$prevention$fields$ja.internal(_root);
}

// Path: entity.preventiondetail
class QualityCommonStrings$entity$preventiondetail$ja {
	QualityCommonStrings$entity$preventiondetail$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未然防止処置'
	String get title => '未然防止処置';

	late final QualityCommonStrings$entity$preventiondetail$fields$ja fields = QualityCommonStrings$entity$preventiondetail$fields$ja.internal(_root);
}

// Path: entity.auditstdcheck
class QualityCommonStrings$entity$auditstdcheck$ja {
	QualityCommonStrings$entity$auditstdcheck$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準項目'
	String get title => '監査標準項目';

	late final QualityCommonStrings$entity$auditstdcheck$fields$ja fields = QualityCommonStrings$entity$auditstdcheck$fields$ja.internal(_root);
}

// Path: entity.disposal.fields
class QualityCommonStrings$entity$disposal$fields$ja {
	QualityCommonStrings$entity$disposal$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常'
	String get f_trans_complaint_id => '異常';

	/// ja: '処置年月日'
	String get f_disposal_at => '処置年月日';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '承認'
	String get f_approvals => '承認';

	/// ja: '承認日'
	String get f_approval_at => '承認日';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.recur.fields
class QualityCommonStrings$entity$recur$fields$ja {
	QualityCommonStrings$entity$recur$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '異常処置'
	String get f_trans_disposal_id => '異常処置';

	/// ja: '発生年月日'
	String get f_occurent_at => '発生年月日';

	/// ja: '承認'
	String get f_approvals => '承認';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.obsdisp.fields
class QualityCommonStrings$entity$obsdisp$fields$ja {
	QualityCommonStrings$entity$obsdisp$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '有効性'
	String get f_enable => '有効性';

	/// ja: '監視測定予定日'
	String get f_observe_schedule => '監視測定予定日';

	/// ja: '監視測定日'
	String get f_observe_at => '監視測定日';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.obsprev.fields
class QualityCommonStrings$entity$obsprev$fields$ja {
	QualityCommonStrings$entity$obsprev$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監視'
	String get f_trans_observer_disposal_id => '監視';

	/// ja: '再発防止'
	String get f_trans_recurrence_prevention_id => '再発防止';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.risk.fields
class QualityCommonStrings$entity$risk$fields$ja {
	QualityCommonStrings$entity$risk$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '発生頻度'
	String get f_frequency => '発生頻度';

	/// ja: '重大度'
	String get f_momentous => '重大度';

	/// ja: '対応可否'
	String get f_action => '対応可否';

	/// ja: '残留リスク'
	String get f_residual_risk_id => '残留リスク';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.prevention.fields
class QualityCommonStrings$entity$prevention$fields$ja {
	QualityCommonStrings$entity$prevention$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '番号'
	String get f_number => '番号';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.preventiondetail.fields
class QualityCommonStrings$entity$preventiondetail$fields$ja {
	QualityCommonStrings$entity$preventiondetail$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '番号'
	String get f_number => '番号';

	/// ja: 'リスク'
	String get f_trans_risk_id => 'リスク';

	/// ja: '組織情報'
	String get f_info_department_id => '組織情報';

	/// ja: '開始日'
	String get f_start_at => '開始日';

	/// ja: '終了日'
	String get f_stop_at => '終了日';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.auditstdcheck.fields
class QualityCommonStrings$entity$auditstdcheck$fields$ja {
	QualityCommonStrings$entity$auditstdcheck$fields$ja.internal(this._root);

	final QualityCommonStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準項目コード'
	String get f_code => '監査標準項目コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '標準項目名称'
	String get f_name => '標準項目名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '監査標準'
	String get f_mstr_audit_std_id => '監査標準';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '型'
	String get f_type_class => '型';

	/// ja: '式'
	String get f_formula_class => '式';

	/// ja: '引数'
	String get f_arg_class => '引数';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityCommonStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '品質共通',
			'entity.disposal.title' => '異常処置',
			'entity.disposal.fields.f_trans_complaint_id' => '異常',
			'entity.disposal.fields.f_disposal_at' => '処置年月日',
			'entity.disposal.fields.f_title' => '件名',
			'entity.disposal.fields.f_detail' => '詳細',
			'entity.disposal.fields.f_approvals' => '承認',
			'entity.disposal.fields.f_approval_at' => '承認日',
			'entity.disposal.fields.f_remarks' => '備考',
			'entity.recur.title' => '再発防止処置',
			'entity.recur.fields.f_trans_disposal_id' => '異常処置',
			'entity.recur.fields.f_occurent_at' => '発生年月日',
			'entity.recur.fields.f_approvals' => '承認',
			'entity.recur.fields.f_title' => '件名',
			'entity.recur.fields.f_detail' => '詳細',
			'entity.recur.fields.f_remarks' => '備考',
			'entity.obsdisp.title' => '処置監視',
			'entity.obsdisp.fields.f_enable' => '有効性',
			'entity.obsdisp.fields.f_observe_schedule' => '監視測定予定日',
			'entity.obsdisp.fields.f_observe_at' => '監視測定日',
			'entity.obsdisp.fields.f_remarks' => '備考',
			'entity.obsprev.title' => '再発防止監視',
			'entity.obsprev.fields.f_trans_observer_disposal_id' => '監視',
			'entity.obsprev.fields.f_trans_recurrence_prevention_id' => '再発防止',
			'entity.obsprev.fields.f_remarks' => '備考',
			'entity.risk.title' => 'リスク',
			'entity.risk.fields.f_title' => '件名',
			'entity.risk.fields.f_detail' => '詳細',
			'entity.risk.fields.f_frequency' => '発生頻度',
			'entity.risk.fields.f_momentous' => '重大度',
			'entity.risk.fields.f_action' => '対応可否',
			'entity.risk.fields.f_residual_risk_id' => '残留リスク',
			'entity.risk.fields.f_remarks' => '備考',
			'entity.prevention.title' => '未然防止',
			'entity.prevention.fields.f_number' => '番号',
			'entity.prevention.fields.f_title' => '件名',
			'entity.prevention.fields.f_detail' => '詳細',
			'entity.prevention.fields.f_remarks' => '備考',
			'entity.preventiondetail.title' => '未然防止処置',
			'entity.preventiondetail.fields.f_number' => '番号',
			'entity.preventiondetail.fields.f_trans_risk_id' => 'リスク',
			'entity.preventiondetail.fields.f_info_department_id' => '組織情報',
			'entity.preventiondetail.fields.f_start_at' => '開始日',
			'entity.preventiondetail.fields.f_stop_at' => '終了日',
			'entity.preventiondetail.fields.f_title' => '件名',
			'entity.preventiondetail.fields.f_detail' => '詳細',
			'entity.preventiondetail.fields.f_remarks' => '備考',
			'entity.auditstdcheck.title' => '監査標準項目',
			'entity.auditstdcheck.fields.f_code' => '監査標準項目コード',
			'entity.auditstdcheck.fields.f_control_code' => '管理コード',
			'entity.auditstdcheck.fields.f_name' => '標準項目名称',
			'entity.auditstdcheck.fields.f_pronunciation' => '読み',
			'entity.auditstdcheck.fields.f_nickname' => '略称',
			'entity.auditstdcheck.fields.f_mstr_audit_std_id' => '監査標準',
			'entity.auditstdcheck.fields.f_detail' => '詳細',
			'entity.auditstdcheck.fields.f_type_class' => '型',
			'entity.auditstdcheck.fields.f_formula_class' => '式',
			'entity.auditstdcheck.fields.f_arg_class' => '引数',
			'entity.auditstdcheck.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
