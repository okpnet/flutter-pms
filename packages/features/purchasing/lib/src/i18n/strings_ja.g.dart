///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef PurchasingStringsJa = PurchasingStrings; // ignore: unused_element
class PurchasingStrings with BaseTranslations<PurchasingLocale, PurchasingStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [PurchasingLocale.build] is preferred.
	PurchasingStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<PurchasingLocale, PurchasingStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: PurchasingLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<PurchasingLocale, PurchasingStrings> _meta;
	@override TranslationMetadata<PurchasingLocale, PurchasingStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final PurchasingStrings _root = this; // ignore: unused_field

	PurchasingStrings $copyWith({TranslationMetadata<PurchasingLocale, PurchasingStrings>? meta}) => PurchasingStrings(meta: meta ?? this.$meta);

	// Translations
	late final PurchasingStrings$menu$ja menu = PurchasingStrings$menu$ja.internal(_root);
	late final PurchasingStrings$entity$ja entity = PurchasingStrings$entity$ja.internal(_root);
}

// Path: menu
class PurchasingStrings$menu$ja {
	PurchasingStrings$menu$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '購買'
	String get group => '購買';
}

// Path: entity
class PurchasingStrings$entity$ja {
	PurchasingStrings$entity$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations
	late final PurchasingStrings$entity$unrec$ja unrec = PurchasingStrings$entity$unrec$ja.internal(_root);
	late final PurchasingStrings$entity$unrecdetail$ja unrecdetail = PurchasingStrings$entity$unrecdetail$ja.internal(_root);
	late final PurchasingStrings$entity$purchase$ja purchase = PurchasingStrings$entity$purchase$ja.internal(_root);
	late final PurchasingStrings$entity$purdetail$ja purdetail = PurchasingStrings$entity$purdetail$ja.internal(_root);
	late final PurchasingStrings$entity$purchaserec$ja purchaserec = PurchasingStrings$entity$purchaserec$ja.internal(_root);
	late final PurchasingStrings$entity$purchaseline$ja purchaseline = PurchasingStrings$entity$purchaseline$ja.internal(_root);
	late final PurchasingStrings$entity$purcert$ja purcert = PurchasingStrings$entity$purcert$ja.internal(_root);
}

// Path: entity.unrec
class PurchasingStrings$entity$unrec$ja {
	PurchasingStrings$entity$unrec$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '非計上'
	String get title => '非計上';

	late final PurchasingStrings$entity$unrec$fields$ja fields = PurchasingStrings$entity$unrec$fields$ja.internal(_root);
}

// Path: entity.unrecdetail
class PurchasingStrings$entity$unrecdetail$ja {
	PurchasingStrings$entity$unrecdetail$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '非計上明細'
	String get title => '非計上明細';

	late final PurchasingStrings$entity$unrecdetail$fields$ja fields = PurchasingStrings$entity$unrecdetail$fields$ja.internal(_root);
}

// Path: entity.purchase
class PurchasingStrings$entity$purchase$ja {
	PurchasingStrings$entity$purchase$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注'
	String get title => '発注';

	late final PurchasingStrings$entity$purchase$fields$ja fields = PurchasingStrings$entity$purchase$fields$ja.internal(_root);
}

// Path: entity.purdetail
class PurchasingStrings$entity$purdetail$ja {
	PurchasingStrings$entity$purdetail$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注明細'
	String get title => '発注明細';

	late final PurchasingStrings$entity$purdetail$fields$ja fields = PurchasingStrings$entity$purdetail$fields$ja.internal(_root);
}

// Path: entity.purchaserec
class PurchasingStrings$entity$purchaserec$ja {
	PurchasingStrings$entity$purchaserec$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受入実績'
	String get title => '受入実績';

	late final PurchasingStrings$entity$purchaserec$fields$ja fields = PurchasingStrings$entity$purchaserec$fields$ja.internal(_root);
}

// Path: entity.purchaseline
class PurchasingStrings$entity$purchaseline$ja {
	PurchasingStrings$entity$purchaseline$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受入明細'
	String get title => '受入明細';

	late final PurchasingStrings$entity$purchaseline$fields$ja fields = PurchasingStrings$entity$purchaseline$fields$ja.internal(_root);
}

// Path: entity.purcert
class PurchasingStrings$entity$purcert$ja {
	PurchasingStrings$entity$purcert$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注品目成績書'
	String get title => '発注品目成績書';

	late final PurchasingStrings$entity$purcert$fields$ja fields = PurchasingStrings$entity$purcert$fields$ja.internal(_root);
}

