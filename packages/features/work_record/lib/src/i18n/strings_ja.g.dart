///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef WorkRecordStringsJa = WorkRecordStrings; // ignore: unused_element
class WorkRecordStrings with BaseTranslations<WorkRecordLocale, WorkRecordStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [WorkRecordLocale.build] is preferred.
	WorkRecordStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<WorkRecordLocale, WorkRecordStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: WorkRecordLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<WorkRecordLocale, WorkRecordStrings> _meta;
	@override TranslationMetadata<WorkRecordLocale, WorkRecordStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final WorkRecordStrings _root = this; // ignore: unused_field

	WorkRecordStrings $copyWith({TranslationMetadata<WorkRecordLocale, WorkRecordStrings>? meta}) => WorkRecordStrings(meta: meta ?? this.$meta);

	// Translations
	late final WorkRecordStrings$pick$ja pick = WorkRecordStrings$pick$ja.internal(_root);
	late final WorkRecordStrings$register$ja register = WorkRecordStrings$register$ja.internal(_root);
	late final WorkRecordStrings$menu$ja menu = WorkRecordStrings$menu$ja.internal(_root);
	late final WorkRecordStrings$entity$ja entity = WorkRecordStrings$entity$ja.internal(_root);
}

// Path: pick
class WorkRecordStrings$pick$ja {
	WorkRecordStrings$pick$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業実績'
	String get workRecord => '作業実績';

	/// ja: 'ロット'
	String get lot => 'ロット';

	/// ja: 'シンボル'
	String get symbol => 'シンボル';

	/// ja: '数量'
	String get quantity => '数量';

	/// ja: '回'
	String get nthTime => '回';

	/// ja: '開始日'
	String get startAt => '開始日';

	/// ja: '出庫許可'
	String get release => '出庫許可';
}

// Path: register
class WorkRecordStrings$register$ja {
	WorkRecordStrings$register$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '実績登録'
	String get title => '実績登録';

	/// ja: '生産計画がありません。'
	String get empty => '生産計画がありません。';

	/// ja: '読み込めませんでした。'
	String get loadFailed => '読み込めませんでした。';

	/// ja: '再読み込み'
	String get retry => '再読み込み';

	late final WorkRecordStrings$register$plan$ja plan = WorkRecordStrings$register$plan$ja.internal(_root);
	late final WorkRecordStrings$register$step$ja step = WorkRecordStrings$register$step$ja.internal(_root);
	late final WorkRecordStrings$register$status$ja status = WorkRecordStrings$register$status$ja.internal(_root);
	late final WorkRecordStrings$register$action$ja action = WorkRecordStrings$register$action$ja.internal(_root);
	late final WorkRecordStrings$register$history$ja history = WorkRecordStrings$register$history$ja.internal(_root);
	late final WorkRecordStrings$register$start$ja start = WorkRecordStrings$register$start$ja.internal(_root);
	late final WorkRecordStrings$register$finish$ja finish = WorkRecordStrings$register$finish$ja.internal(_root);
	late final WorkRecordStrings$register$picker$ja picker = WorkRecordStrings$register$picker$ja.internal(_root);
	late final WorkRecordStrings$register$outcome$ja outcome = WorkRecordStrings$register$outcome$ja.internal(_root);
	late final WorkRecordStrings$register$error$ja error = WorkRecordStrings$register$error$ja.internal(_root);
}

// Path: menu
class WorkRecordStrings$menu$ja {
	WorkRecordStrings$menu$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業実績'
	String get group => '作業実績';
}

// Path: entity
class WorkRecordStrings$entity$ja {
	WorkRecordStrings$entity$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations
	late final WorkRecordStrings$entity$container$ja container = WorkRecordStrings$entity$container$ja.internal(_root);
	late final WorkRecordStrings$entity$invapply$ja invapply = WorkRecordStrings$entity$invapply$ja.internal(_root);
	late final WorkRecordStrings$entity$invreq$ja invreq = WorkRecordStrings$entity$invreq$ja.internal(_root);
	late final WorkRecordStrings$entity$certificate$ja certificate = WorkRecordStrings$entity$certificate$ja.internal(_root);
	late final WorkRecordStrings$entity$workrec$ja workrec = WorkRecordStrings$entity$workrec$ja.internal(_root);
	late final WorkRecordStrings$entity$wrcert$ja wrcert = WorkRecordStrings$entity$wrcert$ja.internal(_root);
	late final WorkRecordStrings$entity$mrpvisiter$ja mrpvisiter = WorkRecordStrings$entity$mrpvisiter$ja.internal(_root);
	late final WorkRecordStrings$entity$stockstatus$ja stockstatus = WorkRecordStrings$entity$stockstatus$ja.internal(_root);
}

