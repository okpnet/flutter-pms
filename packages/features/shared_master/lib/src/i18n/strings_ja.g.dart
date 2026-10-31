///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef SharedMasterStringsJa = SharedMasterStrings; // ignore: unused_element
class SharedMasterStrings with BaseTranslations<SharedMasterLocale, SharedMasterStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SharedMasterLocale.build] is preferred.
	SharedMasterStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<SharedMasterLocale, SharedMasterStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: SharedMasterLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<SharedMasterLocale, SharedMasterStrings> _meta;
	@override TranslationMetadata<SharedMasterLocale, SharedMasterStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final SharedMasterStrings _root = this; // ignore: unused_field

	SharedMasterStrings $copyWith({TranslationMetadata<SharedMasterLocale, SharedMasterStrings>? meta}) => SharedMasterStrings(meta: meta ?? this.$meta);

	// Translations
	late final SharedMasterStrings$shippingKind$ja shippingKind = SharedMasterStrings$shippingKind$ja.internal(_root);
	late final SharedMasterStrings$common$ja common = SharedMasterStrings$common$ja.internal(_root);
	late final SharedMasterStrings$menu$ja menu = SharedMasterStrings$menu$ja.internal(_root);
	late final SharedMasterStrings$stakeholder$ja stakeholder = SharedMasterStrings$stakeholder$ja.internal(_root);
	late final SharedMasterStrings$entity$ja entity = SharedMasterStrings$entity$ja.internal(_root);
}

// Path: shippingKind
class SharedMasterStrings$shippingKind$ja {
	SharedMasterStrings$shippingKind$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '配送区分台帳'
	String get title => '配送区分台帳';

	/// ja: '配送区分を選択'
	String get pickerTitle => '配送区分を選択';

	/// ja: '配送区分の登録'
	String get createTitle => '配送区分の登録';

	/// ja: '配送区分の編集'
	String get editTitle => '配送区分の編集';

	/// ja: '新規'
	String get create => '新規';

	/// ja: '配送区分が見つかりません'
	String get notFound => '配送区分が見つかりません';

	/// ja: '配送区分を取得できません'
	String get loadFailed => '配送区分を取得できません';

	/// ja: '保存に失敗しました'
	String get saveFailed => '保存に失敗しました';

	/// ja: '削除に失敗しました'
	String get deleteFailed => '削除に失敗しました';

	late final SharedMasterStrings$shippingKind$columns$ja columns = SharedMasterStrings$shippingKind$columns$ja.internal(_root);
	late final SharedMasterStrings$shippingKind$fields$ja fields = SharedMasterStrings$shippingKind$fields$ja.internal(_root);
	late final SharedMasterStrings$shippingKind$validation$ja validation = SharedMasterStrings$shippingKind$validation$ja.internal(_root);
	late final SharedMasterStrings$shippingKind$confirmDelete$ja confirmDelete = SharedMasterStrings$shippingKind$confirmDelete$ja.internal(_root);
}

// Path: common
class SharedMasterStrings$common$ja {
	SharedMasterStrings$common$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保存'
	String get save => '保存';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';
}

// Path: menu
class SharedMasterStrings$menu$ja {
	SharedMasterStrings$menu$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '営業'
	String get sales => '営業';

	/// ja: '購買'
	String get purchasing => '購買';
}

// Path: stakeholder
class SharedMasterStrings$stakeholder$ja {
	SharedMasterStrings$stakeholder$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '顧客台帳'
	String get customerLedger => '顧客台帳';

	/// ja: '外部供給者台帳'
	String get supplierLedger => '外部供給者台帳';

	/// ja: '顧客の選択'
	String get customerPick => '顧客の選択';

	/// ja: 'サプライヤーの選択'
	String get supplierPick => 'サプライヤーの選択';
}

// Path: entity
class SharedMasterStrings$entity$ja {
	SharedMasterStrings$entity$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations
	late final SharedMasterStrings$entity$stakeholder$ja stakeholder = SharedMasterStrings$entity$stakeholder$ja.internal(_root);
	late final SharedMasterStrings$entity$contact$ja contact = SharedMasterStrings$entity$contact$ja.internal(_root);
}

// Path: shippingKind.columns
class SharedMasterStrings$shippingKind$columns$ja {
	SharedMasterStrings$shippingKind$columns$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '配送区分コード'
	String get code => '配送区分コード';

	/// ja: '配送区分名称'
	String get name => '配送区分名称';

	/// ja: '読み'
	String get pronunciation => '読み';

	/// ja: '略称'
	String get nickname => '略称';

	/// ja: '備考'
	String get remarks => '備考';
}

// Path: shippingKind.fields
class SharedMasterStrings$shippingKind$fields$ja {
	SharedMasterStrings$shippingKind$fields$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '配送区分コード *'
	String get code => '配送区分コード *';

	/// ja: '配送区分名称 *'
	String get name => '配送区分名称 *';
}

// Path: shippingKind.validation
class SharedMasterStrings$shippingKind$validation$ja {
	SharedMasterStrings$shippingKind$validation$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '配送区分コードは必須です'
	String get codeRequired => '配送区分コードは必須です';

	/// ja: '配送区分名称は必須です'
	String get nameRequired => '配送区分名称は必須です';

	/// ja: '配送区分コードが重複しています'
	String get codeDuplicated => '配送区分コードが重複しています';

	/// ja: '使用中のため削除できません'
	String get inUse => '使用中のため削除できません';
}

// Path: shippingKind.confirmDelete
class SharedMasterStrings$shippingKind$confirmDelete$ja {
	SharedMasterStrings$shippingKind$confirmDelete$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '削除の確認'
	String get title => '削除の確認';

