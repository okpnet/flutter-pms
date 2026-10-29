///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ItemStringsJa = ItemStrings; // ignore: unused_element
class ItemStrings with BaseTranslations<ItemLocale, ItemStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ItemLocale.build] is preferred.
	ItemStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ItemLocale, ItemStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ItemLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ItemLocale, ItemStrings> _meta;
	@override TranslationMetadata<ItemLocale, ItemStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ItemStrings _root = this; // ignore: unused_field

	ItemStrings $copyWith({TranslationMetadata<ItemLocale, ItemStrings>? meta}) => ItemStrings(meta: meta ?? this.$meta);

	// Translations
	late final ItemStrings$menu$ja menu = ItemStrings$menu$ja.internal(_root);
	late final ItemStrings$entity$ja entity = ItemStrings$entity$ja.internal(_root);
}

// Path: menu
class ItemStrings$menu$ja {
	ItemStrings$menu$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get group => '品目';

	/// ja: '購買'
	String get group_purchasing => '購買';
}

// Path: entity
class ItemStrings$entity$ja {
	ItemStrings$entity$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations
	late final ItemStrings$entity$itemkind$ja itemkind = ItemStrings$entity$itemkind$ja.internal(_root);
	late final ItemStrings$entity$hscode$ja hscode = ItemStrings$entity$hscode$ja.internal(_root);
	late final ItemStrings$entity$item$ja item = ItemStrings$entity$item$ja.internal(_root);
	late final ItemStrings$entity$itemhs$ja itemhs = ItemStrings$entity$itemhs$ja.internal(_root);
	late final ItemStrings$entity$itemsizekind$ja itemsizekind = ItemStrings$entity$itemsizekind$ja.internal(_root);
	late final ItemStrings$entity$itemsize$ja itemsize = ItemStrings$entity$itemsize$ja.internal(_root);
	late final ItemStrings$entity$itempack$ja itempack = ItemStrings$entity$itempack$ja.internal(_root);
	late final ItemStrings$entity$itemop$ja itemop = ItemStrings$entity$itemop$ja.internal(_root);
	late final ItemStrings$entity$itemmaker$ja itemmaker = ItemStrings$entity$itemmaker$ja.internal(_root);
	late final ItemStrings$entity$itemoptask$ja itemoptask = ItemStrings$entity$itemoptask$ja.internal(_root);
	late final ItemStrings$entity$itemsupplier$ja itemsupplier = ItemStrings$entity$itemsupplier$ja.internal(_root);
}

// Path: entity.itemkind
class ItemStrings$entity$itemkind$ja {
	ItemStrings$entity$itemkind$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目区分'
	String get title => '品目区分';

	late final ItemStrings$entity$itemkind$fields$ja fields = ItemStrings$entity$itemkind$fields$ja.internal(_root);
}

// Path: entity.hscode
class ItemStrings$entity$hscode$ja {
	ItemStrings$entity$hscode$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'HSコード'
	String get title => 'HSコード';

	late final ItemStrings$entity$hscode$fields$ja fields = ItemStrings$entity$hscode$fields$ja.internal(_root);
}

// Path: entity.item
class ItemStrings$entity$item$ja {
	ItemStrings$entity$item$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get title => '品目';

	late final ItemStrings$entity$item$fields$ja fields = ItemStrings$entity$item$fields$ja.internal(_root);
}

// Path: entity.itemhs
class ItemStrings$entity$itemhs$ja {
	ItemStrings$entity$itemhs$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'HSコード'
	String get title => 'HSコード';

	late final ItemStrings$entity$itemhs$fields$ja fields = ItemStrings$entity$itemhs$fields$ja.internal(_root);
}

// Path: entity.itemsizekind
class ItemStrings$entity$itemsizekind$ja {
	ItemStrings$entity$itemsizekind$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目大きさ区分'
	String get title => '品目大きさ区分';

	late final ItemStrings$entity$itemsizekind$fields$ja fields = ItemStrings$entity$itemsizekind$fields$ja.internal(_root);
}

// Path: entity.itemsize
class ItemStrings$entity$itemsize$ja {
	ItemStrings$entity$itemsize$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目大きさ'
	String get title => '品目大きさ';

	late final ItemStrings$entity$itemsize$fields$ja fields = ItemStrings$entity$itemsize$fields$ja.internal(_root);
}

// Path: entity.itempack
class ItemStrings$entity$itempack$ja {
	ItemStrings$entity$itempack$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '梱包サイズ'
	String get title => '梱包サイズ';

	late final ItemStrings$entity$itempack$fields$ja fields = ItemStrings$entity$itempack$fields$ja.internal(_root);
}

// Path: entity.itemop
class ItemStrings$entity$itemop$ja {
	ItemStrings$entity$itemop$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目工程運用'
	String get title => '品目工程運用';

