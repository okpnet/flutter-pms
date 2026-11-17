///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef PlanChangeStringsJa = PlanChangeStrings; // ignore: unused_element
class PlanChangeStrings with BaseTranslations<PlanChangeLocale, PlanChangeStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [PlanChangeLocale.build] is preferred.
	PlanChangeStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<PlanChangeLocale, PlanChangeStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: PlanChangeLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<PlanChangeLocale, PlanChangeStrings> _meta;
	@override TranslationMetadata<PlanChangeLocale, PlanChangeStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final PlanChangeStrings _root = this; // ignore: unused_field

	PlanChangeStrings $copyWith({TranslationMetadata<PlanChangeLocale, PlanChangeStrings>? meta}) => PlanChangeStrings(meta: meta ?? this.$meta);

	// Translations
	late final PlanChangeStrings$menu$ja menu = PlanChangeStrings$menu$ja.internal(_root);
	late final PlanChangeStrings$entity$ja entity = PlanChangeStrings$entity$ja.internal(_root);
}

// Path: menu
class PlanChangeStrings$menu$ja {
	PlanChangeStrings$menu$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '計画変更'
	String get group => '計画変更';
}

// Path: entity
class PlanChangeStrings$entity$ja {
	PlanChangeStrings$entity$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations
	late final PlanChangeStrings$entity$planchange$ja planchange = PlanChangeStrings$entity$planchange$ja.internal(_root);
	late final PlanChangeStrings$entity$cancelopen$ja cancelopen = PlanChangeStrings$entity$cancelopen$ja.internal(_root);
	late final PlanChangeStrings$entity$actreqrelease$ja actreqrelease = PlanChangeStrings$entity$actreqrelease$ja.internal(_root);
	late final PlanChangeStrings$entity$actreqhold$ja actreqhold = PlanChangeStrings$entity$actreqhold$ja.internal(_root);
	late final PlanChangeStrings$entity$actlotrelease$ja actlotrelease = PlanChangeStrings$entity$actlotrelease$ja.internal(_root);
	late final PlanChangeStrings$entity$actlothold$ja actlothold = PlanChangeStrings$entity$actlothold$ja.internal(_root);
	late final PlanChangeStrings$entity$actlotscrap$ja actlotscrap = PlanChangeStrings$entity$actlotscrap$ja.internal(_root);
	late final PlanChangeStrings$entity$actlotdeliver$ja actlotdeliver = PlanChangeStrings$entity$actlotdeliver$ja.internal(_root);
	late final PlanChangeStrings$entity$actshipcancel$ja actshipcancel = PlanChangeStrings$entity$actshipcancel$ja.internal(_root);
	late final PlanChangeStrings$entity$actpurcancel$ja actpurcancel = PlanChangeStrings$entity$actpurcancel$ja.internal(_root);
}

// Path: entity.planchange
class PlanChangeStrings$entity$planchange$ja {
	PlanChangeStrings$entity$planchange$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '計画変更の履歴'
	String get title => '計画変更の履歴';

	late final PlanChangeStrings$entity$planchange$fields$ja fields = PlanChangeStrings$entity$planchange$fields$ja.internal(_root);
}

// Path: entity.cancelopen
class PlanChangeStrings$entity$cancelopen$ja {
	PlanChangeStrings$entity$cancelopen$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未処置一覧'
	String get title => '未処置一覧';

	late final PlanChangeStrings$entity$cancelopen$fields$ja fields = PlanChangeStrings$entity$cancelopen$fields$ja.internal(_root);
}

// Path: entity.actreqrelease
class PlanChangeStrings$entity$actreqrelease$ja {
	PlanChangeStrings$entity$actreqrelease$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引当予約の解除'
	String get title => '引当予約の解除';

	late final PlanChangeStrings$entity$actreqrelease$fields$ja fields = PlanChangeStrings$entity$actreqrelease$fields$ja.internal(_root);
}

// Path: entity.actreqhold
class PlanChangeStrings$entity$actreqhold$ja {
	PlanChangeStrings$entity$actreqhold$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '引当予約の保管'
	String get title => '引当予約の保管';

