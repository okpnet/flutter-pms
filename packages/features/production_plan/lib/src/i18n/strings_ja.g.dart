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
	late final ProductionPlanStrings$entity$ja entity = ProductionPlanStrings$entity$ja.internal(_root);
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
			'entity.resplan.title' => '資材計画',
			'entity.resplan.fields.f_trans_order_detail_id' => '受注明細',
			'entity.resplan.fields.f_trans_unrecognized_detail_id' => '非計上明細',
			'entity.resplan.fields.f_register_at' => '登録日時',
			'entity.resplan.fields.f_quantity' => '数量',
			'entity.resplan.fields.f_inventory_resavation' => '在庫数量',
			'entity.resplan.fields.f_deadline' => '期限',
			'entity.resplan.fields.f_remarks' => '備考',
			'entity.opsplan.title' => '生産計画',
			'entity.opsplan.fields.f_deadline' => '完了期限',
			'entity.opsplan.fields.f_remarks' => '備考',
			'entity.workplan.title' => '生産計画明細',
			'entity.workplan.fields.f_mstr_task_id' => '工程',
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
