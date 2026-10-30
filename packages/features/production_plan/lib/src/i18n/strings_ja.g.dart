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
	late final ProductionPlanStrings$mrp$kind$ja kind = ProductionPlanStrings$mrp$kind$ja.internal(_root);
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

	/// ja: '提案種別'
	String get kind => '提案種別';

	/// ja: '品目コード'
	String get itemCode => '品目コード';

	/// ja: '品目名'
	String get itemName => '品目名';

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

	/// ja: '判断'
	String get decision => '判断';

	/// ja: 'メッセージ'
	String get message => 'メッセージ';
}

// Path: mrp.kind
class ProductionPlanStrings$mrp$kind$ja {
	ProductionPlanStrings$mrp$kind$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注（新規）'
	String get purchaseNew => '発注（新規）';

	/// ja: '生産（新規）'
	String get productionNew => '生産（新規）';

	/// ja: '発注の日程変更'
	String get purchaseReschedule => '発注の日程変更';

	/// ja: '生産の日程変更'
	String get productionReschedule => '生産の日程変更';

	/// ja: '発注の取消'
	String get purchaseCancel => '発注の取消';

	/// ja: '生産の取消'
	String get productionCancel => '生産の取消';

	/// ja: '外注への切替'
	String get outsourceOption => '外注への切替';

	/// ja: '設備の過負荷'
	String get excOverload => '設備の過負荷';

	/// ja: '在庫の過剰'
	String get excExcess => '在庫の過剰';

	/// ja: 'マスタの不備'
	String get excMaster => 'マスタの不備';

	/// ja: '外注（新規）'
	String get outsourceNew => '外注（新規）';

	/// ja: '外注の取消'
	String get outsourceCancel => '外注の取消';

	/// ja: '生産計画（新規）'
	String get planNew => '生産計画（新規）';

	/// ja: '生産計画の変更'
	String get planUpdate => '生産計画の変更';

	/// ja: '生産計画の維持'
	String get planKeep => '生産計画の維持';

	/// ja: '生産計画の取消'
	String get planCancel => '生産計画の取消';
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

// Path: entity.resplan.fields
class ProductionPlanStrings$entity$resplan$fields$ja {
	ProductionPlanStrings$entity$resplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注明細'
	String get f_trans_order_detail_id => '受注明細';

	/// ja: '非計上明細'
	String get f_trans_unrecognized_detail_id => '非計上明細';

	/// ja: '親の生産計画'
	String get f_parent_trans_operations_plan_id => '親の生産計画';

	/// ja: '登録日時'
	String get f_register_at => '登録日時';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '在庫数量'
	String get f_inventory_resavation => '在庫数量';

	/// ja: '期限'
	String get f_deadline => '期限';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.opsplan.fields
class ProductionPlanStrings$entity$opsplan$fields$ja {
	ProductionPlanStrings$entity$opsplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '完了期限'
	String get f_deadline => '完了期限';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.workplan.fields
class ProductionPlanStrings$entity$workplan$fields$ja {
	ProductionPlanStrings$entity$workplan$fields$ja.internal(this._root);

	final ProductionPlanStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get f_mstr_task_id => '工程';

	/// ja: '順'
	String get f_sequence => '順';

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

	/// ja: '引当数量'
	String get f_quantity => '引当数量';

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

	/// ja: '引当数量'
	String get f_quantity => '引当数量';

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
			'mrp.failure.code' => 'エラーコード',
			'mrp.result.title' => 'MRPの結果（提案の一覧）',
			'mrp.result.search' => '検索',
			'mrp.result.decisionFilter' => '判断',
			'mrp.result.all' => 'すべて',
			'mrp.result.noRows' => '該当する提案がありません',
			'mrp.result.lateYes' => '遅れ',
			'mrp.result.lateNo' => '',
			'mrp.columns.kind' => '提案種別',
			'mrp.columns.itemCode' => '品目コード',
			'mrp.columns.itemName' => '品目名',
			'mrp.columns.quantity' => '数量',
			'mrp.columns.allocation' => '在庫引当',
			'mrp.columns.needDate' => '必要日',
			'mrp.columns.releaseDate' => '発注日・着手日',
			'mrp.columns.dueDate' => '納期',
			'mrp.columns.late' => '遅れ',
			'mrp.columns.decision' => '判断',
			'mrp.columns.message' => 'メッセージ',
			'mrp.kind.purchaseNew' => '発注（新規）',
			'mrp.kind.productionNew' => '生産（新規）',
			'mrp.kind.purchaseReschedule' => '発注の日程変更',
			'mrp.kind.productionReschedule' => '生産の日程変更',
			'mrp.kind.purchaseCancel' => '発注の取消',
			'mrp.kind.productionCancel' => '生産の取消',
			'mrp.kind.outsourceOption' => '外注への切替',
			'mrp.kind.excOverload' => '設備の過負荷',
			'mrp.kind.excExcess' => '在庫の過剰',
			'mrp.kind.excMaster' => 'マスタの不備',
			'mrp.kind.outsourceNew' => '外注（新規）',
			'mrp.kind.outsourceCancel' => '外注の取消',
			'mrp.kind.planNew' => '生産計画（新規）',
			'mrp.kind.planUpdate' => '生産計画の変更',
			'mrp.kind.planKeep' => '生産計画の維持',
			'mrp.kind.planCancel' => '生産計画の取消',
			'mrp.decision.pending' => '要判断',
			'mrp.decision.adopted' => '採用',
			'mrp.decision.rejected' => '却下',
			'mrp.decision.info' => '情報',
			'menu.group' => '生産計画',
			'entity.resplan.title' => '資材計画',
			'entity.resplan.fields.f_trans_order_detail_id' => '受注明細',
			'entity.resplan.fields.f_trans_unrecognized_detail_id' => '非計上明細',
			'entity.resplan.fields.f_parent_trans_operations_plan_id' => '親の生産計画',
			'entity.resplan.fields.f_register_at' => '登録日時',
			'entity.resplan.fields.f_quantity' => '数量',
			'entity.resplan.fields.f_inventory_resavation' => '在庫数量',
			'entity.resplan.fields.f_deadline' => '期限',
			'entity.resplan.fields.f_remarks' => '備考',
			'entity.opsplan.title' => '生産計画',
			'entity.opsplan.fields.f_deadline' => '完了期限',
			'entity.opsplan.fields.f_quantity' => '数量',
			'entity.opsplan.fields.f_remarks' => '備考',
			'entity.workplan.title' => '生産計画明細',
			'entity.workplan.fields.f_mstr_task_id' => '工程',
			'entity.workplan.fields.f_sequence' => '順',
			'entity.workplan.fields.f_interval_plan' => '予定作業時間',
			'entity.workplan.fields.f_start_at' => '開始予定',
			'entity.workplan.fields.f_completion_at' => '完了予定',
			'entity.workplan.fields.f_remarks' => '備考',
			'entity.prodrez.title' => '生産引き当て予約',
			'entity.prodrez.fields.f_trans_work_plan_id' => '生産計画詳細',
			'entity.prodrez.fields.f_quantity' => '引当数量',
			'entity.prodrez.fields.f_remarks' => '備考',
			'entity.purrez.title' => '購買引き当て予約',
			'entity.purrez.fields.f_trans_purchase_detail_id' => '発注明細',
			'entity.purrez.fields.f_quantity' => '引当数量',
			'entity.purrez.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