	late final PlanChangeStrings$entity$actreqhold$fields$ja fields = PlanChangeStrings$entity$actreqhold$fields$ja.internal(_root);
}

// Path: entity.actlotrelease
class PlanChangeStrings$entity$actlotrelease$ja {
	PlanChangeStrings$entity$actlotrelease$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '在庫にする'
	String get title => '在庫にする';

	late final PlanChangeStrings$entity$actlotrelease$fields$ja fields = PlanChangeStrings$entity$actlotrelease$fields$ja.internal(_root);
}

// Path: entity.actlothold
class PlanChangeStrings$entity$actlothold$ja {
	PlanChangeStrings$entity$actlothold$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品物を押さえる'
	String get title => '品物を押さえる';

	late final PlanChangeStrings$entity$actlothold$fields$ja fields = PlanChangeStrings$entity$actlothold$fields$ja.internal(_root);
}

// Path: entity.actlotscrap
class PlanChangeStrings$entity$actlotscrap$ja {
	PlanChangeStrings$entity$actlotscrap$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品物の廃棄'
	String get title => '品物の廃棄';

	late final PlanChangeStrings$entity$actlotscrap$fields$ja fields = PlanChangeStrings$entity$actlotscrap$fields$ja.internal(_root);
}

// Path: entity.actlotdeliver
class PlanChangeStrings$entity$actlotdeliver$ja {
	PlanChangeStrings$entity$actlotdeliver$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '顧客への引き渡し'
	String get title => '顧客への引き渡し';

	late final PlanChangeStrings$entity$actlotdeliver$fields$ja fields = PlanChangeStrings$entity$actlotdeliver$fields$ja.internal(_root);
}

// Path: entity.actshipcancel
class PlanChangeStrings$entity$actshipcancel$ja {
	PlanChangeStrings$entity$actshipcancel$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '出荷オーダーの取り消し'
	String get title => '出荷オーダーの取り消し';

	late final PlanChangeStrings$entity$actshipcancel$fields$ja fields = PlanChangeStrings$entity$actshipcancel$fields$ja.internal(_root);
}

// Path: entity.actpurcancel
class PlanChangeStrings$entity$actpurcancel$ja {
	PlanChangeStrings$entity$actpurcancel$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '外注発注のキャンセル'
	String get title => '外注発注のキャンセル';

	late final PlanChangeStrings$entity$actpurcancel$fields$ja fields = PlanChangeStrings$entity$actpurcancel$fields$ja.internal(_root);
}

// Path: entity.planchange.fields
class PlanChangeStrings$entity$planchange$fields$ja {
	PlanChangeStrings$entity$planchange$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '変更日'
	String get f_change_at => '変更日';

	/// ja: 'シンボル'
	String get f_symbol => 'シンボル';

	/// ja: '受注明細'
	String get f_is_order_detail => '受注明細';

	/// ja: '発注明細'
	String get f_is_purchase_detail => '発注明細';

	/// ja: '生産計画'
	String get f_is_operations_plan => '生産計画';

	/// ja: '引当予約'
	String get f_is_inventory_request => '引当予約';

	/// ja: 'ロット'
	String get f_is_visiter => 'ロット';

	/// ja: '出荷オーダー明細'
	String get f_is_shipping_order_detail => '出荷オーダー明細';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: 'キャンセル'
	String get f_is_cancel => 'キャンセル';

	/// ja: '数量の変更'
	String get f_is_quantity_change => '数量の変更';

	/// ja: '納期の変更'
	String get f_is_date_change => '納期の変更';

	/// ja: '延期'
	String get f_is_postpone => '延期';

	/// ja: '前倒し'
	String get f_is_advance => '前倒し';

	/// ja: '停止'
	String get f_is_stop => '停止';

	/// ja: '再開'
	String get f_is_resume => '再開';

	/// ja: '打ち切り'
	String get f_is_discontinue => '打ち切り';

	/// ja: '在庫にする'
	String get f_is_release => '在庫にする';

	/// ja: '押さえる'
	String get f_is_hold => '押さえる';

	/// ja: '廃棄'
	String get f_is_scrap => '廃棄';

	/// ja: '引き渡し'
	String get f_is_deliver => '引き渡し';

