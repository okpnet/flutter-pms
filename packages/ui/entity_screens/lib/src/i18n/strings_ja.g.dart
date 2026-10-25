///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef EntityScreenStringsJa = EntityScreenStrings; // ignore: unused_element
class EntityScreenStrings with BaseTranslations<EntityScreenLocale, EntityScreenStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [EntityScreenLocale.build] is preferred.
	EntityScreenStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: EntityScreenLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<EntityScreenLocale, EntityScreenStrings> _meta;
	@override TranslationMetadata<EntityScreenLocale, EntityScreenStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final EntityScreenStrings _root = this; // ignore: unused_field

	EntityScreenStrings $copyWith({TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta}) => EntityScreenStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '新規'
	String get create => '新規';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '追加'
	String get add => '追加';

	/// ja: '親'
	String get parent => '親';

	/// ja: '最上位(親なし)'
	String get noParent => '最上位(親なし)';

	/// ja: '未選択'
	String get unselected => '未選択';

	/// ja: 'データが見つかりません'
	String get notFound => 'データが見つかりません';

	/// ja: '読み込めません'
	String get loadFailed => '読み込めません';

	/// ja: '保存に失敗しました'
	String get saveFailed => '保存に失敗しました';

	/// ja: '削除に失敗しました'
	String get deleteFailed => '削除に失敗しました';

	/// ja: 'データがありません'
	String get noData => 'データがありません';

	/// ja: '件'
	String get children => '件';

	late final EntityScreenStrings$confirmDelete$ja confirmDelete = EntityScreenStrings$confirmDelete$ja.internal(_root);
	late final EntityScreenStrings$validation$ja validation = EntityScreenStrings$validation$ja.internal(_root);
}

// Path: confirmDelete
class EntityScreenStrings$confirmDelete$ja {
	EntityScreenStrings$confirmDelete$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '削除の確認'
	String get title => '削除の確認';

	/// ja: '「$name」を削除します。'
	String message({required Object name}) => '「${name}」を削除します。';
}

// Path: validation
class EntityScreenStrings$validation$ja {
	EntityScreenStrings$validation$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '必須です'
	String get required => '必須です';

	/// ja: '数値で入力してください'
	String get invalidNumber => '数値で入力してください';

	/// ja: '日付を yyyy-MM-dd で入力してください'
	String get invalidDate => '日付を yyyy-MM-dd で入力してください';

	/// ja: '選択肢にない値です'
	String get invalidChoice => '選択肢にない値です';

	/// ja: '自分または配下は親にできません'
	String get parentCycle => '自分または配下は親にできません';

	/// ja: '配下があるため削除できません'
	String get hasChildren => '配下があるため削除できません';

	/// ja: '他で使用中のため削除できません'
	String get referenced => '他で使用中のため削除できません';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on EntityScreenStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'create' => '新規',
			'save' => '保存',
			'delete' => '削除',
			'cancel' => 'キャンセル',
			'add' => '追加',
			'parent' => '親',
			'noParent' => '最上位(親なし)',
			'unselected' => '未選択',
			'notFound' => 'データが見つかりません',
			'loadFailed' => '読み込めません',
			'saveFailed' => '保存に失敗しました',
			'deleteFailed' => '削除に失敗しました',
			'noData' => 'データがありません',
			'children' => '件',
			'confirmDelete.title' => '削除の確認',
			'confirmDelete.message' => ({required Object name}) => '「${name}」を削除します。',
			'validation.required' => '必須です',
			'validation.invalidNumber' => '数値で入力してください',
			'validation.invalidDate' => '日付を yyyy-MM-dd で入力してください',
			'validation.invalidChoice' => '選択肢にない値です',
			'validation.parentCycle' => '自分または配下は親にできません',
			'validation.hasChildren' => '配下があるため削除できません',
			'validation.referenced' => '他で使用中のため削除できません',
			_ => null,
		};
	}
}