	late final ItemStrings$entity$itemop$fields$ja fields = ItemStrings$entity$itemop$fields$ja.internal(_root);
}

// Path: entity.itemmaker
class ItemStrings$entity$itemmaker$ja {
	ItemStrings$entity$itemmaker$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '製造元'
	String get title => '製造元';

	late final ItemStrings$entity$itemmaker$fields$ja fields = ItemStrings$entity$itemmaker$fields$ja.internal(_root);
}

// Path: entity.itemoptask
class ItemStrings$entity$itemoptask$ja {
	ItemStrings$entity$itemoptask$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目工程運用明細'
	String get title => '品目工程運用明細';

	late final ItemStrings$entity$itemoptask$fields$ja fields = ItemStrings$entity$itemoptask$fields$ja.internal(_root);
}

// Path: entity.itemsupplier
class ItemStrings$entity$itemsupplier$ja {
	ItemStrings$entity$itemsupplier$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目仕入先'
	String get title => '品目仕入先';

	late final ItemStrings$entity$itemsupplier$fields$ja fields = ItemStrings$entity$itemsupplier$fields$ja.internal(_root);
}

// Path: entity.itemkind.fields
class ItemStrings$entity$itemkind$fields$ja {
	ItemStrings$entity$itemkind$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目コード'
	String get f_code => '品目コード';

	/// ja: '品目区分名称'
	String get f_name => '品目区分名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.hscode.fields
class ItemStrings$entity$hscode$fields$ja {
	ItemStrings$entity$hscode$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: '品目'
	String get f_mstr_item_id => '品目';

	/// ja: '国'
	String get f_iso3166_3 => '国';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.item.fields
class ItemStrings$entity$item$fields$ja {
	ItemStrings$entity$item$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目コード'
	String get f_code => '品目コード';

	/// ja: '識別コード'
	String get f_identification => '識別コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '表示コード'
	String get f_label_code => '表示コード';

	/// ja: '品目名称'
	String get f_name => '品目名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '品目種類'
	String get f_mstr_item_kind_id => '品目種類';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '個別単位'
	String get f_shared_unit_id => '個別単位';

	/// ja: '備考'
	String get f_remarks => '備考';

	/// ja: '購入品'
	String get f_catalog_item => '購入品';
}

// Path: entity.itemhs.fields
class ItemStrings$entity$itemhs$fields$ja {
	ItemStrings$entity$itemhs$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'HSコード'
	String get f_hs => 'HSコード';
}

// Path: entity.itemsizekind.fields
class ItemStrings$entity$itemsizekind$fields$ja {
	ItemStrings$entity$itemsizekind$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '大きさ区分コード'
	String get f_code => '大きさ区分コード';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: 'サイズ区分名称'
	String get f_names => 'サイズ区分名称';

	/// ja: '単位'
	String get f_shared_unit_id => '単位';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.itemsize.fields
class ItemStrings$entity$itemsize$fields$ja {
	ItemStrings$entity$itemsize$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目大きさ区分'
	String get f_mstr_item_size_kind_id => '品目大きさ区分';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.itempack.fields
class ItemStrings$entity$itempack$fields$ja {
	ItemStrings$entity$itempack$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '梱包区分'
	String get f_label => '梱包区分';

	/// ja: '幅'
	String get f_w => '幅';

	/// ja: '奥行'
	String get f_d => '奥行';

	/// ja: '高さ'
	String get f_h => '高さ';

	/// ja: '単位'
	String get f_unit => '単位';
}

// Path: entity.itemop.fields
class ItemStrings$entity$itemop$fields$ja {
	ItemStrings$entity$itemop$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '運用名称'
	String get f_name => '運用名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '工程運用'
	String get f_mstr_operation_id => '工程運用';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.itemmaker.fields
class ItemStrings$entity$itemmaker$fields$ja {
	ItemStrings$entity$itemmaker$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '製造元名'
	String get f_maker => '製造元名';

	/// ja: '製造元品番'
	String get f_partno => '製造元品番';
}

// Path: entity.itemoptask.fields
class ItemStrings$entity$itemoptask$fields$ja {
	ItemStrings$entity$itemoptask$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目'
	String get f_mstr_item_id => '品目';

	/// ja: '順'
	String get f_sequence => '順';

	/// ja: '標準時間'
	String get f_default_interval => '標準時間';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.itemsupplier.fields
class ItemStrings$entity$itemsupplier$fields$ja {
	ItemStrings$entity$itemsupplier$fields$ja.internal(this._root);

	final ItemStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'サプライヤー'
	String get f_supplier => 'サプライヤー';

	/// ja: 'デリバリータイム（日）'
	String get f_days => 'デリバリータイム（日）';

