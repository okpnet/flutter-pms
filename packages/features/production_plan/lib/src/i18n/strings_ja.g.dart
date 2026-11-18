///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ProductionPlanStringsJa = ProductionPlanStrings; // ignore: unused_element
class ProductionPlanStrings with BaseTranslations<ProductionPlanLocale, ProductionPlanStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ProductionPlanLocale.build] is preferred.
	ProductionPlanStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ProductionPlanLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings> _meta;
	@override TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ProductionPlanStrings _root = this; // ignore: unused_field

	ProductionPlanStrings $copyWith({TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings>? meta}) => ProductionPlanStrings(meta: meta ?? this.$meta);

	// Translations
	late final ProductionPlanStrings$mrp$ja mrp = ProductionPlanStrings$mrp$ja.internal(_root);
	late final ProductionPlanStrings$menu$ja menu = ProductionPlanStrings$menu$ja.internal(_root);
	late final ProductionPlanStrings$entity$ja entity = ProductionPlanStrings$entity$ja.internal(_root);
}

// Path: mrp
class ProductionPlanStrings$mrp$ja {
	ProductionPlanStrings$mrp$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資材所要計算'
	String get title => '資材所要計算';

	/// ja: '資材所要計算'
	String get menu => '資材所要計算';

	/// ja: '資材所要計算（MRP）'
	String get controlTitle => '資材所要計算（MRP）';

	/// ja: '再MRPとして実行する'
	String get redoLabel => '再MRPとして実行する';

	/// ja: 'チェックなし：まだ計画していない受注だけを計算します（受注MRP）。チェックあり：受注を見直したあとに、すべての需要を作り直します（再MRP）。'
	String get redoNote => 'チェックなし：まだ計画していない受注だけを計算します（受注MRP）。チェックあり：受注を見直したあとに、すべての需要を作り直します（再MRP）。';

	/// ja: 'MRPを実行'
	String get run => 'MRPを実行';

	/// ja: '計算中'
	String get running => '計算中';

	/// ja: '経過時間'
	String get elapsed => '経過時間';

	late final ProductionPlanStrings$mrp$empty$ja empty = ProductionPlanStrings$mrp$empty$ja.internal(_root);
	late final ProductionPlanStrings$mrp$confirm$ja confirm = ProductionPlanStrings$mrp$confirm$ja.internal(_root);
	late final ProductionPlanStrings$mrp$success$ja success = ProductionPlanStrings$mrp$success$ja.internal(_root);
	late final ProductionPlanStrings$mrp$mode$ja mode = ProductionPlanStrings$mrp$mode$ja.internal(_root);
	late final ProductionPlanStrings$mrp$failure$ja failure = ProductionPlanStrings$mrp$failure$ja.internal(_root);
	late final ProductionPlanStrings$mrp$result$ja result = ProductionPlanStrings$mrp$result$ja.internal(_root);
	late final ProductionPlanStrings$mrp$columns$ja columns = ProductionPlanStrings$mrp$columns$ja.internal(_root);
	late final ProductionPlanStrings$mrp$check$ja check = ProductionPlanStrings$mrp$check$ja.internal(_root);
	late final ProductionPlanStrings$mrp$step$ja step = ProductionPlanStrings$mrp$step$ja.internal(_root);
	late final ProductionPlanStrings$mrp$state$ja state = ProductionPlanStrings$mrp$state$ja.internal(_root);
	late final ProductionPlanStrings$mrp$decision$ja decision = ProductionPlanStrings$mrp$decision$ja.internal(_root);
}

// Path: menu
class ProductionPlanStrings$menu$ja {
	ProductionPlanStrings$menu$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産計画'
	String get group => '生産計画';
}

// Path: entity
class ProductionPlanStrings$entity$ja {
	ProductionPlanStrings$entity$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations
	late final ProductionPlanStrings$entity$resplan$ja resplan = ProductionPlanStrings$entity$resplan$ja.internal(_root);
	late final ProductionPlanStrings$entity$opsplan$ja opsplan = ProductionPlanStrings$entity$opsplan$ja.internal(_root);
	late final ProductionPlanStrings$entity$workplan$ja workplan = ProductionPlanStrings$entity$workplan$ja.internal(_root);
	late final ProductionPlanStrings$entity$prodrez$ja prodrez = ProductionPlanStrings$entity$prodrez$ja.internal(_root);
	late final ProductionPlanStrings$entity$purrez$ja purrez = ProductionPlanStrings$entity$purrez$ja.internal(_root);
	late final ProductionPlanStrings$entity$mrppending$ja mrppending = ProductionPlanStrings$entity$mrppending$ja.internal(_root);
	late final ProductionPlanStrings$entity$mrppurchase$ja mrppurchase = ProductionPlanStrings$entity$mrppurchase$ja.internal(_root);
	late final ProductionPlanStrings$entity$mrpissue$ja mrpissue = ProductionPlanStrings$entity$mrpissue$ja.internal(_root);
	late final ProductionPlanStrings$entity$mrpcoverage$ja mrpcoverage = ProductionPlanStrings$entity$mrpcoverage$ja.internal(_root);
	late final ProductionPlanStrings$entity$stockrez$ja stockrez = ProductionPlanStrings$entity$stockrez$ja.internal(_root);
}

