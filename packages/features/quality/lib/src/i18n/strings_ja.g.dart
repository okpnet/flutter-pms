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
	late final QualityStrings$auditRun$ja auditRun = QualityStrings$auditRun$ja.internal(_root);
	late final QualityStrings$auditNotice$ja auditNotice = QualityStrings$auditNotice$ja.internal(_root);
	late final QualityStrings$auditPlan$ja auditPlan = QualityStrings$auditPlan$ja.internal(_root);
	late final QualityStrings$menu$ja menu = QualityStrings$menu$ja.internal(_root);
	late final QualityStrings$entity$ja entity = QualityStrings$entity$ja.internal(_root);
}

// Path: auditRun
class QualityStrings$auditRun$ja {
	QualityStrings$auditRun$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '自分の監査'
	String get myTitle => '自分の監査';

	/// ja: '自分のチームに割り当てられた監査です。実施中のものを上に、予定日の近い順に並びます。'
	String get myHint => '自分のチームに割り当てられた監査です。実施中のものを上に、予定日の近い順に並びます。';

	/// ja: '実施中'
	String get sectionInProgress => '実施中';

	/// ja: '予定'
	String get sectionPlanned => '予定';

	/// ja: '完了'
	String get sectionDone => '完了';

	/// ja: '割り当てられた監査はありません。'
	String get empty => '割り当てられた監査はありません。';

	/// ja: '監査を読み込めませんでした。'
	String get loadFailed => '監査を読み込めませんでした。';

	/// ja: '再読み込み'
	String get refresh => '再読み込み';

	/// ja: '実施中'
	String get statusInProgress => '実施中';

	/// ja: '予定'
	String get statusPlanned => '予定';

	/// ja: '完了'
	String get statusDone => '完了';

	/// ja: '予定超過'
	String get statusOverdue => '予定超過';

	/// ja: 'チーム: ${name}'
	String team({required Object name}) => 'チーム: ${name}';

	/// ja: '予定: ${date}'
	String scheduled({required Object date}) => '予定: ${date}';

	/// ja: '実施: ${date}'
	String performed({required Object date}) => '実施: ${date}';

	/// ja: '入力済み ${done} / ${total} 項目'
	String progress({required Object done, required Object total}) => '入力済み ${done} / ${total} 項目';

	/// ja: '監査の実施'
	String get runTitle => '監査の実施';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '項目'
	String get tabItems => '項目';

	/// ja: '異常'
	String get tabComplaints => '異常';

	/// ja: '実施を開始'
	String get start => '実施を開始';

	/// ja: '実施を終了'
	String get finish => '実施を終了';

	/// ja: '結論'
	String get conclusion => '結論';

	/// ja: '監査の実施を終了'
	String get finishTitle => '監査の実施を終了';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '終了する'
	String get ok => '終了する';

	/// ja: '項目がありません。実施を開始すると、監査標準の項目が用意されます。'
	String get noItems => '項目がありません。実施を開始すると、監査標準の項目が用意されます。';

	/// ja: '値'
	String get itemValue => '値';

	/// ja: '基準: ${expr}'
	String expected({required Object expr}) => '基準: ${expr}';

	/// ja: 'はい'
	String get yes => 'はい';

	/// ja: 'いいえ'
	String get no => 'いいえ';

	/// ja: '適合'
	String get judgePass => '適合';

	/// ja: '不適合'
	String get judgeFail => '不適合';

	/// ja: '所見(コメント)'
	String get itemFindings => '所見(コメント)';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '保存できませんでした。'
	String get saveFailed => '保存できませんでした。';

	/// ja: '入力済み'
	String get answered => '入力済み';

	/// ja: '未入力'
	String get unanswered => '未入力';

	/// ja: '異常 ${n} 件'
	String complaintCount({required Object n}) => '異常 ${n} 件';

	/// ja: '異常を入力'
	String get enterComplaint => '異常を入力';

	/// ja: '項目へ戻る'
	String get backToItem => '項目へ戻る';

	/// ja: '対象の項目'
	String get complaintItem => '対象の項目';

	/// ja: '異常の題名'
	String get complaintTitle => '異常の題名';