// Path: register.plan
class WorkRecordStrings$register$plan$ja {
	WorkRecordStrings$register$plan$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '計画番号'
	String get no => '計画番号';

	/// ja: '品目'
	String get item => '品目';

	/// ja: '注文'
	String get order => '注文';

	/// ja: '顧客'
	String get customer => '顧客';

	/// ja: '生産数量'
	String get quantity => '生産数量';

	/// ja: '最終工程の完了'
	String get completed => '最終工程の完了';

	/// ja: '完了期限'
	String get due => '完了期限';

	/// ja: '実施中の工程'
	String get inProgress => '実施中の工程';
}

// Path: register.step
class WorkRecordStrings$register$step$ja {
	WorkRecordStrings$register$step$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程順'
	String get sequence => '工程順';

	/// ja: '工程'
	String get process => '工程';

	/// ja: '状態'
	String get status => '状態';

	/// ja: '予定作業時間(分)'
	String get planned => '予定作業時間(分)';

	/// ja: '開始予定'
	String get startPlan => '開始予定';

	/// ja: '完了予定'
	String get finishPlan => '完了予定';

	/// ja: '設備'
	String get equipment => '設備';

	/// ja: '実績(回数)'
	String get rounds => '実績(回数)';

	/// ja: '担当者'
	String get staff => '担当者';

	/// ja: 'コンテナ'
	String get container => 'コンテナ';

	/// ja: '開始'
	String get startedAt => '開始';

	/// ja: '完了'
	String get finishedAt => '完了';

	/// ja: '実績登録'
	String get actions => '実績登録';
}

// Path: register.status
class WorkRecordStrings$register$status$ja {
	WorkRecordStrings$register$status$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未着手'
	String get notStarted => '未着手';

	/// ja: '実施中'
	String get inProgress => '実施中';

	/// ja: '完了'
	String get completed => '完了';
}

// Path: register.action
class WorkRecordStrings$register$action$ja {
	WorkRecordStrings$register$action$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '開始'
	String get start => '開始';

	/// ja: '終了'
	String get finish => '終了';

	/// ja: '探して開始'
	String get search => '探して開始';

	/// ja: '実績'
	String get history => '実績';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '閉じる'
	String get close => '閉じる';
}

// Path: register.history
class WorkRecordStrings$register$history$ja {
	WorkRecordStrings$register$history$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '実績: ${process}'
	String title({required Object process}) => '実績: ${process}';

	/// ja: '実績はまだありません。'
	String get empty => '実績はまだありません。';

	/// ja: '回数'
	String get round => '回数';

	/// ja: '実績番号'
	String get resultNo => '実績番号';

	/// ja: '開始'
	String get startedAt => '開始';

	/// ja: '終了'
	String get finishedAt => '終了';

	/// ja: '担当者'
	String get staff => '担当者';

	/// ja: 'コンテナ(払出元)'
	String get container => 'コンテナ(払出元)';

	/// ja: '開始数量'
	String get startQuantity => '開始数量';

	/// ja: '完了数量'
	String get doneQuantity => '完了数量';

	/// ja: '不適合'
	String get defect => '不適合';

	/// ja: '引継ぎ'
	String get handover => '引継ぎ';
}

// Path: register.start
class WorkRecordStrings$register$start$ja {
	WorkRecordStrings$register$start$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '開始: ${process}'
	String title({required Object process}) => '開始: ${process}';

	/// ja: '担当者'
	String get staff => '担当者';

	/// ja: '開始数量'
	String get quantity => '開始数量';

	/// ja: '全量'
	String get quantityAll => '全量';

	/// ja: '取り出せる最大 ${max}(コンテナの在庫 ${stock}、計画の残り ${remaining})'
	String quantityHint({required Object max, required Object stock, required Object remaining}) => '取り出せる最大 ${max}(コンテナの在庫 ${stock}、計画の残り ${remaining})';