// Path: mrp.empty
class ProductionPlanStrings$mrp$empty$ja {
	ProductionPlanStrings$mrp$empty$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'まだ実行していません'
	String get title => 'まだ実行していません';

	/// ja: '「MRPを実行」を押すと、計算の結果がここに表示されます。'
	String get message => '「MRPを実行」を押すと、計算の結果がここに表示されます。';
}

// Path: mrp.confirm
class ProductionPlanStrings$mrp$confirm$ja {
	ProductionPlanStrings$mrp$confirm$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'MRPを実行しますか？'
	String get titleOrder => 'MRPを実行しますか？';

	/// ja: '再MRPを実行しますか？'
	String get titleRedo => '再MRPを実行しますか？';

	/// ja: '処理が重く、時間がかかります。'
	String get warnHeavy => '処理が重く、時間がかかります。';

	/// ja: '影響が広範囲で、他のユーザーの処理にも影響します。'
	String get warnWide => '影響が広範囲で、他のユーザーの処理にも影響します。';

	/// ja: '再MRPは、すべての需要を作り直します。通常のMRPよりも、影響がさらに大きくなります。'
	String get warnRedo => '再MRPは、すべての需要を作り直します。通常のMRPよりも、影響がさらに大きくなります。';

	/// ja: '実行中は操作も中断もできません。'
	String get warnLock => '実行中は操作も中断もできません。';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '実行する'
	String get go => '実行する';
}

// Path: mrp.success
class ProductionPlanStrings$mrp$success$ja {
	ProductionPlanStrings$mrp$success$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'MRPが成功しました'
	String get title => 'MRPが成功しました';

	/// ja: '実行日時'
	String get at => '実行日時';

	/// ja: '実行区分'
	String get mode => '実行区分';

	/// ja: '提案件数'
	String get count => '提案件数';

	/// ja: '要判断件数'
	String get pending => '要判断件数';

	/// ja: '遅れ件数'
	String get late => '遅れ件数';

	/// ja: '件'
	String get unit => '件';
}

// Path: mrp.mode
class ProductionPlanStrings$mrp$mode$ja {
	ProductionPlanStrings$mrp$mode$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注MRP'
	String get order => '受注MRP';

	/// ja: '再MRP'
	String get redo => '再MRP';
}

// Path: mrp.failure
class ProductionPlanStrings$mrp$failure$ja {
	ProductionPlanStrings$mrp$failure$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '計算を完了できませんでした'
	String get title => '計算を完了できませんでした';

	/// ja: 'しばらく時間をおいて、もう一度実行してください。'
	String get message => 'しばらく時間をおいて、もう一度実行してください。';

	/// ja: '要判断の提案が残っています。採用か却下を決めてから確定してください。'
	String get pendingRemains => '要判断の提案が残っています。採用か却下を決めてから確定してください。';

	/// ja: '計算のあとにデータが更新された、または新しく計算したため、この結果は確定できません。もう一度計算してください。'
	String get cannotCommit => '計算のあとにデータが更新された、または新しく計算したため、この結果は確定できません。もう一度計算してください。';

	/// ja: 'エラーコード'
	String get code => 'エラーコード';
}

// Path: mrp.result
class ProductionPlanStrings$mrp$result$ja {
	ProductionPlanStrings$mrp$result$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'MRPの結果（提案の一覧）'
	String get title => 'MRPの結果（提案の一覧）';

	/// ja: '検索'
	String get search => '検索';

	/// ja: '判断'
	String get decisionFilter => '判断';

	/// ja: 'すべて'
	String get all => 'すべて';

	/// ja: '該当する提案がありません'
	String get noRows => '該当する提案がありません';

	/// ja: '遅れ'
	String get lateYes => '遅れ';

	/// ja: ''
	String get lateNo => '';
}

// Path: mrp.columns
class ProductionPlanStrings$mrp$columns$ja {
	ProductionPlanStrings$mrp$columns$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目コード'
	String get itemCode => '品目コード';