	/// ja: '内容'
	String get complaintDetails => '内容';

	/// ja: '異常を登録'
	String get register => '異常を登録';

	/// ja: '登録しました。'
	String get registered => '登録しました。';

	/// ja: '登録できませんでした。'
	String get registerFailed => '登録できませんでした。';

	/// ja: '題名を入れてください。'
	String get titleRequired => '題名を入れてください。';

	/// ja: '対象の項目を選んでください。'
	String get itemRequired => '対象の項目を選んでください。';

	/// ja: 'この項目の異常'
	String get complaintsOfItem => 'この項目の異常';

	/// ja: 'この項目に異常はありません。'
	String get noComplaints => 'この項目に異常はありません。';

	/// ja: '操作できませんでした。'
	String get actionFailed => '操作できませんでした。';
}

// Path: auditNotice
class QualityStrings$auditNotice$ja {
	QualityStrings$auditNotice$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査の予定が ${n} 件あります'
	String summary({required Object n}) => '監査の予定が ${n} 件あります';

	/// ja: '自分の監査'
	String get all => '自分の監査';

	/// ja: '予定超過'
	String get overdue => '予定超過';

	/// ja: '実施中'
	String get inProgress => '実施中';

	/// ja: '今日'
	String get today => '今日';

	/// ja: 'あと ${n} 日'
	String inDays({required Object n}) => 'あと ${n} 日';
}

// Path: auditPlan
class QualityStrings$auditPlan$ja {
	QualityStrings$auditPlan$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査計画の登録'
	String get title => '監査計画の登録';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '監査の題名・監査標準・チームと予定を入れて登録します。1 行が、チーム 1 つ(監査員つき)と、その予定の監査実施 1 件になります。'
	String get hint => '監査の題名・監査標準・チームと予定を入れて登録します。1 行が、チーム 1 つ(監査員つき)と、その予定の監査実施 1 件になります。';

	/// ja: '選択肢を読み込めませんでした。'
	String get loadFailed => '選択肢を読み込めませんでした。';

	/// ja: '監査の題名'
	String get fieldTitle => '監査の題名';

	/// ja: '詳細'
	String get fieldDetails => '詳細';

	/// ja: '監査標準'
	String get fieldStandard => '監査標準';

	/// ja: 'チームと予定'
	String get lines => 'チームと予定';

	/// ja: '行を追加'
	String get addLine => '行を追加';

	/// ja: 'この行を削除'
	String get removeLine => 'この行を削除';

	/// ja: 'チーム ${n}'
	String line({required Object n}) => 'チーム ${n}';

	/// ja: 'チーム名'
	String get teamName => 'チーム名';

	/// ja: '監査員'
	String get auditors => '監査員';

	/// ja: '監査員を選ぶ'
	String get pickAuditors => '監査員を選ぶ';

	/// ja: '監査員が選ばれていません'
	String get noAuditors => '監査員が選ばれていません';

	/// ja: '予定日時'
	String get scheduledAt => '予定日時';

	/// ja: '終了予定日時'
	String get expectedEndAt => '終了予定日時';

	/// ja: '選ぶ'
	String get pickDate => '選ぶ';

	/// ja: '消す'
	String get clearDate => '消す';

	/// ja: '未設定'
	String get notSet => '未設定';

	/// ja: '登録'
	String get register => '登録';

	/// ja: '登録しました。'
	String get registered => '登録しました。';

	/// ja: '登録できませんでした。'
	String get registerFailed => '登録できませんでした。';

	/// ja: '自分の監査へ'
	String get goMyAudits => '自分の監査へ';

	/// ja: '題名を入れてください。'
	String get errTitle => '題名を入れてください。';

	/// ja: '監査標準を選んでください。'
	String get errStandard => '監査標準を選んでください。';

	/// ja: '行を 1 行以上入れてください。'
	String get errLines => '行を 1 行以上入れてください。';

	/// ja: 'チーム名を入れてください。'
	String get errTeam => 'チーム名を入れてください。';

	/// ja: '監査員を選んでください。'
	String get errAuditor => '監査員を選んでください。';

	/// ja: '終了予定が予定より前です。'
	String get errPeriod => '終了予定が予定より前です。';

