///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef CostStringsJa = CostStrings; // ignore: unused_element
class CostStrings with BaseTranslations<CostLocale, CostStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [CostLocale.build] is preferred.
	CostStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<CostLocale, CostStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: CostLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<CostLocale, CostStrings> _meta;
	@override TranslationMetadata<CostLocale, CostStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final CostStrings _root = this; // ignore: unused_field

	CostStrings $copyWith({TranslationMetadata<CostLocale, CostStrings>? meta}) => CostStrings(meta: meta ?? this.$meta);

	// Translations
	late final CostStrings$lotsAction$ja lotsAction = CostStrings$lotsAction$ja.internal(_root);
	late final CostStrings$menu$ja menu = CostStrings$menu$ja.internal(_root);
	late final CostStrings$entity$ja entity = CostStrings$entity$ja.internal(_root);
}

// Path: lotsAction
class CostStrings$lotsAction$ja {
	CostStrings$lotsAction$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ロットを見る'
	String get costvaluation => 'ロットを見る';
}

// Path: menu
class CostStrings$menu$ja {
	CostStrings$menu$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: '原価'
	String get group => '原価';

	/// ja: '品目'
	String get group_item => '品目';

	/// ja: '作業実績'
	String get group_work_record => '作業実績';
}

// Path: entity
class CostStrings$entity$ja {
	CostStrings$entity$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations
	late final CostStrings$entity$costunit$ja costunit = CostStrings$entity$costunit$ja.internal(_root);
	late final CostStrings$entity$costvaluation$ja costvaluation = CostStrings$entity$costvaluation$ja.internal(_root);
	late final CostStrings$entity$costlot$ja costlot = CostStrings$entity$costlot$ja.internal(_root);
}

// Path: entity.costunit
class CostStrings$entity$costunit$ja {
	CostStrings$entity$costunit$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: '標準原価の一覧'
	String get title => '標準原価の一覧';

	late final CostStrings$entity$costunit$fields$ja fields = CostStrings$entity$costunit$fields$ja.internal(_root);
}

// Path: entity.costvaluation
class CostStrings$entity$costvaluation$ja {
	CostStrings$entity$costvaluation$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: '在庫評価額の一覧'
	String get title => '在庫評価額の一覧';

	late final CostStrings$entity$costvaluation$fields$ja fields = CostStrings$entity$costvaluation$fields$ja.internal(_root);
}

// Path: entity.costlot
class CostStrings$entity$costlot$ja {
	CostStrings$entity$costlot$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ロットの評価額'
	String get title => 'ロットの評価額';

	late final CostStrings$entity$costlot$fields$ja fields = CostStrings$entity$costlot$fields$ja.internal(_root);
}

// Path: entity.costunit.fields
class CostStrings$entity$costunit$fields$ja {
	CostStrings$entity$costunit$fields$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '購入品の単価'
	String get f_purchase_cost => '購入品の単価';

	/// ja: '生産コスト'
	String get f_production_cost => '生産コスト';

	/// ja: '下位の部品の原価'
	String get f_component_cost => '下位の部品の原価';

	/// ja: '標準原価'
	String get f_unit_cost => '標準原価';

	/// ja: '仕入先がある'
	String get f_has_supplier => '仕入先がある';

	/// ja: '部品表に下位の部品がある'
	String get f_has_components => '部品表に下位の部品がある';
}

// Path: entity.costvaluation.fields
class CostStrings$entity$costvaluation$fields$ja {
	CostStrings$entity$costvaluation$fields$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '現在庫の数量'
	String get f_quantity => '現在庫の数量';

	/// ja: '評価の対象の数量'
	String get f_evaluated_quantity => '評価の対象の数量';

	/// ja: '社外の所有物の数量'
	String get f_external_quantity => '社外の所有物の数量';

	/// ja: '在庫評価額'
	String get f_amount => '在庫評価額';
}

// Path: entity.costlot.fields
class CostStrings$entity$costlot$fields$ja {
	CostStrings$entity$costlot$fields$ja.internal(this._root);

	final CostStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'シンボル'
	String get f_symbol => 'シンボル';

	/// ja: '品目'
	String get f_item => '品目';

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '仮止め中'
	String get f_held => '仮止め中';

	/// ja: '社外の所有物'
	String get f_external_owned => '社外の所有物';

	/// ja: '譲渡で自社の物'
	String get f_transferred => '譲渡で自社の物';

	/// ja: '評価の対象'
	String get f_evaluated => '評価の対象';

	/// ja: '品目の標準原価'
	String get f_unit_cost => '品目の標準原価';

	/// ja: 'ロットの単価'
	String get f_unit_value => 'ロットの単価';

	/// ja: '評価額'
	String get f_amount => '評価額';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on CostStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'lotsAction.costvaluation' => 'ロットを見る',
			'menu.group' => '原価',
			'menu.group_item' => '品目',
			'menu.group_work_record' => '作業実績',
			'entity.costunit.title' => '標準原価の一覧',
			'entity.costunit.fields.f_item' => '品目',
			'entity.costunit.fields.f_purchase_cost' => '購入品の単価',
			'entity.costunit.fields.f_production_cost' => '生産コスト',
			'entity.costunit.fields.f_component_cost' => '下位の部品の原価',
			'entity.costunit.fields.f_unit_cost' => '標準原価',
			'entity.costunit.fields.f_has_supplier' => '仕入先がある',
			'entity.costunit.fields.f_has_components' => '部品表に下位の部品がある',
			'entity.costvaluation.title' => '在庫評価額の一覧',
			'entity.costvaluation.fields.f_item' => '品目',
			'entity.costvaluation.fields.f_quantity' => '現在庫の数量',
			'entity.costvaluation.fields.f_evaluated_quantity' => '評価の対象の数量',
			'entity.costvaluation.fields.f_external_quantity' => '社外の所有物の数量',
			'entity.costvaluation.fields.f_amount' => '在庫評価額',
			'entity.costlot.title' => 'ロットの評価額',
			'entity.costlot.fields.f_symbol' => 'シンボル',
			'entity.costlot.fields.f_item' => '品目',
			'entity.costlot.fields.f_quantity' => '数量',
			'entity.costlot.fields.f_held' => '仮止め中',
			'entity.costlot.fields.f_external_owned' => '社外の所有物',
			'entity.costlot.fields.f_transferred' => '譲渡で自社の物',
			'entity.costlot.fields.f_evaluated' => '評価の対象',
			'entity.costlot.fields.f_unit_cost' => '品目の標準原価',
			'entity.costlot.fields.f_unit_value' => 'ロットの単価',
			'entity.costlot.fields.f_amount' => '評価額',
			_ => null,
		};
	}
}