	/// ja: '取り出すコンテナ'
	String get container => '取り出すコンテナ';

	/// ja: '引当あり'
	String get reserved => '引当あり';

	/// ja: '在庫 ${n}'
	String stock({required Object n}) => '在庫 ${n}';

	/// ja: 'コンテナを変更・検索'
	String get change => 'コンテナを変更・検索';

	/// ja: '取り出せるコンテナがありません。'
	String get none => '取り出せるコンテナがありません。';

	/// ja: '開始(コンテナ払出)'
	String get submit => '開始(コンテナ払出)';
}

// Path: register.finish
class WorkRecordStrings$register$finish$ja {
	WorkRecordStrings$register$finish$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '終了: ${process}'
	String title({required Object process}) => '終了: ${process}';

	/// ja: '取り出した数量 ${n}(払出元 ${container})'
	String taken({required Object n, required Object container}) => '取り出した数量 ${n}(払出元 ${container})';

	/// ja: '完了数量'
	String get done => '完了数量';

	/// ja: '払出先のコンテナ'
	String get destination => '払出先のコンテナ';

	/// ja: '完了数量が取り出した数量より ${n} 少ない'
	String shortfall({required Object n}) => '完了数量が取り出した数量より ${n} 少ない';

	/// ja: '意図的'
	String get intentional => '意図的';

	/// ja: '不適合'
	String get nonconforming => '不適合';

	/// ja: '理由'
	String get intentionalReason => '理由';

	/// ja: '差の数量を払出元のコンテナへ返します(次の開始で、引継ぎとして取り出せます)。'
	String get intentionalNote => '差の数量を払出元のコンテナへ返します(次の開始で、引継ぎとして取り出せます)。';

	/// ja: '不適合の数量'
	String get defectQuantity => '不適合の数量';

	/// ja: '不適合の理由'
	String get defectReason => '不適合の理由';

	/// ja: '不適合を払い出すコンテナ'
	String get defectContainer => '不適合を払い出すコンテナ';

	/// ja: '不適合に満たない ${n} は払出元へ返します。'
	String returnNote({required Object n}) => '不適合に満たない ${n} は払出元へ返します。';

	/// ja: '終了を登録(コンテナ払出)'
	String get submit => '終了を登録(コンテナ払出)';
}

// Path: register.picker
class WorkRecordStrings$register$picker$ja {
	WorkRecordStrings$register$picker$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コンテナの選択'
	String get title => 'コンテナの選択';

	/// ja: 'コンテナ'
	String get name => 'コンテナ';

	/// ja: '場所'
	String get location => '場所';

	/// ja: '内容'
	String get contents => '内容';

	/// ja: '在庫数'
	String get quantity => '在庫数';

	/// ja: '引当'
	String get reserved => '引当';

	/// ja: '取り出せない理由'
	String get reason => '取り出せない理由';

	/// ja: 'このコンテナは取り出せません。'
	String get unavailable => 'このコンテナは取り出せません。';
}

// Path: register.outcome
class WorkRecordStrings$register$outcome$ja {
	WorkRecordStrings$register$outcome$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '登録結果'
	String get title => '登録結果';

	/// ja: '開始を登録しました'
	String get startedTitle => '開始を登録しました';

	/// ja: '終了を登録しました'
	String get finishedTitle => '終了を登録しました';

	/// ja: '実績 ${no}(第${round}回)'
	String result({required Object no, required Object round}) => '実績 ${no}(第${round}回)';

	/// ja: '${container} から ${n} を払い出しました'
	String issuedFrom({required Object container, required Object n}) => '${container} から ${n} を払い出しました';

	/// ja: '${container} へ ${n} を払い出しました'
	String issuedTo({required Object container, required Object n}) => '${container} へ ${n} を払い出しました';

	/// ja: '工程異常 ${no}: ${n} を ${container} へ払い出しました'
	String defect({required Object no, required Object n, required Object container}) => '工程異常 ${no}: ${n} を ${container} へ払い出しました';

	/// ja: '${container} へ ${n} を返しました'
	String returned({required Object container, required Object n}) => '${container} へ ${n} を返しました';

	/// ja: 'この工程は完了しました。'
	String get stepCompleted => 'この工程は完了しました。';