	/// ja: '品目名'
	String get itemName => '品目名';

	/// ja: 'シンボル'
	String get symbol => 'シンボル';

	/// ja: '数量'
	String get quantity => '数量';

	/// ja: '在庫引当'
	String get allocation => '在庫引当';

	/// ja: '必要日'
	String get needDate => '必要日';

	/// ja: '発注日・着手日'
	String get releaseDate => '発注日・着手日';

	/// ja: '納期'
	String get dueDate => '納期';

	/// ja: '遅れ'
	String get late => '遅れ';

	/// ja: '判断が必要'
	String get needUser => '判断が必要';

	/// ja: 'メッセージ'
	String get message => 'メッセージ';

	/// ja: '発注'
	String get purchase => '発注';

	/// ja: '生産'
	String get production => '生産';

	/// ja: '外注'
	String get outsource => '外注';

	/// ja: '資材計画'
	String get plan => '資材計画';

	/// ja: '例外'
	String get exception => '例外';

	/// ja: '支給依頼'
	String get supplyRequest => '支給依頼';

	/// ja: '新規'
	String get isNew => '新規';

	/// ja: '変更'
	String get isChange => '変更';

	/// ja: '取消'
	String get isCancel => '取消';

	/// ja: '維持'
	String get isKeep => '維持';

	/// ja: '切替の選択肢'
	String get isOption => '切替の選択肢';

	/// ja: '設備(過負荷)'
	String get subjectEquipment => '設備(過負荷)';

	/// ja: '在庫(過剰)'
	String get subjectStock => '在庫(過剰)';

	/// ja: 'マスタ(不備)'
	String get subjectMaster => 'マスタ(不備)';
}

// Path: mrp.check
class ProductionPlanStrings$mrp$check$ja {
	ProductionPlanStrings$mrp$check$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '1. 調査（マスタの不備）'
	String get title => '1. 調査（マスタの不備）';

	/// ja: 'MRPの前に、品目のマスタの不備（工程・仕入先・カレンダーなど）を調べます。調べるだけで、何も変えません。不備があってもMRPは実行できますが、結果に「マスタ不備」の提案として出ます。'
	String get note => 'MRPの前に、品目のマスタの不備（工程・仕入先・カレンダーなど）を調べます。調べるだけで、何も変えません。不備があってもMRPは実行できますが、結果に「マスタ不備」の提案として出ます。';

	/// ja: '不備を調べる'
	String get run => '不備を調べる';

	/// ja: '調査中'
	String get running => '調査中';

	/// ja: '不備は見つかりませんでした。'
	String get none => '不備は見つかりませんでした。';

	/// ja: '不備の件数'
	String get count => '不備の件数';

	/// ja: '重いものから30件までを表示しています。'
	String get more => '重いものから30件までを表示しています。';
}

// Path: mrp.step
class ProductionPlanStrings$mrp$step$ja {
	ProductionPlanStrings$mrp$step$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '計算して確認する'
	String get calc => '計算して確認する';

	/// ja: '「MRPを実行」は、要判断が無ければそのまま確定します。「計算して確認する」は、計算だけして、結果を確認・判断してから確定または破棄します。'
	String get calcNote => '「MRPを実行」は、要判断が無ければそのまま確定します。「計算して確認する」は、計算だけして、結果を確認・判断してから確定または破棄します。';

	/// ja: '実行する'
	String get ok => '実行する';

	/// ja: '確定待ちです'
	String get awaitingTitle => '確定待ちです';

	/// ja: '要判断の提案の採用・却下を決めてから、確定します。確定するまで、計画データは変わりません。確定しないで新しく計算すると、この結果は失効します。'
	String get awaitingNote => '要判断の提案の採用・却下を決めてから、確定します。確定するまで、計画データは変わりません。確定しないで新しく計算すると、この結果は失効します。';

	/// ja: '前回の計算の確定待ちを引き継ぎました。'
	String get resumed => '前回の計算の確定待ちを引き継ぎました。';

	/// ja: '判断が残っている提案'
	String get pendingLeft => '判断が残っている提案';

	/// ja: '表示中の要判断を採用'
	String get adoptShown => '表示中の要判断を採用';

	/// ja: '表示中の要判断を却下'
	String get rejectShown => '表示中の要判断を却下';

	/// ja: '確定する'
	String get commit => '確定する';

	/// ja: '確定しますか？'
	String get commitTitle => '確定しますか？';

	/// ja: '採用された提案が、資材計画・発注・生産計画・引当予約に反映されます。'
	String get commitNote => '採用された提案が、資材計画・発注・生産計画・引当予約に反映されます。';