	/// ja: '精算あり'
	String get f_has_settlement => '精算あり';

	/// ja: '顧客の都合'
	String get f_customer_cause => '顧客の都合';

	/// ja: '仕入先・外注先の都合'
	String get f_supplier_cause => '仕入先・外注先の都合';

	/// ja: '品質の原因'
	String get f_quality_cause => '品質の原因';

	/// ja: 'MRP の提案から'
	String get f_from_mrp => 'MRP の提案から';

	/// ja: 'MRP に反映済み'
	String get f_is_reflected => 'MRP に反映済み';

	/// ja: 'MRP に未反映'
	String get f_is_unreflected => 'MRP に未反映';

	/// ja: '起点の変更'
	String get f_is_root => '起点の変更';

	/// ja: 'キャンセル数量'
	String get f_cancel_quantity => 'キャンセル数量';

	/// ja: '変更前の数量'
	String get f_old_quantity => '変更前の数量';

	/// ja: '変更後の数量'
	String get f_new_quantity => '変更後の数量';

	/// ja: '変更前の納期'
	String get f_old_date => '変更前の納期';

	/// ja: '変更後の納期'
	String get f_new_date => '変更後の納期';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.cancelopen.fields
class PlanChangeStrings$entity$cancelopen$fields$ja {
	PlanChangeStrings$entity$cancelopen$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'シンボル'
	String get f_symbol => 'シンボル';

	/// ja: '未解除の引当予約'
	String get f_is_inventory_request => '未解除の引当予約';

	/// ja: '仕掛品'
	String get f_is_work_in_process => '仕掛品';

	/// ja: '押さえたままの品'
	String get f_is_hold => '押さえたままの品';

	/// ja: '未出荷の出荷オーダー'
	String get f_is_shipping_order => '未出荷の出荷オーダー';

	/// ja: '未キャンセルの外注発注'
	String get f_is_outsource_order => '未キャンセルの外注発注';

	/// ja: '外注先にある支給材'
	String get f_is_supply_at_supplier => '外注先にある支給材';

	/// ja: '顧客支給材の未返却'
	String get f_is_customer_supply => '顧客支給材の未返却';

	/// ja: 'キャンセル'
	String get f_cause_cancel => 'キャンセル';

	/// ja: '停止'
	String get f_cause_stop => '停止';

	/// ja: '打ち切り'
	String get f_cause_discontinue => '打ち切り';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '原因の日'
	String get f_since => '原因の日';

	/// ja: '解除'
	String get f_do_req_release => '解除';

	/// ja: '保管'
	String get f_do_req_hold => '保管';

	/// ja: '在庫にする'
	String get f_do_lot_release => '在庫にする';

	/// ja: '押さえる'
	String get f_do_lot_hold => '押さえる';

	/// ja: '廃棄'
	String get f_do_lot_scrap => '廃棄';

	/// ja: '引き渡し'
	String get f_do_lot_deliver => '引き渡し';

	/// ja: '出荷取り消し'
	String get f_do_ship_cancel => '出荷取り消し';

	/// ja: '発注キャンセル'
	String get f_do_pur_cancel => '発注キャンセル';
}

// Path: entity.actreqrelease.fields
class PlanChangeStrings$entity$actreqrelease$fields$ja {
	PlanChangeStrings$entity$actreqrelease$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actreqhold.fields
class PlanChangeStrings$entity$actreqhold$fields$ja {
	PlanChangeStrings$entity$actreqhold$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '押さえる先のコンテナ'
	String get f_container => '押さえる先のコンテナ';