	/// ja: '更新件数 ${n} 件'
	String updated({required Object n}) => '更新件数 ${n} 件';
}

// Path: register.error
class WorkRecordStrings$register$error$ja {
	WorkRecordStrings$register$error$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '入力してください。'
	String get required => '入力してください。';

	/// ja: '1 以上を入力してください。'
	String get notPositive => '1 以上を入力してください。';

	/// ja: 'コンテナの在庫を超えています。'
	String get overStock => 'コンテナの在庫を超えています。';

	/// ja: '計画の残りを超えています。'
	String get overRemaining => '計画の残りを超えています。';

	/// ja: '取り出した数量を超えています。'
	String get overTaken => '取り出した数量を超えています。';

	/// ja: 'このコンテナは取り出せません。'
	String get notAvailable => 'このコンテナは取り出せません。';

	/// ja: '理由を選んでください。'
	String get reasonRequired => '理由を選んでください。';

	/// ja: '不足している数量を超えています。'
	String get overShortfall => '不足している数量を超えています。';

	/// ja: '意図的か不適合かを選んでください。'
	String get shortfallRequired => '意図的か不適合かを選んでください。';

	/// ja: '登録できませんでした: ${reason}。入力は残してあります。もう一度登録できます。'
	String failed({required Object reason}) => '登録できませんでした: ${reason}。入力は残してあります。もう一度登録できます。';
}

// Path: entity.container
class WorkRecordStrings$entity$container$ja {
	WorkRecordStrings$entity$container$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コンテナ'
	String get title => 'コンテナ';

	late final WorkRecordStrings$entity$container$fields$ja fields = WorkRecordStrings$entity$container$fields$ja.internal(_root);
}

// Path: entity.invapply
class WorkRecordStrings$entity$invapply$ja {
	WorkRecordStrings$entity$invapply$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引き当て'
	String get title => '引き当て';

	late final WorkRecordStrings$entity$invapply$fields$ja fields = WorkRecordStrings$entity$invapply$fields$ja.internal(_root);
}

// Path: entity.invreq
class WorkRecordStrings$entity$invreq$ja {
	WorkRecordStrings$entity$invreq$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引き当て予約'
	String get title => '引き当て予約';

	late final WorkRecordStrings$entity$invreq$fields$ja fields = WorkRecordStrings$entity$invreq$fields$ja.internal(_root);
}

// Path: entity.certificate
class WorkRecordStrings$entity$certificate$ja {
	WorkRecordStrings$entity$certificate$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '成績書'
	String get title => '成績書';

	late final WorkRecordStrings$entity$certificate$fields$ja fields = WorkRecordStrings$entity$certificate$fields$ja.internal(_root);
}

// Path: entity.workrec
class WorkRecordStrings$entity$workrec$ja {
	WorkRecordStrings$entity$workrec$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業実績'
	String get title => '作業実績';

	late final WorkRecordStrings$entity$workrec$fields$ja fields = WorkRecordStrings$entity$workrec$fields$ja.internal(_root);
}

// Path: entity.wrcert
class WorkRecordStrings$entity$wrcert$ja {
	WorkRecordStrings$entity$wrcert$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業成績書'
	String get title => '作業成績書';

	late final WorkRecordStrings$entity$wrcert$fields$ja fields = WorkRecordStrings$entity$wrcert$fields$ja.internal(_root);
}

// Path: entity.mrpvisiter
class WorkRecordStrings$entity$mrpvisiter$ja {
	WorkRecordStrings$entity$mrpvisiter$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ビジター品目'
	String get title => 'ビジター品目';

	late final WorkRecordStrings$entity$mrpvisiter$fields$ja fields = WorkRecordStrings$entity$mrpvisiter$fields$ja.internal(_root);
}

// Path: entity.stockstatus
class WorkRecordStrings$entity$stockstatus$ja {
	WorkRecordStrings$entity$stockstatus$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '在庫状況'
	String get title => '在庫状況';

	late final WorkRecordStrings$entity$stockstatus$fields$ja fields = WorkRecordStrings$entity$stockstatus$fields$ja.internal(_root);
}