	/// ja: '要判断を却下して確定'
	String get commitForce => '要判断を却下して確定';

	/// ja: '要判断を却下して確定しますか？'
	String get commitForceTitle => '要判断を却下して確定しますか？';

	/// ja: '要判断のまま残っている提案は、すべて却下として確定します。また、計算のあとにデータが更新されたかの確認を省きます。'
	String get commitForceNote => '要判断のまま残っている提案は、すべて却下として確定します。また、計算のあとにデータが更新されたかの確認を省きます。';

	/// ja: '破棄する'
	String get discard => '破棄する';

	/// ja: 'この結果を破棄しますか？'
	String get discardTitle => 'この結果を破棄しますか？';

	/// ja: '計画データは変わりません。'
	String get discardNote => '計画データは変わりません。';
}

// Path: mrp.state
class ProductionPlanStrings$mrp$state$ja {
	ProductionPlanStrings$mrp$state$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '状態'
	String get title => '状態';

	/// ja: '確定済み'
	String get committed => '確定済み';

	/// ja: '確定待ち'
	String get awaiting => '確定待ち';
}

// Path: mrp.decision
class ProductionPlanStrings$mrp$decision$ja {
	ProductionPlanStrings$mrp$decision$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '要判断'
	String get pending => '要判断';

	/// ja: '採用'
	String get adopted => '採用';

	/// ja: '却下'
	String get rejected => '却下';

	/// ja: '情報'
	String get info => '情報';
}

// Path: entity.resplan
class ProductionPlanStrings$entity$resplan$ja {
	ProductionPlanStrings$entity$resplan$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資材計画'
	String get title => '資材計画';

	late final ProductionPlanStrings$entity$resplan$fields$ja fields = ProductionPlanStrings$entity$resplan$fields$ja.internal(_root);
}

// Path: entity.opsplan
class ProductionPlanStrings$entity$opsplan$ja {
	ProductionPlanStrings$entity$opsplan$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産計画'
	String get title => '生産計画';

	late final ProductionPlanStrings$entity$opsplan$fields$ja fields = ProductionPlanStrings$entity$opsplan$fields$ja.internal(_root);
}

// Path: entity.workplan
class ProductionPlanStrings$entity$workplan$ja {
	ProductionPlanStrings$entity$workplan$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産計画明細'
	String get title => '生産計画明細';

	late final ProductionPlanStrings$entity$workplan$fields$ja fields = ProductionPlanStrings$entity$workplan$fields$ja.internal(_root);
}

// Path: entity.prodrez
class ProductionPlanStrings$entity$prodrez$ja {
	ProductionPlanStrings$entity$prodrez$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産引き当て予約'
	String get title => '生産引き当て予約';

	late final ProductionPlanStrings$entity$prodrez$fields$ja fields = ProductionPlanStrings$entity$prodrez$fields$ja.internal(_root);
}

// Path: entity.purrez
class ProductionPlanStrings$entity$purrez$ja {
	ProductionPlanStrings$entity$purrez$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '購買引き当て予約'
	String get title => '購買引き当て予約';

	late final ProductionPlanStrings$entity$purrez$fields$ja fields = ProductionPlanStrings$entity$purrez$fields$ja.internal(_root);
}

// Path: entity.mrppending
class ProductionPlanStrings$entity$mrppending$ja {
	ProductionPlanStrings$entity$mrppending$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '要判断の提案'
	String get title => '要判断の提案';

	late final ProductionPlanStrings$entity$mrppending$fields$ja fields = ProductionPlanStrings$entity$mrppending$fields$ja.internal(_root);
}

// Path: entity.mrppurchase
class ProductionPlanStrings$entity$mrppurchase$ja {
	ProductionPlanStrings$entity$mrppurchase$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注予定'
	String get title => '発注予定';

	late final ProductionPlanStrings$entity$mrppurchase$fields$ja fields = ProductionPlanStrings$entity$mrppurchase$fields$ja.internal(_root);
}

// Path: entity.mrpissue
class ProductionPlanStrings$entity$mrpissue$ja {
	ProductionPlanStrings$entity$mrpissue$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'マスタ不備'
	String get title => 'マスタ不備';

	late final ProductionPlanStrings$entity$mrpissue$fields$ja fields = ProductionPlanStrings$entity$mrpissue$fields$ja.internal(_root);
}

// Path: entity.mrpcoverage
class ProductionPlanStrings$entity$mrpcoverage$ja {
	ProductionPlanStrings$entity$mrpcoverage$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資材計画の充足状況'
	String get title => '資材計画の充足状況';