	/// ja: '場所(棚に場所が無いとき)'
	String get f_location => '場所(棚に場所が無いとき)';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actlotrelease.fields
class PlanChangeStrings$entity$actlotrelease$fields$ja {
	PlanChangeStrings$entity$actlotrelease$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actlothold.fields
class PlanChangeStrings$entity$actlothold$fields$ja {
	PlanChangeStrings$entity$actlothold$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '押さえる先のコンテナ'
	String get f_container => '押さえる先のコンテナ';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '場所(棚に場所が無いとき)'
	String get f_location => '場所(棚に場所が無いとき)';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actlotscrap.fields
class PlanChangeStrings$entity$actlotscrap$fields$ja {
	PlanChangeStrings$entity$actlotscrap$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '場所(棚に場所が無いとき)'
	String get f_location => '場所(棚に場所が無いとき)';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actlotdeliver.fields
class PlanChangeStrings$entity$actlotdeliver$fields$ja {
	PlanChangeStrings$entity$actlotdeliver$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '場所(棚に場所が無いとき)'
	String get f_location => '場所(棚に場所が無いとき)';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actshipcancel.fields
class PlanChangeStrings$entity$actshipcancel$fields$ja {
	PlanChangeStrings$entity$actshipcancel$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '理由'
	String get f_reason => '理由';
}

// Path: entity.actpurcancel.fields
class PlanChangeStrings$entity$actpurcancel$fields$ja {
	PlanChangeStrings$entity$actpurcancel$fields$ja.internal(this._root);