// Path: entity.container.fields
class WorkRecordStrings$entity$container$fields$ja {
	WorkRecordStrings$entity$container$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: 'コンテナ名称'
	String get f_name => 'コンテナ名称';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.invapply.fields
class WorkRecordStrings$entity$invapply$fields$ja {
	WorkRecordStrings$entity$invapply$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引当日'
	String get f_register_at => '引当日';

	/// ja: '引当予約'
	String get f_trans_inventory_request_id => '引当予約';

	/// ja: '作業担当者'
	String get f_staff_id => '作業担当者';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.invreq.fields
class WorkRecordStrings$entity$invreq$fields$ja {
	WorkRecordStrings$entity$invreq$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引当予約日'
	String get f_register_at => '引当予約日';

	/// ja: '引当予定日'
	String get f_register_plan_at => '引当予定日';

	/// ja: '購買引き当て'
	String get f_trans_purchase_rez_id => '購買引き当て';

	/// ja: '生産引き当て'
	String get f_trans_product_rez_id => '生産引き当て';

	/// ja: '資材計画'
	String get f_trans_resource_plan_id => '資材計画';

	/// ja: '引当数量'
	String get f_quantity => '引当数量';

	/// ja: '作業担当者'
	String get f_staff_id => '作業担当者';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.certificate.fields
class WorkRecordStrings$entity$certificate$fields$ja {
	WorkRecordStrings$entity$certificate$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'シリアル番号'
	String get f_serial => 'シリアル番号';

	/// ja: '件名'
	String get f_title => '件名';

	/// ja: '区分'
	String get f_class => '区分';

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.workrec.fields
class WorkRecordStrings$entity$workrec$fields$ja {
	WorkRecordStrings$entity$workrec$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産計画詳細'
	String get f_trans_work_plan_id => '生産計画詳細';

	/// ja: '回数'
	String get f_nth_time => '回数';

	/// ja: '開始'
	String get f_start_at => '開始';

	/// ja: '終了'
	String get f_stop_at => '終了';

	/// ja: '作業数量'
	String get f_qty => '作業数量';

	/// ja: '作業担当者'
	String get f_staff_id => '作業担当者';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.wrcert.fields
class WorkRecordStrings$entity$wrcert$fields$ja {
	WorkRecordStrings$entity$wrcert$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '成績書'
	String get f_trans_certificate_id => '成績書';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.mrpvisiter.fields
class WorkRecordStrings$entity$mrpvisiter$fields$ja {
	WorkRecordStrings$entity$mrpvisiter$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '品目数'
	String get f_item_count => '品目数';

	/// ja: '完了'
	String get f_finished => '完了';

	/// ja: '数量'
	String get f_quantity => '数量';
}

// Path: entity.stockstatus.fields
class WorkRecordStrings$entity$stockstatus$fields$ja {
	WorkRecordStrings$entity$stockstatus$fields$ja.internal(this._root);

	final WorkRecordStrings _root; // ignore: unused_field

	// Translations

	/// ja: '場所'
	String get f_location => '場所';

	/// ja: 'コンテナ'
	String get f_container => 'コンテナ';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '在庫数'
	String get f_qty => '在庫数';

	/// ja: '安全在庫'
	String get f_safety => '安全在庫';

	/// ja: '出庫可能数'
	String get f_avail => '出庫可能数';

	/// ja: '引当予約済'
	String get f_reserved => '引当予約済';