	late final ProductionPlanStrings$entity$mrpcoverage$fields$ja fields = ProductionPlanStrings$entity$mrpcoverage$fields$ja.internal(_root);
}

// Path: entity.stockrez
class ProductionPlanStrings$entity$stockrez$ja {
	ProductionPlanStrings$entity$stockrez$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引当予約'
	String get title => '引当予約';

	late final ProductionPlanStrings$entity$stockrez$fields$ja fields = ProductionPlanStrings$entity$stockrez$fields$ja.internal(_root);
}

// Path: entity.resplan.fields
class ProductionPlanStrings$entity$resplan$fields$ja {
	ProductionPlanStrings$entity$resplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注明細'
	String get f_trans_order_detail_id => '受注明細';

	/// ja: '非計上明細'
	String get f_trans_unrecognized_detail_id => '非計上明細';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '親生産計画'
	String get f_parent_trans_operations_plan_id => '親生産計画';

	/// ja: '登録日時'
	String get f_register_at => '登録日時';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '在庫数量'
	String get f_inventory_resavation => '在庫数量';

	/// ja: '期限'
	String get f_deadline => '期限';

	/// ja: '品目'
	String get f_item_id => '品目';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.opsplan.fields
class ProductionPlanStrings$entity$opsplan$fields$ja {
	ProductionPlanStrings$entity$opsplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産数量'
	String get f_quantity => '生産数量';

	/// ja: '停止'
	String get f_stop => '停止';

	/// ja: '打ち切り'
	String get f_discontinue => '打ち切り';

	/// ja: '完了期限'
	String get f_deadline => '完了期限';

	/// ja: '備考'
	String get f_remarks => '備考';

	/// ja: '引当予約'
	String get f_reserve => '引当予約';
}

// Path: entity.workplan.fields
class ProductionPlanStrings$entity$workplan$fields$ja {
	ProductionPlanStrings$entity$workplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get f_mstr_task_id => '工程';

	/// ja: '工程順'
	String get f_sequence => '工程順';

	/// ja: '発注明細'
	String get f_trans_purchase_detail_id => '発注明細';

	/// ja: '予定作業時間'
	String get f_interval_plan => '予定作業時間';

	/// ja: '開始予定'
	String get f_start_at => '開始予定';

	/// ja: '完了予定'
	String get f_completion_at => '完了予定';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.prodrez.fields
class ProductionPlanStrings$entity$prodrez$fields$ja {
	ProductionPlanStrings$entity$prodrez$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産計画詳細'
	String get f_trans_work_plan_id => '生産計画詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.purrez.fields
class ProductionPlanStrings$entity$purrez$fields$ja {
	ProductionPlanStrings$entity$purrez$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注明細'
	String get f_trans_purchase_detail_id => '発注明細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.mrppending.fields
class ProductionPlanStrings$entity$mrppending$fields$ja {
	ProductionPlanStrings$entity$mrppending$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '発注'
	String get f_is_purchase => '発注';

	/// ja: '生産'
	String get f_is_production => '生産';

	/// ja: '外注'
	String get f_is_outsource => '外注';

	/// ja: '資材計画'
	String get f_is_plan => '資材計画';

	/// ja: '例外'
	String get f_is_exception => '例外';

	/// ja: '支給依頼'
	String get f_is_supply_request => '支給依頼';

	/// ja: '新規'
	String get f_is_new => '新規';

	/// ja: '変更'
	String get f_is_change => '変更';

	/// ja: '取消'
	String get f_is_cancel => '取消';

	/// ja: '切替の選択肢'
	String get f_is_option => '切替の選択肢';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '必要日'
	String get f_need_at => '必要日';

	/// ja: '発注日（着手日）'
	String get f_release_at => '発注日（着手日）';

	/// ja: '納期'
	String get f_due_at => '納期';

	/// ja: '遅れ'
	String get f_late => '遅れ';

	/// ja: 'メッセージ'
	String get f_message => 'メッセージ';

	/// ja: 'シンボル'
	String get f_symbol => 'シンボル';
}

// Path: entity.mrppurchase.fields
class ProductionPlanStrings$entity$mrppurchase$fields$ja {
	ProductionPlanStrings$entity$mrppurchase$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '提案種別'
	String get f_kind => '提案種別';

	/// ja: 'サプライヤー'
	String get f_supplier => 'サプライヤー';

	/// ja: '発注日'
	String get f_release_date => '発注日';

	/// ja: '納期'
	String get f_due_date => '納期';

	/// ja: '明細数'
	String get f_line_count => '明細数';

	/// ja: '金額'
	String get f_amount => '金額';

	/// ja: '遅れ件数'
	String get f_late_count => '遅れ件数';

