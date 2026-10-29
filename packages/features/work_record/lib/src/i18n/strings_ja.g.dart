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
	late final WorkRecordStrings$menu$ja menu = WorkRecordStrings$menu$ja.internal(_root);
	late final WorkRecordStrings$entity$ja entity = WorkRecordStrings$entity$ja.internal(_root);
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

	/// ja: '引当数量'
	String get f_quantity => '引当数量';

	/// ja: '備考'
	String get f_remarks => '備考';

	/// ja: '資材計画'
	String get f_trans_resource_plan_id => '資材計画';
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

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on WorkRecordStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '作業実績',
			'entity.container.title' => 'コンテナ',
			'entity.container.fields.f_code' => 'コード',
			'entity.container.fields.f_name' => 'コンテナ名称',
			'entity.container.fields.f_remarks' => '備考',
			'entity.invapply.title' => '引き当て',
			'entity.invapply.fields.f_register_at' => '引当日',
			'entity.invapply.fields.f_trans_inventory_request_id' => '引当予約',
			'entity.invapply.fields.f_remarks' => '備考',
			'entity.invreq.title' => '引き当て予約',
			'entity.invreq.fields.f_register_at' => '引当予約日',
			'entity.invreq.fields.f_register_plan_at' => '引当予定日',
			'entity.invreq.fields.f_trans_purchase_rez_id' => '購買引き当て',
			'entity.invreq.fields.f_trans_product_rez_id' => '生産引き当て',
			'entity.invreq.fields.f_quantity' => '引当数量',
			'entity.invreq.fields.f_remarks' => '備考',
			'entity.invreq.fields.f_trans_resource_plan_id' => '資材計画',
			'entity.certificate.title' => '成績書',
			'entity.certificate.fields.f_serial' => 'シリアル番号',
			'entity.certificate.fields.f_title' => '件名',
			'entity.certificate.fields.f_class' => '区分',
			'entity.certificate.fields.f_remarks' => '備考',
			'entity.workrec.title' => '作業実績',
			'entity.workrec.fields.f_trans_work_plan_id' => '生産計画詳細',
			'entity.workrec.fields.f_nth_time' => '回数',
			'entity.workrec.fields.f_start_at' => '開始',
			'entity.workrec.fields.f_stop_at' => '終了',
			'entity.workrec.fields.f_qty' => '作業数量',
			'entity.workrec.fields.f_remarks' => '備考',
			'entity.wrcert.title' => '作業成績書',
			'entity.wrcert.fields.f_trans_certificate_id' => '成績書',
			'entity.wrcert.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