	/// ja: '引当予約'
	String get f_reserve => '引当予約';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on WorkRecordStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'pick.workRecord' => '作業実績',
			'pick.lot' => 'ロット',
			'pick.symbol' => 'シンボル',
			'pick.quantity' => '数量',
			'pick.nthTime' => '回',
			'pick.startAt' => '開始日',
			'pick.release' => '出庫許可',
			'register.title' => '実績登録',
			'register.empty' => '生産計画がありません。',
			'register.loadFailed' => '読み込めませんでした。',
			'register.retry' => '再読み込み',
			'register.plan.no' => '計画番号',
			'register.plan.item' => '品目',
			'register.plan.order' => '注文',
			'register.plan.customer' => '顧客',
			'register.plan.quantity' => '生産数量',
			'register.plan.completed' => '最終工程の完了',
			'register.plan.due' => '完了期限',
			'register.plan.inProgress' => '実施中の工程',
			'register.step.sequence' => '工程順',
			'register.step.process' => '工程',
			'register.step.status' => '状態',
			'register.step.planned' => '予定作業時間(分)',
			'register.step.startPlan' => '開始予定',
			'register.step.finishPlan' => '完了予定',
			'register.step.equipment' => '設備',
			'register.step.rounds' => '実績(回数)',
			'register.step.staff' => '担当者',
			'register.step.container' => 'コンテナ',
			'register.step.startedAt' => '開始',
			'register.step.finishedAt' => '完了',
			'register.step.actions' => '実績登録',
			'register.status.notStarted' => '未着手',
			'register.status.inProgress' => '実施中',
			'register.status.completed' => '完了',
			'register.action.start' => '開始',
			'register.action.finish' => '終了',
			'register.action.search' => '探して開始',
			'register.action.history' => '実績',
			'register.action.cancel' => 'キャンセル',
			'register.action.close' => '閉じる',
			'register.history.title' => ({required Object process}) => '実績: ${process}',
			'register.history.empty' => '実績はまだありません。',
			'register.history.round' => '回数',
			'register.history.resultNo' => '実績番号',
			'register.history.startedAt' => '開始',
			'register.history.finishedAt' => '終了',
			'register.history.staff' => '担当者',
			'register.history.container' => 'コンテナ(払出元)',
			'register.history.startQuantity' => '開始数量',
			'register.history.doneQuantity' => '完了数量',
			'register.history.defect' => '不適合',
			'register.history.handover' => '引継ぎ',
			'register.start.title' => ({required Object process}) => '開始: ${process}',
			'register.start.staff' => '担当者',
			'register.start.quantity' => '開始数量',
			'register.start.quantityAll' => '全量',
			'register.start.quantityHint' => ({required Object max, required Object stock, required Object remaining}) => '取り出せる最大 ${max}(コンテナの在庫 ${stock}、計画の残り ${remaining})',
			'register.start.container' => '取り出すコンテナ',
			'register.start.reserved' => '引当あり',
			'register.start.stock' => ({required Object n}) => '在庫 ${n}',
			'register.start.change' => 'コンテナを変更・検索',
			'register.start.none' => '取り出せるコンテナがありません。',
			'register.start.submit' => '開始(コンテナ払出)',
			'register.finish.title' => ({required Object process}) => '終了: ${process}',
			'register.finish.taken' => ({required Object n, required Object container}) => '取り出した数量 ${n}(払出元 ${container})',
			'register.finish.done' => '完了数量',
			'register.finish.destination' => '払出先のコンテナ',
			'register.finish.shortfall' => ({required Object n}) => '完了数量が取り出した数量より ${n} 少ない',
			'register.finish.intentional' => '意図的',
			'register.finish.nonconforming' => '不適合',
			'register.finish.intentionalReason' => '理由',
			'register.finish.intentionalNote' => '差の数量を払出元のコンテナへ返します(次の開始で、引継ぎとして取り出せます)。',
			'register.finish.defectQuantity' => '不適合の数量',
			'register.finish.defectReason' => '不適合の理由',
			'register.finish.defectContainer' => '不適合を払い出すコンテナ',
			'register.finish.returnNote' => ({required Object n}) => '不適合に満たない ${n} は払出元へ返します。',
			'register.finish.submit' => '終了を登録(コンテナ払出)',
			'register.picker.title' => 'コンテナの選択',
			'register.picker.name' => 'コンテナ',
			'register.picker.location' => '場所',
			'register.picker.contents' => '内容',
			'register.picker.quantity' => '在庫数',
			'register.picker.reserved' => '引当',
			'register.picker.reason' => '取り出せない理由',
			'register.picker.unavailable' => 'このコンテナは取り出せません。',
			'register.outcome.title' => '登録結果',
			'register.outcome.startedTitle' => '開始を登録しました',
			'register.outcome.finishedTitle' => '終了を登録しました',
			'register.outcome.result' => ({required Object no, required Object round}) => '実績 ${no}(第${round}回)',
			'register.outcome.issuedFrom' => ({required Object container, required Object n}) => '${container} から ${n} を払い出しました',
			'register.outcome.issuedTo' => ({required Object container, required Object n}) => '${container} へ ${n} を払い出しました',
			'register.outcome.defect' => ({required Object no, required Object n, required Object container}) => '工程異常 ${no}: ${n} を ${container} へ払い出しました',
			'register.outcome.returned' => ({required Object container, required Object n}) => '${container} へ ${n} を返しました',
			'register.outcome.stepCompleted' => 'この工程は完了しました。',
			'register.outcome.updated' => ({required Object n}) => '更新件数 ${n} 件',
			'register.error.required' => '入力してください。',
			'register.error.notPositive' => '1 以上を入力してください。',
			'register.error.overStock' => 'コンテナの在庫を超えています。',
			'register.error.overRemaining' => '計画の残りを超えています。',
			'register.error.overTaken' => '取り出した数量を超えています。',
			'register.error.notAvailable' => 'このコンテナは取り出せません。',
			'register.error.reasonRequired' => '理由を選んでください。',
			'register.error.overShortfall' => '不足している数量を超えています。',
			'register.error.shortfallRequired' => '意図的か不適合かを選んでください。',
			'register.error.failed' => ({required Object reason}) => '登録できませんでした: ${reason}。入力は残してあります。もう一度登録できます。',
			'menu.group' => '作業実績',
			'entity.container.title' => 'コンテナ',
			'entity.container.fields.f_code' => 'コード',
			'entity.container.fields.f_name' => 'コンテナ名称',
			'entity.container.fields.f_remarks' => '備考',
			'entity.invapply.title' => '引き当て',
			'entity.invapply.fields.f_register_at' => '引当日',
			'entity.invapply.fields.f_trans_inventory_request_id' => '引当予約',
			'entity.invapply.fields.f_staff_id' => '作業担当者',
			'entity.invapply.fields.f_remarks' => '備考',
			'entity.invreq.title' => '引き当て予約',
			'entity.invreq.fields.f_register_at' => '引当予約日',
			'entity.invreq.fields.f_register_plan_at' => '引当予定日',
			'entity.invreq.fields.f_trans_purchase_rez_id' => '購買引き当て',
			'entity.invreq.fields.f_trans_product_rez_id' => '生産引き当て',
			'entity.invreq.fields.f_trans_resource_plan_id' => '資材計画',
			'entity.invreq.fields.f_quantity' => '引当数量',
			'entity.invreq.fields.f_staff_id' => '作業担当者',
			'entity.invreq.fields.f_remarks' => '備考',
			'entity.certificate.title' => '成績書',
			'entity.certificate.fields.f_serial' => 'シリアル番号',
			'entity.certificate.fields.f_title' => '件名',
			'entity.certificate.fields.f_class' => '区分',
			'entity.certificate.fields.f_file' => 'ファイル',
			'entity.certificate.fields.f_remarks' => '備考',
			'entity.workrec.title' => '作業実績',
			'entity.workrec.fields.f_trans_work_plan_id' => '生産計画詳細',
			'entity.workrec.fields.f_nth_time' => '回数',
			'entity.workrec.fields.f_start_at' => '開始',
			'entity.workrec.fields.f_stop_at' => '終了',
			'entity.workrec.fields.f_qty' => '作業数量',
			'entity.workrec.fields.f_staff_id' => '作業担当者',
			'entity.workrec.fields.f_remarks' => '備考',
			'entity.wrcert.title' => '作業成績書',
			'entity.wrcert.fields.f_trans_certificate_id' => '成績書',
			'entity.wrcert.fields.f_remarks' => '備考',
			'entity.mrpvisiter.title' => 'ビジター品目',
			'entity.mrpvisiter.fields.f_item' => '品目',
			'entity.mrpvisiter.fields.f_item_count' => '品目数',
			'entity.mrpvisiter.fields.f_finished' => '完了',
			'entity.mrpvisiter.fields.f_quantity' => '数量',
			'entity.stockstatus.title' => '在庫状況',
			'entity.stockstatus.fields.f_location' => '場所',
			'entity.stockstatus.fields.f_container' => 'コンテナ',
			'entity.stockstatus.fields.f_item' => '品目',
			'entity.stockstatus.fields.f_qty' => '在庫数',
			'entity.stockstatus.fields.f_safety' => '安全在庫',
			'entity.stockstatus.fields.f_avail' => '出庫可能数',
			'entity.stockstatus.fields.f_reserved' => '引当予約済',
			'entity.stockstatus.fields.f_reserve' => '引当予約',
			_ => null,
		};
	}
}