	/// ja: '要判断件数'
	String get f_pending_count => '要判断件数';
}

// Path: entity.mrpissue.fields
class ProductionPlanStrings$entity$mrpissue$fields$ja {
	ProductionPlanStrings$entity$mrpissue$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '不備の種類'
	String get f_issue_code => '不備の種類';

	/// ja: '重大度'
	String get f_severity => '重大度';

	/// ja: 'メッセージ'
	String get f_message => 'メッセージ';

	/// ja: '参照先のテーブル'
	String get f_ref_table => '参照先のテーブル';
}

// Path: entity.mrpcoverage.fields
class ProductionPlanStrings$entity$mrpcoverage$fields$ja {
	ProductionPlanStrings$entity$mrpcoverage$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '計画の種別'
	String get f_plan_kind => '計画の種別';

	/// ja: '期限'
	String get f_deadline => '期限';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '在庫引当'
	String get f_reserved_stock => '在庫引当';

	/// ja: '購買引当'
	String get f_reserved_purchase => '購買引当';

	/// ja: '生産引当'
	String get f_reserved_production => '生産引当';

	/// ja: '不足'
	String get f_shortage => '不足';
}

// Path: entity.stockrez.fields
class ProductionPlanStrings$entity$stockrez$fields$ja {
	ProductionPlanStrings$entity$stockrez$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '購買注文明細'
	String get f_purdetail => '購買注文明細';

	/// ja: '生産計画'
	String get f_opsplan => '生産計画';

	/// ja: '引当元の在庫'
	String get f_stock => '引当元の在庫';

	/// ja: '予約日'
	String get f_date => '予約日';

