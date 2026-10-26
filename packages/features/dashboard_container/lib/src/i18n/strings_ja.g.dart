///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef DashboardContainerStringsJa = DashboardContainerStrings; // ignore: unused_element
class DashboardContainerStrings with BaseTranslations<DashboardContainerLocale, DashboardContainerStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [DashboardContainerLocale.build] is preferred.
	DashboardContainerStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: DashboardContainerLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> _meta;
	@override TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final DashboardContainerStrings _root = this; // ignore: unused_field

	DashboardContainerStrings $copyWith({TranslationMetadata<DashboardContainerLocale, DashboardContainerStrings>? meta}) => DashboardContainerStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: 'すべて'
	String get all => 'すべて';

	/// ja: '件'
	String get unit => '件';

	/// ja: '取得中...'
	String get loading => '取得中...';

	/// ja: '取得できません'
	String get failed => '取得できません';

	/// ja: '未設定の項目です'
	String get unavailable => '未設定の項目です';

	/// ja: '絞り込み'
	String get filter => '絞り込み';

	late final DashboardContainerStrings$edit$ja edit = DashboardContainerStrings$edit$ja.internal(_root);
}

// Path: edit
class DashboardContainerStrings$edit$ja {
	DashboardContainerStrings$edit$ja.internal(this._root);

	final DashboardContainerStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コンテナがありません。追加してください。'
	String get empty => 'コンテナがありません。追加してください。';

	/// ja: 'コンテナを追加'
	String get addContainer => 'コンテナを追加';

	/// ja: '項目を追加'
	String get addTile => '項目を追加';

	/// ja: '前へ'
	String get moveUp => '前へ';

	/// ja: '後ろへ'
	String get moveDown => '後ろへ';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: '件数の元'
	String get source => '件数の元';

	/// ja: 'フィルタグループ'
	String get group => 'フィルタグループ';

	/// ja: 'なし'
	String get noGroup => 'なし';

	late final DashboardContainerStrings$edit$size$ja size = DashboardContainerStrings$edit$size$ja.internal(_root);

	/// ja: '表示しない(大きさの上限を超えています)'
	String get hiddenTile => '表示しない(大きさの上限を超えています)';
}

// Path: edit.size
class DashboardContainerStrings$edit$size$ja {
	DashboardContainerStrings$edit$size$ja.internal(this._root);

	final DashboardContainerStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'Full'
	String get full => 'Full';

	/// ja: '1/2'
	String get half => '1/2';

	/// ja: '1/4'
	String get quarter => '1/4';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on DashboardContainerStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'all' => 'すべて',
			'unit' => '件',
			'loading' => '取得中...',
			'failed' => '取得できません',
			'unavailable' => '未設定の項目です',
			'filter' => '絞り込み',
			'edit.empty' => 'コンテナがありません。追加してください。',
			'edit.addContainer' => 'コンテナを追加',
			'edit.addTile' => '項目を追加',
			'edit.moveUp' => '前へ',
			'edit.moveDown' => '後ろへ',
			'edit.delete' => '削除',
			'edit.source' => '件数の元',
			'edit.group' => 'フィルタグループ',
			'edit.noGroup' => 'なし',
			'edit.size.full' => 'Full',
			'edit.size.half' => '1/2',
			'edit.size.quarter' => '1/4',
			'edit.hiddenTile' => '表示しない(大きさの上限を超えています)',
			_ => null,
		};
	}
}
