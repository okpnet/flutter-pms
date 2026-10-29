///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ProductionProcessStringsJa = ProductionProcessStrings; // ignore: unused_element
class ProductionProcessStrings with BaseTranslations<ProductionProcessLocale, ProductionProcessStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ProductionProcessLocale.build] is preferred.
	ProductionProcessStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ProductionProcessLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings> _meta;
	@override TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ProductionProcessStrings _root = this; // ignore: unused_field

	ProductionProcessStrings $copyWith({TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings>? meta}) => ProductionProcessStrings(meta: meta ?? this.$meta);

	// Translations
	late final ProductionProcessStrings$menu$ja menu = ProductionProcessStrings$menu$ja.internal(_root);
	late final ProductionProcessStrings$entity$ja entity = ProductionProcessStrings$entity$ja.internal(_root);
}

// Path: menu
class ProductionProcessStrings$menu$ja {
	ProductionProcessStrings$menu$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get group => '工程';
}

// Path: entity
class ProductionProcessStrings$entity$ja {
	ProductionProcessStrings$entity$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations
	late final ProductionProcessStrings$entity$taskgroup$ja taskgroup = ProductionProcessStrings$entity$taskgroup$ja.internal(_root);
	late final ProductionProcessStrings$entity$task$ja task = ProductionProcessStrings$entity$task$ja.internal(_root);
	late final ProductionProcessStrings$entity$taskres$ja taskres = ProductionProcessStrings$entity$taskres$ja.internal(_root);
	late final ProductionProcessStrings$entity$operation$ja operation = ProductionProcessStrings$entity$operation$ja.internal(_root);
	late final ProductionProcessStrings$entity$optask$ja optask = ProductionProcessStrings$entity$optask$ja.internal(_root);
	late final ProductionProcessStrings$entity$opapply$ja opapply = ProductionProcessStrings$entity$opapply$ja.internal(_root);
}

// Path: entity.taskgroup
class ProductionProcessStrings$entity$taskgroup$ja {
	ProductionProcessStrings$entity$taskgroup$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程グループ'
	String get title => '工程グループ';

	late final ProductionProcessStrings$entity$taskgroup$fields$ja fields = ProductionProcessStrings$entity$taskgroup$fields$ja.internal(_root);
}

// Path: entity.task
class ProductionProcessStrings$entity$task$ja {
	ProductionProcessStrings$entity$task$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get title => '工程';

	late final ProductionProcessStrings$entity$task$fields$ja fields = ProductionProcessStrings$entity$task$fields$ja.internal(_root);
}

// Path: entity.taskres
class ProductionProcessStrings$entity$taskres$ja {
	ProductionProcessStrings$entity$taskres$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程場所'
	String get title => '工程場所';

	late final ProductionProcessStrings$entity$taskres$fields$ja fields = ProductionProcessStrings$entity$taskres$fields$ja.internal(_root);
}

// Path: entity.operation
class ProductionProcessStrings$entity$operation$ja {
	ProductionProcessStrings$entity$operation$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程運用'
	String get title => '工程運用';

	late final ProductionProcessStrings$entity$operation$fields$ja fields = ProductionProcessStrings$entity$operation$fields$ja.internal(_root);
}

// Path: entity.optask
class ProductionProcessStrings$entity$optask$ja {
	ProductionProcessStrings$entity$optask$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程の選択'
	String get title => '工程の選択';

	late final ProductionProcessStrings$entity$optask$fields$ja fields = ProductionProcessStrings$entity$optask$fields$ja.internal(_root);
}

// Path: entity.opapply
class ProductionProcessStrings$entity$opapply$ja {
	ProductionProcessStrings$entity$opapply$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '適用する品目の工程計画'
	String get title => '適用する品目の工程計画';

	late final ProductionProcessStrings$entity$opapply$fields$ja fields = ProductionProcessStrings$entity$opapply$fields$ja.internal(_root);
}

// Path: entity.taskgroup.fields
class ProductionProcessStrings$entity$taskgroup$fields$ja {
	ProductionProcessStrings$entity$taskgroup$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'グループ名'
	String get f_name => 'グループ名';

	/// ja: '説明'
	String get f_desc => '説明';
}

// Path: entity.task.fields
class ProductionProcessStrings$entity$task$fields$ja {
	ProductionProcessStrings$entity$task$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程コード'
	String get f_code => '工程コード';

	/// ja: '工程名称'
	String get f_name => '工程名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '区分'
	String get f_class => '区分';

	/// ja: '標準時間'
	String get f_default_time => '標準時間';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.taskres.fields
class ProductionProcessStrings$entity$taskres$fields$ja {
	ProductionProcessStrings$entity$taskres$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '組織情報'
	String get f_info_department_id => '組織情報';

	/// ja: '優先順位'
	String get f_priority => '優先順位';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.operation.fields
class ProductionProcessStrings$entity$operation$fields$ja {
	ProductionProcessStrings$entity$operation$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '運用名称'
	String get f_name => '運用名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.optask.fields
class ProductionProcessStrings$entity$optask$fields$ja {
	ProductionProcessStrings$entity$optask$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '工程'
	String get f_task => '工程';

	/// ja: '順'
	String get f_seq => '順';
}

// Path: entity.opapply.fields
class ProductionProcessStrings$entity$opapply$fields$ja {
	ProductionProcessStrings$entity$opapply$fields$ja.internal(this._root);

	final ProductionProcessStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_item => '品目';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ProductionProcessStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '工程',
			'entity.taskgroup.title' => '工程グループ',
			'entity.taskgroup.fields.f_name' => 'グループ名',
			'entity.taskgroup.fields.f_desc' => '説明',
			'entity.task.title' => '工程',
			'entity.task.fields.f_code' => '工程コード',
			'entity.task.fields.f_name' => '工程名称',
			'entity.task.fields.f_pronunciation' => '読み',
			'entity.task.fields.f_nickname' => '略称',
			'entity.task.fields.f_detail' => '詳細',
			'entity.task.fields.f_class' => '区分',
			'entity.task.fields.f_default_time' => '標準時間',
			'entity.task.fields.f_remarks' => '備考',
			'entity.taskres.title' => '工程場所',
			'entity.taskres.fields.f_info_department_id' => '組織情報',
			'entity.taskres.fields.f_priority' => '優先順位',
			'entity.taskres.fields.f_remarks' => '備考',
			'entity.operation.title' => '工程運用',
			'entity.operation.fields.f_control_code' => '管理コード',
			'entity.operation.fields.f_name' => '運用名称',
			'entity.operation.fields.f_pronunciation' => '読み',
			'entity.operation.fields.f_nickname' => '略称',
			'entity.operation.fields.f_detail' => '詳細',
			'entity.operation.fields.f_remarks' => '備考',
			'entity.optask.title' => '工程の選択',
			'entity.optask.fields.f_task' => '工程',
			'entity.optask.fields.f_seq' => '順',
			'entity.opapply.title' => '適用する品目の工程計画',
			'entity.opapply.fields.f_item' => '品目',
			_ => null,
		};
	}
}