	/// ja: '引当数量'
	String get f_qty => '引当数量';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ProductionPlanStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mrp.title' => '資材所要計算',
			'mrp.menu' => '資材所要計算',
			'mrp.controlTitle' => '資材所要計算（MRP）',
			'mrp.redoLabel' => '再MRPとして実行する',
			'mrp.redoNote' => 'チェックなし：まだ計画していない受注だけを計算します（受注MRP）。チェックあり：受注を見直したあとに、すべての需要を作り直します（再MRP）。',
			'mrp.run' => 'MRPを実行',
			'mrp.running' => '計算中',
			'mrp.elapsed' => '経過時間',
			'mrp.empty.title' => 'まだ実行していません',
			'mrp.empty.message' => '「MRPを実行」を押すと、計算の結果がここに表示されます。',
			'mrp.confirm.titleOrder' => 'MRPを実行しますか？',
			'mrp.confirm.titleRedo' => '再MRPを実行しますか？',
			'mrp.confirm.warnHeavy' => '処理が重く、時間がかかります。',
			'mrp.confirm.warnWide' => '影響が広範囲で、他のユーザーの処理にも影響します。',
			'mrp.confirm.warnRedo' => '再MRPは、すべての需要を作り直します。通常のMRPよりも、影響がさらに大きくなります。',
			'mrp.confirm.warnLock' => '実行中は操作も中断もできません。',
			'mrp.confirm.cancel' => 'キャンセル',
			'mrp.confirm.go' => '実行する',
			'mrp.success.title' => 'MRPが成功しました',
			'mrp.success.at' => '実行日時',
			'mrp.success.mode' => '実行区分',
			'mrp.success.count' => '提案件数',
			'mrp.success.pending' => '要判断件数',
			'mrp.success.late' => '遅れ件数',
			'mrp.success.unit' => '件',
			'mrp.mode.order' => '受注MRP',
			'mrp.mode.redo' => '再MRP',
			'mrp.failure.title' => '計算を完了できませんでした',
			'mrp.failure.message' => 'しばらく時間をおいて、もう一度実行してください。',
			'mrp.failure.pendingRemains' => '要判断の提案が残っています。採用か却下を決めてから確定してください。',
			'mrp.failure.cannotCommit' => '計算のあとにデータが更新された、または新しく計算したため、この結果は確定できません。もう一度計算してください。',
			'mrp.failure.code' => 'エラーコード',
			'mrp.result.title' => 'MRPの結果（提案の一覧）',
			'mrp.result.search' => '検索',
			'mrp.result.decisionFilter' => '判断',
			'mrp.result.all' => 'すべて',
			'mrp.result.noRows' => '該当する提案がありません',
			'mrp.result.lateYes' => '遅れ',
			'mrp.result.lateNo' => '',
			'mrp.columns.itemCode' => '品目コード',
			'mrp.columns.itemName' => '品目名',
			'mrp.columns.symbol' => 'シンボル',
			'mrp.columns.quantity' => '数量',
			'mrp.columns.allocation' => '在庫引当',
			'mrp.columns.needDate' => '必要日',
			'mrp.columns.releaseDate' => '発注日・着手日',
			'mrp.columns.dueDate' => '納期',
			'mrp.columns.late' => '遅れ',
			'mrp.columns.needUser' => '判断が必要',
			'mrp.columns.message' => 'メッセージ',
			'mrp.columns.purchase' => '発注',
			'mrp.columns.production' => '生産',
			'mrp.columns.outsource' => '外注',
			'mrp.columns.plan' => '資材計画',
			'mrp.columns.exception' => '例外',
			'mrp.columns.supplyRequest' => '支給依頼',
			'mrp.columns.isNew' => '新規',
			'mrp.columns.isChange' => '変更',
			'mrp.columns.isCancel' => '取消',
			'mrp.columns.isKeep' => '維持',
			'mrp.columns.isOption' => '切替の選択肢',
			'mrp.columns.subjectEquipment' => '設備(過負荷)',
			'mrp.columns.subjectStock' => '在庫(過剰)',
			'mrp.columns.subjectMaster' => 'マスタ(不備)',
			'mrp.check.title' => '1. 調査（マスタの不備）',
			'mrp.check.note' => 'MRPの前に、品目のマスタの不備（工程・仕入先・カレンダーなど）を調べます。調べるだけで、何も変えません。不備があってもMRPは実行できますが、結果に「マスタ不備」の提案として出ます。',
			'mrp.check.run' => '不備を調べる',
			'mrp.check.running' => '調査中',
			'mrp.check.none' => '不備は見つかりませんでした。',
			'mrp.check.count' => '不備の件数',
			'mrp.check.more' => '重いものから30件までを表示しています。',
			'mrp.step.calc' => '計算して確認する',
			'mrp.step.calcNote' => '「MRPを実行」は、要判断が無ければそのまま確定します。「計算して確認する」は、計算だけして、結果を確認・判断してから確定または破棄します。',
			'mrp.step.ok' => '実行する',
			'mrp.step.awaitingTitle' => '確定待ちです',
			'mrp.step.awaitingNote' => '要判断の提案の採用・却下を決めてから、確定します。確定するまで、計画データは変わりません。確定しないで新しく計算すると、この結果は失効します。',
			'mrp.step.resumed' => '前回の計算の確定待ちを引き継ぎました。',
			'mrp.step.pendingLeft' => '判断が残っている提案',
			'mrp.step.adoptShown' => '表示中の要判断を採用',
			'mrp.step.rejectShown' => '表示中の要判断を却下',
			'mrp.step.commit' => '確定する',
			'mrp.step.commitTitle' => '確定しますか？',
			'mrp.step.commitNote' => '採用された提案が、資材計画・発注・生産計画・引当予約に反映されます。',
			'mrp.step.commitForce' => '要判断を却下して確定',
			'mrp.step.commitForceTitle' => '要判断を却下して確定しますか？',
			'mrp.step.commitForceNote' => '要判断のまま残っている提案は、すべて却下として確定します。また、計算のあとにデータが更新されたかの確認を省きます。',
			'mrp.step.discard' => '破棄する',
			'mrp.step.discardTitle' => 'この結果を破棄しますか？',
			'mrp.step.discardNote' => '計画データは変わりません。',
			'mrp.state.title' => '状態',
			'mrp.state.committed' => '確定済み',
			'mrp.state.awaiting' => '確定待ち',
			'mrp.decision.pending' => '要判断',
			'mrp.decision.adopted' => '採用',
			'mrp.decision.rejected' => '却下',
			'mrp.decision.info' => '情報',
			'menu.group' => '生産計画',
			'entity.resplan.title' => '資材計画',
			'entity.resplan.fields.f_trans_order_detail_id' => '受注明細',
			'entity.resplan.fields.f_trans_unrecognized_detail_id' => '非計上明細',
			'entity.resplan.fields.f_item' => '品目',
			'entity.resplan.fields.f_parent_trans_operations_plan_id' => '親生産計画',
			'entity.resplan.fields.f_register_at' => '登録日時',
			'entity.resplan.fields.f_quantity' => '数量',
			'entity.resplan.fields.f_inventory_resavation' => '在庫数量',
			'entity.resplan.fields.f_deadline' => '期限',
			'entity.resplan.fields.f_item_id' => '品目',
			'entity.resplan.fields.f_remarks' => '備考',
			'entity.opsplan.title' => '生産計画',
			'entity.opsplan.fields.f_quantity' => '生産数量',
			'entity.opsplan.fields.f_stop' => '停止',
			'entity.opsplan.fields.f_discontinue' => '打ち切り',
			'entity.opsplan.fields.f_deadline' => '完了期限',
			'entity.opsplan.fields.f_remarks' => '備考',
			'entity.opsplan.fields.f_reserve' => '引当予約',
			'entity.workplan.title' => '生産計画明細',
			'entity.workplan.fields.f_mstr_task_id' => '工程',
			'entity.workplan.fields.f_sequence' => '工程順',
			'entity.workplan.fields.f_trans_purchase_detail_id' => '発注明細',
			'entity.workplan.fields.f_interval_plan' => '予定作業時間',
			'entity.workplan.fields.f_start_at' => '開始予定',
			'entity.workplan.fields.f_completion_at' => '完了予定',
			'entity.workplan.fields.f_remarks' => '備考',
			'entity.prodrez.title' => '生産引き当て予約',
			'entity.prodrez.fields.f_trans_work_plan_id' => '生産計画詳細',
			'entity.prodrez.fields.f_remarks' => '備考',
			'entity.purrez.title' => '購買引き当て予約',
			'entity.purrez.fields.f_trans_purchase_detail_id' => '発注明細',
			'entity.purrez.fields.f_remarks' => '備考',
			'entity.mrppending.title' => '要判断の提案',
			'entity.mrppending.fields.f_item' => '品目',
			'entity.mrppending.fields.f_is_purchase' => '発注',
			'entity.mrppending.fields.f_is_production' => '生産',
			'entity.mrppending.fields.f_is_outsource' => '外注',
			'entity.mrppending.fields.f_is_plan' => '資材計画',
			'entity.mrppending.fields.f_is_exception' => '例外',
			'entity.mrppending.fields.f_is_supply_request' => '支給依頼',
			'entity.mrppending.fields.f_is_new' => '新規',
			'entity.mrppending.fields.f_is_change' => '変更',
			'entity.mrppending.fields.f_is_cancel' => '取消',
			'entity.mrppending.fields.f_is_option' => '切替の選択肢',
			'entity.mrppending.fields.f_quantity' => '数量',
			'entity.mrppending.fields.f_need_at' => '必要日',
			'entity.mrppending.fields.f_release_at' => '発注日（着手日）',
			'entity.mrppending.fields.f_due_at' => '納期',
			'entity.mrppending.fields.f_late' => '遅れ',
			'entity.mrppending.fields.f_message' => 'メッセージ',
			'entity.mrppending.fields.f_symbol' => 'シンボル',
			'entity.mrppurchase.title' => '発注予定',
			'entity.mrppurchase.fields.f_kind' => '提案種別',
			'entity.mrppurchase.fields.f_supplier' => 'サプライヤー',
			'entity.mrppurchase.fields.f_release_date' => '発注日',
			'entity.mrppurchase.fields.f_due_date' => '納期',
			'entity.mrppurchase.fields.f_line_count' => '明細数',
			'entity.mrppurchase.fields.f_amount' => '金額',
			'entity.mrppurchase.fields.f_late_count' => '遅れ件数',
			'entity.mrppurchase.fields.f_pending_count' => '要判断件数',
			'entity.mrpissue.title' => 'マスタ不備',
			'entity.mrpissue.fields.f_item' => '品目',
			'entity.mrpissue.fields.f_issue_code' => '不備の種類',
			'entity.mrpissue.fields.f_severity' => '重大度',
			'entity.mrpissue.fields.f_message' => 'メッセージ',
			'entity.mrpissue.fields.f_ref_table' => '参照先のテーブル',
			'entity.mrpcoverage.title' => '資材計画の充足状況',
			'entity.mrpcoverage.fields.f_item' => '品目',
			'entity.mrpcoverage.fields.f_plan_kind' => '計画の種別',
			'entity.mrpcoverage.fields.f_deadline' => '期限',
			'entity.mrpcoverage.fields.f_quantity' => '数量',
			'entity.mrpcoverage.fields.f_reserved_stock' => '在庫引当',
			'entity.mrpcoverage.fields.f_reserved_purchase' => '購買引当',
			'entity.mrpcoverage.fields.f_reserved_production' => '生産引当',
			'entity.mrpcoverage.fields.f_shortage' => '不足',
			'entity.stockrez.title' => '引当予約',
			'entity.stockrez.fields.f_purdetail' => '購買注文明細',
			'entity.stockrez.fields.f_opsplan' => '生産計画',
			'entity.stockrez.fields.f_stock' => '引当元の在庫',
			'entity.stockrez.fields.f_date' => '予約日',
			'entity.stockrez.fields.f_qty' => '引当数量',
			'entity.stockrez.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