// Path: entity.unrec.fields
class PurchasingStrings$entity$unrec$fields$ja {
	PurchasingStrings$entity$unrec$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '決定日'
	String get f_decision_date => '決定日';

	/// ja: '納期'
	String get f_deadline => '納期';

	/// ja: '完了予定日'
	String get f_expected_completion_date => '完了予定日';

	/// ja: '出荷予定日'
	String get f_planned_shipping_date => '出荷予定日';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.unrecdetail.fields
class PurchasingStrings$entity$unrecdetail$fields$ja {
	PurchasingStrings$entity$unrecdetail$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '単価'
	String get f_cost => '単価';

	/// ja: '個別納期'
	String get f_deadline => '個別納期';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.purchase.fields
class PurchasingStrings$entity$purchase$fields$ja {
	PurchasingStrings$entity$purchase$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '登録日'
	String get f_register_at => '登録日';

	/// ja: '発注日'
	String get f_purchase_order_date => '発注日';

	/// ja: '発注期限'
	String get f_deadline => '発注期限';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.purdetail.fields
class PurchasingStrings$entity$purdetail$fields$ja {
	PurchasingStrings$entity$purdetail$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資材計画'
	String get f_trans_resource_plan_id => '資材計画';

	/// ja: '在庫発注'
	String get f_restocking_purchase => '在庫発注';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '納期'
	String get f_period => '納期';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.purchaserec.fields
class PurchasingStrings$entity$purchaserec$fields$ja {
	PurchasingStrings$entity$purchaserec$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発注明細'
	String get f_trans_purchase_detail_id => '発注明細';

	/// ja: '受入日時'
	String get f_receive_at => '受入日時';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.purchaseline.fields
class PurchasingStrings$entity$purchaseline$fields$ja {
	PurchasingStrings$entity$purchaseline$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '受入数量'
	String get f_qty => '受入数量';

	/// ja: '単位'
	String get f_unit => '単位';
}

// Path: entity.purcert.fields
class PurchasingStrings$entity$purcert$fields$ja {
	PurchasingStrings$entity$purcert$fields$ja.internal(this._root);

	final PurchasingStrings _root; // ignore: unused_field

	// Translations

	/// ja: '成績書'
	String get f_trans_certificate_id => '成績書';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on PurchasingStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '購買',
			'entity.unrec.title' => '非計上',
			'entity.unrec.fields.f_decision_date' => '決定日',
			'entity.unrec.fields.f_deadline' => '納期',
			'entity.unrec.fields.f_expected_completion_date' => '完了予定日',
			'entity.unrec.fields.f_planned_shipping_date' => '出荷予定日',
			'entity.unrec.fields.f_remarks' => '備考',
			'entity.unrecdetail.title' => '非計上明細',
			'entity.unrecdetail.fields.f_quantity' => '数量',
			'entity.unrecdetail.fields.f_cost' => '単価',
			'entity.unrecdetail.fields.f_deadline' => '個別納期',
			'entity.unrecdetail.fields.f_remarks' => '備考',
			'entity.purchase.title' => '発注',
			'entity.purchase.fields.f_register_at' => '登録日',
			'entity.purchase.fields.f_purchase_order_date' => '発注日',
			'entity.purchase.fields.f_deadline' => '発注期限',
			'entity.purchase.fields.f_remarks' => '備考',
			'entity.purdetail.title' => '発注明細',
			'entity.purdetail.fields.f_trans_resource_plan_id' => '資材計画',
			'entity.purdetail.fields.f_restocking_purchase' => '在庫発注',
			'entity.purdetail.fields.f_quantity' => '数量',
			'entity.purdetail.fields.f_period' => '納期',
			'entity.purdetail.fields.f_remarks' => '備考',
			'entity.purchaserec.title' => '受入実績',
			'entity.purchaserec.fields.f_trans_purchase_detail_id' => '発注明細',
			'entity.purchaserec.fields.f_receive_at' => '受入日時',
			'entity.purchaserec.fields.f_quantity' => '数量',
			'entity.purchaserec.fields.f_remarks' => '備考',
			'entity.purchaseline.title' => '受入明細',
			'entity.purchaseline.fields.f_item' => '品目',
			'entity.purchaseline.fields.f_qty' => '受入数量',
			'entity.purchaseline.fields.f_unit' => '単位',
			'entity.purcert.title' => '発注品目成績書',
			'entity.purcert.fields.f_trans_certificate_id' => '成績書',
			'entity.purcert.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