	/// ja: '最小発注ロット'
	String get f_lot => '最小発注ロット';

	/// ja: '単価（円）'
	String get f_cost => '単価（円）';

	/// ja: '言い値（都度確認）'
	String get f_cost__off => '言い値（都度確認）';

	/// ja: '言い値区分'
	String get f_asking => '言い値区分';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ItemStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '品目',
			'menu.group_purchasing' => '購買',
			'entity.itemkind.title' => '品目区分',
			'entity.itemkind.fields.f_code' => '品目コード',
			'entity.itemkind.fields.f_name' => '品目区分名称',
			'entity.itemkind.fields.f_pronunciation' => '読み',
			'entity.itemkind.fields.f_nickname' => '略称',
			'entity.itemkind.fields.f_remarks' => '備考',
			'entity.hscode.title' => 'HSコード',
			'entity.hscode.fields.f_code' => 'コード',
			'entity.hscode.fields.f_mstr_item_id' => '品目',
			'entity.hscode.fields.f_iso3166_3' => '国',
			'entity.hscode.fields.f_remarks' => '備考',
			'entity.item.title' => '品目',
			'entity.item.fields.f_code' => '品目コード',
			'entity.item.fields.f_identification' => '識別コード',
			'entity.item.fields.f_control_code' => '管理コード',
			'entity.item.fields.f_label_code' => '表示コード',
			'entity.item.fields.f_name' => '品目名称',
			'entity.item.fields.f_pronunciation' => '読み',
			'entity.item.fields.f_nickname' => '略称',
			'entity.item.fields.f_mstr_item_kind_id' => '品目種類',
			'entity.item.fields.f_detail' => '詳細',
			'entity.item.fields.f_shared_unit_id' => '個別単位',
			'entity.item.fields.f_remarks' => '備考',
			'entity.item.fields.f_catalog_item' => '購入品',
			'entity.itemhs.title' => 'HSコード',
			'entity.itemhs.fields.f_hs' => 'HSコード',
			'entity.itemsizekind.title' => '品目大きさ区分',
			'entity.itemsizekind.fields.f_code' => '大きさ区分コード',
			'entity.itemsizekind.fields.f_pronunciation' => '読み',
			'entity.itemsizekind.fields.f_nickname' => '略称',
			'entity.itemsizekind.fields.f_names' => 'サイズ区分名称',
			'entity.itemsizekind.fields.f_shared_unit_id' => '単位',
			'entity.itemsizekind.fields.f_remarks' => '備考',
			'entity.itemsize.title' => '品目大きさ',
			'entity.itemsize.fields.f_mstr_item_size_kind_id' => '品目大きさ区分',
			'entity.itemsize.fields.f_detail' => '詳細',
			'entity.itemsize.fields.f_remarks' => '備考',
			'entity.itempack.title' => '梱包サイズ',
			'entity.itempack.fields.f_label' => '梱包区分',
			'entity.itempack.fields.f_w' => '幅',
			'entity.itempack.fields.f_d' => '奥行',
			'entity.itempack.fields.f_h' => '高さ',
			'entity.itempack.fields.f_unit' => '単位',
			'entity.itemop.title' => '品目工程運用',
			'entity.itemop.fields.f_control_code' => '管理コード',
			'entity.itemop.fields.f_name' => '運用名称',
			'entity.itemop.fields.f_pronunciation' => '読み',
			'entity.itemop.fields.f_nickname' => '略称',
			'entity.itemop.fields.f_mstr_operation_id' => '工程運用',
			'entity.itemop.fields.f_detail' => '詳細',
			'entity.itemop.fields.f_remarks' => '備考',
			'entity.itemmaker.title' => '製造元',
			'entity.itemmaker.fields.f_maker' => '製造元名',
			'entity.itemmaker.fields.f_partno' => '製造元品番',
			'entity.itemoptask.title' => '品目工程運用明細',
			'entity.itemoptask.fields.f_mstr_item_id' => '品目',
			'entity.itemoptask.fields.f_sequence' => '順',
			'entity.itemoptask.fields.f_default_interval' => '標準時間',
			'entity.itemoptask.fields.f_remarks' => '備考',
			'entity.itemsupplier.title' => '品目仕入先',
			'entity.itemsupplier.fields.f_supplier' => 'サプライヤー',
			'entity.itemsupplier.fields.f_days' => 'デリバリータイム（日）',
			'entity.itemsupplier.fields.f_lot' => '最小発注ロット',
			'entity.itemsupplier.fields.f_cost' => '単価（円）',
			'entity.itemsupplier.fields.f_cost__off' => '言い値（都度確認）',
			'entity.itemsupplier.fields.f_asking' => '言い値区分',
			_ => null,
		};
	}
}