	final PlanChangeStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象'
	String get f_target => '対象';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '理由'
	String get f_reason => '理由';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on PlanChangeStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '計画変更',
			'entity.planchange.title' => '計画変更の履歴',
			'entity.planchange.fields.f_change_at' => '変更日',
			'entity.planchange.fields.f_symbol' => 'シンボル',
			'entity.planchange.fields.f_is_order_detail' => '受注明細',
			'entity.planchange.fields.f_is_purchase_detail' => '発注明細',
			'entity.planchange.fields.f_is_operations_plan' => '生産計画',
			'entity.planchange.fields.f_is_inventory_request' => '引当予約',
			'entity.planchange.fields.f_is_visiter' => 'ロット',
			'entity.planchange.fields.f_is_shipping_order_detail' => '出荷オーダー明細',
			'entity.planchange.fields.f_item' => '品目',
			'entity.planchange.fields.f_is_cancel' => 'キャンセル',
			'entity.planchange.fields.f_is_quantity_change' => '数量の変更',
			'entity.planchange.fields.f_is_date_change' => '納期の変更',
			'entity.planchange.fields.f_is_postpone' => '延期',
			'entity.planchange.fields.f_is_advance' => '前倒し',
			'entity.planchange.fields.f_is_stop' => '停止',
			'entity.planchange.fields.f_is_resume' => '再開',
			'entity.planchange.fields.f_is_discontinue' => '打ち切り',
			'entity.planchange.fields.f_is_release' => '在庫にする',
			'entity.planchange.fields.f_is_hold' => '押さえる',
			'entity.planchange.fields.f_is_scrap' => '廃棄',
			'entity.planchange.fields.f_is_deliver' => '引き渡し',
			'entity.planchange.fields.f_has_settlement' => '精算あり',
			'entity.planchange.fields.f_customer_cause' => '顧客の都合',
			'entity.planchange.fields.f_supplier_cause' => '仕入先・外注先の都合',
			'entity.planchange.fields.f_quality_cause' => '品質の原因',
			'entity.planchange.fields.f_from_mrp' => 'MRP の提案から',
			'entity.planchange.fields.f_is_reflected' => 'MRP に反映済み',
			'entity.planchange.fields.f_is_unreflected' => 'MRP に未反映',
			'entity.planchange.fields.f_is_root' => '起点の変更',
			'entity.planchange.fields.f_cancel_quantity' => 'キャンセル数量',
			'entity.planchange.fields.f_old_quantity' => '変更前の数量',
			'entity.planchange.fields.f_new_quantity' => '変更後の数量',
			'entity.planchange.fields.f_old_date' => '変更前の納期',
			'entity.planchange.fields.f_new_date' => '変更後の納期',
			'entity.planchange.fields.f_reason' => '理由',
			'entity.cancelopen.title' => '未処置一覧',
			'entity.cancelopen.fields.f_symbol' => 'シンボル',
			'entity.cancelopen.fields.f_is_inventory_request' => '未解除の引当予約',
			'entity.cancelopen.fields.f_is_work_in_process' => '仕掛品',
			'entity.cancelopen.fields.f_is_hold' => '押さえたままの品',
			'entity.cancelopen.fields.f_is_shipping_order' => '未出荷の出荷オーダー',
			'entity.cancelopen.fields.f_is_outsource_order' => '未キャンセルの外注発注',
			'entity.cancelopen.fields.f_is_supply_at_supplier' => '外注先にある支給材',
			'entity.cancelopen.fields.f_is_customer_supply' => '顧客支給材の未返却',
			'entity.cancelopen.fields.f_cause_cancel' => 'キャンセル',
			'entity.cancelopen.fields.f_cause_stop' => '停止',
			'entity.cancelopen.fields.f_cause_discontinue' => '打ち切り',
			'entity.cancelopen.fields.f_item' => '品目',
			'entity.cancelopen.fields.f_quantity' => '数量',
			'entity.cancelopen.fields.f_since' => '原因の日',
			'entity.cancelopen.fields.f_do_req_release' => '解除',
			'entity.cancelopen.fields.f_do_req_hold' => '保管',
			'entity.cancelopen.fields.f_do_lot_release' => '在庫にする',
			'entity.cancelopen.fields.f_do_lot_hold' => '押さえる',
			'entity.cancelopen.fields.f_do_lot_scrap' => '廃棄',
			'entity.cancelopen.fields.f_do_lot_deliver' => '引き渡し',
			'entity.cancelopen.fields.f_do_ship_cancel' => '出荷取り消し',
			'entity.cancelopen.fields.f_do_pur_cancel' => '発注キャンセル',
			'entity.actreqrelease.title' => '引当予約の解除',
			'entity.actreqrelease.fields.f_target' => '対象',
			'entity.actreqrelease.fields.f_item' => '品目',
			'entity.actreqrelease.fields.f_reason' => '理由',
			'entity.actreqhold.title' => '引当予約の保管',
			'entity.actreqhold.fields.f_target' => '対象',
			'entity.actreqhold.fields.f_item' => '品目',
			'entity.actreqhold.fields.f_container' => '押さえる先のコンテナ',
			'entity.actreqhold.fields.f_location' => '場所(棚に場所が無いとき)',
			'entity.actreqhold.fields.f_reason' => '理由',
			'entity.actlotrelease.title' => '在庫にする',
			'entity.actlotrelease.fields.f_target' => '対象',
			'entity.actlotrelease.fields.f_item' => '品目',
			'entity.actlotrelease.fields.f_reason' => '理由',
			'entity.actlothold.title' => '品物を押さえる',
			'entity.actlothold.fields.f_target' => '対象',
			'entity.actlothold.fields.f_item' => '品目',
			'entity.actlothold.fields.f_container' => '押さえる先のコンテナ',
			'entity.actlothold.fields.f_quantity' => '数量',
			'entity.actlothold.fields.f_location' => '場所(棚に場所が無いとき)',
			'entity.actlothold.fields.f_reason' => '理由',
			'entity.actlotscrap.title' => '品物の廃棄',
			'entity.actlotscrap.fields.f_target' => '対象',
			'entity.actlotscrap.fields.f_item' => '品目',
			'entity.actlotscrap.fields.f_quantity' => '数量',
			'entity.actlotscrap.fields.f_location' => '場所(棚に場所が無いとき)',
			'entity.actlotscrap.fields.f_reason' => '理由',
			'entity.actlotdeliver.title' => '顧客への引き渡し',
			'entity.actlotdeliver.fields.f_target' => '対象',
			'entity.actlotdeliver.fields.f_item' => '品目',
			'entity.actlotdeliver.fields.f_quantity' => '数量',
			'entity.actlotdeliver.fields.f_location' => '場所(棚に場所が無いとき)',
			'entity.actlotdeliver.fields.f_reason' => '理由',
			'entity.actshipcancel.title' => '出荷オーダーの取り消し',
			'entity.actshipcancel.fields.f_target' => '対象',
			'entity.actshipcancel.fields.f_item' => '品目',
			'entity.actshipcancel.fields.f_reason' => '理由',
			'entity.actpurcancel.title' => '外注発注のキャンセル',
			'entity.actpurcancel.fields.f_target' => '対象',
			'entity.actpurcancel.fields.f_item' => '品目',
			'entity.actpurcancel.fields.f_quantity' => '数量',
			'entity.actpurcancel.fields.f_reason' => '理由',
			_ => null,
		};
	}
}
