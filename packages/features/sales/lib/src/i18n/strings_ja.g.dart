///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef SalesStringsJa = SalesStrings; // ignore: unused_element
class SalesStrings with BaseTranslations<SalesLocale, SalesStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SalesLocale.build] is preferred.
	SalesStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SalesLocale, SalesStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SalesLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<SalesLocale, SalesStrings> _meta;
	@override TranslationMetadata<SalesLocale, SalesStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final SalesStrings _root = this; // ignore: unused_field

	SalesStrings $copyWith({TranslationMetadata<SalesLocale, SalesStrings>? meta}) => SalesStrings(meta: meta ?? this.$meta);

	// Translations
	late final SalesStrings$menu$ja menu = SalesStrings$menu$ja.internal(_root);
	late final SalesStrings$entity$ja entity = SalesStrings$entity$ja.internal(_root);
}

// Path: menu
class SalesStrings$menu$ja {
	SalesStrings$menu$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '営業'
	String get group => '営業';
}

// Path: entity
class SalesStrings$entity$ja {
	SalesStrings$entity$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations
	late final SalesStrings$entity$order$ja order = SalesStrings$entity$order$ja.internal(_root);
	late final SalesStrings$entity$orderdetail$ja orderdetail = SalesStrings$entity$orderdetail$ja.internal(_root);
}

// Path: entity.order
class SalesStrings$entity$order$ja {
	SalesStrings$entity$order$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注'
	String get title => '受注';

	late final SalesStrings$entity$order$fields$ja fields = SalesStrings$entity$order$fields$ja.internal(_root);
}

// Path: entity.orderdetail
class SalesStrings$entity$orderdetail$ja {
	SalesStrings$entity$orderdetail$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受注明細'
	String get title => '受注明細';

	late final SalesStrings$entity$orderdetail$fields$ja fields = SalesStrings$entity$orderdetail$fields$ja.internal(_root);
}

// Path: entity.order.fields
class SalesStrings$entity$order$fields$ja {
	SalesStrings$entity$order$fields$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '注文番号'
	String get f_order_number => '注文番号';

	/// ja: '顧客発注番号'
	String get f_customer_order_number => '顧客発注番号';

	/// ja: '受注日'
	String get f_order_processing_date => '受注日';

	/// ja: '納期'
	String get f_delivery_date => '納期';

	/// ja: '完了期限'
	String get f_deadline => '完了期限';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.orderdetail.fields
class SalesStrings$entity$orderdetail$fields$ja {
	SalesStrings$entity$orderdetail$fields$ja.internal(this._root);

	final SalesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '数量'
	String get f_quantity => '数量';

	/// ja: '単価'
	String get f_cost => '単価';

	/// ja: '個別納期'
	String get f_delivery_date => '個別納期';

	/// ja: '個別完了期限'
	String get f_deadline => '個別完了期限';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SalesStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '営業',
			'entity.order.title' => '受注',
			'entity.order.fields.f_order_number' => '注文番号',
			'entity.order.fields.f_customer_order_number' => '顧客発注番号',
			'entity.order.fields.f_order_processing_date' => '受注日',
			'entity.order.fields.f_delivery_date' => '納期',
			'entity.order.fields.f_deadline' => '完了期限',
			'entity.order.fields.f_remarks' => '備考',
			'entity.orderdetail.title' => '受注明細',
			'entity.orderdetail.fields.f_quantity' => '数量',
			'entity.orderdetail.fields.f_cost' => '単価',
			'entity.orderdetail.fields.f_delivery_date' => '個別納期',
			'entity.orderdetail.fields.f_deadline' => '個別完了期限',
			'entity.orderdetail.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