	/// ja: '監査員の選択'
	String get pickerTitle => '監査員の選択';

	/// ja: '決定'
	String get ok => '決定';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';
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

	/// ja: '報告者'
	String get f_reporter_staff_id => '報告者';

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

	/// ja: '受領者'
	String get f_receive_staff_id => '受領者';

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

	/// ja: '利害関係者'
	String get f_stakeholder_id => '利害関係者';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.compfile.fields
class QualityStrings$entity$compfile$fields$ja {
	QualityStrings$entity$compfile$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

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

	/// ja: '監査標準'
	String get f_audit_std_id => '監査標準';

	/// ja: 'メンバー区分'
	String get f_ccategory => 'メンバー区分';

	/// ja: '監査メンバー'
	String get f_staff_id => '監査メンバー';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.audit.fields
class QualityStrings$entity$audit$fields$ja {
	QualityStrings$entity$audit$fields$ja.internal(this._root);

	final QualityStrings _root; // ignore: unused_field

	// Translations

	/// ja: '監査標準'
	String get f_audit_std_id => '監査標準';

	/// ja: '監査責任者'
	String get f_staff_id => '監査責任者';

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
			'auditRun.myTitle' => '自分の監査',
			'auditRun.myHint' => '自分のチームに割り当てられた監査です。実施中のものを上に、予定日の近い順に並びます。',
			'auditRun.sectionInProgress' => '実施中',
			'auditRun.sectionPlanned' => '予定',
			'auditRun.sectionDone' => '完了',
			'auditRun.empty' => '割り当てられた監査はありません。',
			'auditRun.loadFailed' => '監査を読み込めませんでした。',
			'auditRun.refresh' => '再読み込み',
			'auditRun.statusInProgress' => '実施中',
			'auditRun.statusPlanned' => '予定',
			'auditRun.statusDone' => '完了',
			'auditRun.statusOverdue' => '予定超過',
			'auditRun.team' => ({required Object name}) => 'チーム: ${name}',
			'auditRun.scheduled' => ({required Object date}) => '予定: ${date}',
			'auditRun.performed' => ({required Object date}) => '実施: ${date}',
			'auditRun.progress' => ({required Object done, required Object total}) => '入力済み ${done} / ${total} 項目',
			'auditRun.runTitle' => '監査の実施',
			'auditRun.back' => '戻る',
			'auditRun.tabItems' => '項目',
			'auditRun.tabComplaints' => '異常',
			'auditRun.start' => '実施を開始',
			'auditRun.finish' => '実施を終了',
			'auditRun.conclusion' => '結論',
			'auditRun.finishTitle' => '監査の実施を終了',
			'auditRun.cancel' => 'キャンセル',
			'auditRun.ok' => '終了する',
			'auditRun.noItems' => '項目がありません。実施を開始すると、監査標準の項目が用意されます。',
			'auditRun.itemValue' => '値',
			'auditRun.expected' => ({required Object expr}) => '基準: ${expr}',
			'auditRun.yes' => 'はい',
			'auditRun.no' => 'いいえ',
			'auditRun.judgePass' => '適合',
			'auditRun.judgeFail' => '不適合',
			'auditRun.itemFindings' => '所見(コメント)',
			'auditRun.save' => '保存',
			'auditRun.saved' => '保存しました。',
			'auditRun.saveFailed' => '保存できませんでした。',
			'auditRun.answered' => '入力済み',
			'auditRun.unanswered' => '未入力',
			'auditRun.complaintCount' => ({required Object n}) => '異常 ${n} 件',
			'auditRun.enterComplaint' => '異常を入力',
			'auditRun.backToItem' => '項目へ戻る',
			'auditRun.complaintItem' => '対象の項目',
			'auditRun.complaintTitle' => '異常の題名',
			'auditRun.complaintDetails' => '内容',
			'auditRun.register' => '異常を登録',
			'auditRun.registered' => '登録しました。',
			'auditRun.registerFailed' => '登録できませんでした。',
			'auditRun.titleRequired' => '題名を入れてください。',
			'auditRun.itemRequired' => '対象の項目を選んでください。',
			'auditRun.complaintsOfItem' => 'この項目の異常',
			'auditRun.noComplaints' => 'この項目に異常はありません。',
			'auditRun.actionFailed' => '操作できませんでした。',
			'auditNotice.summary' => ({required Object n}) => '監査の予定が ${n} 件あります',
			'auditNotice.all' => '自分の監査',
			'auditNotice.overdue' => '予定超過',
			'auditNotice.inProgress' => '実施中',
			'auditNotice.today' => '今日',
			'auditNotice.inDays' => ({required Object n}) => 'あと ${n} 日',
			'auditPlan.title' => '監査計画の登録',
			'auditPlan.back' => '戻る',
			'auditPlan.hint' => '監査の題名・監査標準・チームと予定を入れて登録します。1 行が、チーム 1 つ(監査員つき)と、その予定の監査実施 1 件になります。',
			'auditPlan.loadFailed' => '選択肢を読み込めませんでした。',
			'auditPlan.fieldTitle' => '監査の題名',
			'auditPlan.fieldDetails' => '詳細',
			'auditPlan.fieldStandard' => '監査標準',
			'auditPlan.lines' => 'チームと予定',
			'auditPlan.addLine' => '行を追加',
			'auditPlan.removeLine' => 'この行を削除',
			'auditPlan.line' => ({required Object n}) => 'チーム ${n}',
			'auditPlan.teamName' => 'チーム名',
			'auditPlan.auditors' => '監査員',
			'auditPlan.pickAuditors' => '監査員を選ぶ',
			'auditPlan.noAuditors' => '監査員が選ばれていません',
			'auditPlan.scheduledAt' => '予定日時',
			'auditPlan.expectedEndAt' => '終了予定日時',
			'auditPlan.pickDate' => '選ぶ',
			'auditPlan.clearDate' => '消す',
			'auditPlan.notSet' => '未設定',
			'auditPlan.register' => '登録',
			'auditPlan.registered' => '登録しました。',
			'auditPlan.registerFailed' => '登録できませんでした。',
			'auditPlan.goMyAudits' => '自分の監査へ',
			'auditPlan.errTitle' => '題名を入れてください。',
			'auditPlan.errStandard' => '監査標準を選んでください。',
			'auditPlan.errLines' => '行を 1 行以上入れてください。',
			'auditPlan.errTeam' => 'チーム名を入れてください。',
			'auditPlan.errAuditor' => '監査員を選んでください。',
			'auditPlan.errPeriod' => '終了予定が予定より前です。',
			'auditPlan.pickerTitle' => '監査員の選択',
			'auditPlan.ok' => '決定',
			'auditPlan.cancel' => 'キャンセル',
			'menu.group' => '品質管理',
			'entity.complaint.title' => '異常',
			'entity.complaint.fields.f_occurent_at' => '発生年月日',
			'entity.complaint.fields.f_title' => '件名',
			'entity.complaint.fields.f_detail' => '詳細',
			'entity.complaint.fields.f_reporter_staff_id' => '報告者',
			'entity.complaint.fields.f_remarks' => '備考',
			'entity.compreceive.title' => '異常報告受領',
			'entity.compreceive.fields.f_receive_at' => '受領日',
			'entity.compreceive.fields.f_receive_staff_id' => '受領者',
			'entity.compreceive.fields.f_detail' => '詳細',
			'entity.compreceive.fields.f_remarks' => '備考',
			'entity.compstake.title' => '利害関係者苦情',
			'entity.compstake.fields.f_stakeholder_id' => '利害関係者',
			'entity.compstake.fields.f_remarks' => '備考',
			'entity.compfile.title' => '異常報告ファイル',
			'entity.compfile.fields.f_file' => 'ファイル',
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
			'entity.auditor.fields.f_audit_std_id' => '監査標準',
			'entity.auditor.fields.f_ccategory' => 'メンバー区分',
			'entity.auditor.fields.f_staff_id' => '監査メンバー',
			'entity.auditor.fields.f_remarks' => '備考',
			'entity.audit.title' => '監査',
			'entity.audit.fields.f_audit_std_id' => '監査標準',
			'entity.audit.fields.f_staff_id' => '監査責任者',
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