	/// ja: '「$name」を削除します。'
	String message({required Object name}) => '「${name}」を削除します。';
}

// Path: entity.stakeholder
class SharedMasterStrings$entity$stakeholder$ja {
	SharedMasterStrings$entity$stakeholder$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '利害関係者'
	String get title => '利害関係者';

	late final SharedMasterStrings$entity$stakeholder$fields$ja fields = SharedMasterStrings$entity$stakeholder$fields$ja.internal(_root);
	late final SharedMasterStrings$entity$stakeholder$reverse$ja reverse = SharedMasterStrings$entity$stakeholder$reverse$ja.internal(_root);
}

// Path: entity.contact
class SharedMasterStrings$entity$contact$ja {
	SharedMasterStrings$entity$contact$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者'
	String get title => '担当者';

	late final SharedMasterStrings$entity$contact$fields$ja fields = SharedMasterStrings$entity$contact$fields$ja.internal(_root);
}

// Path: entity.stakeholder.fields
class SharedMasterStrings$entity$stakeholder$fields$ja {
	SharedMasterStrings$entity$stakeholder$fields$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '利害関係者コード'
	String get f_code => '利害関係者コード';

	/// ja: '管理コード'
	String get f_control_code => '管理コード';

	/// ja: '名称'
	String get f_name => '名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '顧客'
	String get f_is_customer => '顧客';

	/// ja: '外部供給者'
	String get f_is_supplier => '外部供給者';

	/// ja: '配送サービサー'
	String get f_is_logistics => '配送サービサー';

	/// ja: 'メール'
	String get f_mail => 'メール';

	/// ja: '配送区分'
	String get f_mstr_shipping_kind_id => '配送区分';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.stakeholder.reverse
class SharedMasterStrings$entity$stakeholder$reverse$ja {
	SharedMasterStrings$entity$stakeholder$reverse$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品目仕入先'
	String get itemsupplier => '品目仕入先';

	/// ja: '監査'
	String get audit => '監査';
}

// Path: entity.contact.fields
class SharedMasterStrings$entity$contact$fields$ja {
	SharedMasterStrings$entity$contact$fields$ja.internal(this._root);

	final SharedMasterStrings _root; // ignore: unused_field

	// Translations

	/// ja: '氏名'
	String get f_name => '氏名';

	/// ja: '部署'
	String get f_dept => '部署';

	/// ja: '電話番号'
	String get f_tel => '電話番号';

	/// ja: 'メール'
	String get f_mail => 'メール';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on SharedMasterStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'shippingKind.title' => '配送区分台帳',
			'shippingKind.pickerTitle' => '配送区分を選択',
			'shippingKind.createTitle' => '配送区分の登録',
			'shippingKind.editTitle' => '配送区分の編集',
			'shippingKind.create' => '新規',
			'shippingKind.notFound' => '配送区分が見つかりません',
			'shippingKind.loadFailed' => '配送区分を取得できません',
			'shippingKind.saveFailed' => '保存に失敗しました',
			'shippingKind.deleteFailed' => '削除に失敗しました',
			'shippingKind.columns.code' => '配送区分コード',
			'shippingKind.columns.name' => '配送区分名称',
			'shippingKind.columns.pronunciation' => '読み',
			'shippingKind.columns.nickname' => '略称',
			'shippingKind.columns.remarks' => '備考',
			'shippingKind.fields.code' => '配送区分コード *',
			'shippingKind.fields.name' => '配送区分名称 *',
			'shippingKind.validation.codeRequired' => '配送区分コードは必須です',
			'shippingKind.validation.nameRequired' => '配送区分名称は必須です',
			'shippingKind.validation.codeDuplicated' => '配送区分コードが重複しています',
			'shippingKind.validation.inUse' => '使用中のため削除できません',
			'shippingKind.confirmDelete.title' => '削除の確認',
			'shippingKind.confirmDelete.message' => ({required Object name}) => '「${name}」を削除します。',
			'common.save' => '保存',
			'common.delete' => '削除',
			'common.cancel' => 'キャンセル',
			'menu.sales' => '営業',
			'menu.purchasing' => '購買',
			'stakeholder.customerLedger' => '顧客台帳',
			'stakeholder.supplierLedger' => '外部供給者台帳',
			'stakeholder.customerPick' => '顧客の選択',
			'stakeholder.supplierPick' => 'サプライヤーの選択',
			'entity.stakeholder.title' => '利害関係者',
			'entity.stakeholder.fields.f_code' => '利害関係者コード',
			'entity.stakeholder.fields.f_control_code' => '管理コード',
			'entity.stakeholder.fields.f_name' => '名称',
			'entity.stakeholder.fields.f_pronunciation' => '読み',
			'entity.stakeholder.fields.f_nickname' => '略称',
			'entity.stakeholder.fields.f_is_customer' => '顧客',
			'entity.stakeholder.fields.f_is_supplier' => '外部供給者',
			'entity.stakeholder.fields.f_is_logistics' => '配送サービサー',
			'entity.stakeholder.fields.f_mail' => 'メール',
			'entity.stakeholder.fields.f_mstr_shipping_kind_id' => '配送区分',
			'entity.stakeholder.fields.f_remarks' => '備考',
			'entity.stakeholder.reverse.itemsupplier' => '品目仕入先',
			'entity.stakeholder.reverse.audit' => '監査',
			'entity.contact.title' => '担当者',
			'entity.contact.fields.f_name' => '氏名',
			'entity.contact.fields.f_dept' => '部署',
			'entity.contact.fields.f_tel' => '電話番号',
			'entity.contact.fields.f_mail' => 'メール',
			_ => null,
		};
	}
}
