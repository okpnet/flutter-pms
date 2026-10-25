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
			_ => null,
		};
	}
}
