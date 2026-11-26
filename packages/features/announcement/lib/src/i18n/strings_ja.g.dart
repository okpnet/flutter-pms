///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef AnnouncementStringsJa = AnnouncementStrings; // ignore: unused_element
class AnnouncementStrings with BaseTranslations<AnnouncementLocale, AnnouncementStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AnnouncementLocale.build] is preferred.
	AnnouncementStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AnnouncementLocale, AnnouncementStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AnnouncementLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<AnnouncementLocale, AnnouncementStrings> _meta;
	@override TranslationMetadata<AnnouncementLocale, AnnouncementStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final AnnouncementStrings _root = this; // ignore: unused_field

	AnnouncementStrings $copyWith({TranslationMetadata<AnnouncementLocale, AnnouncementStrings>? meta}) => AnnouncementStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '通知'
	String get title => '通知';

	/// ja: '読み込み中…'
	String get loading => '読み込み中…';

	/// ja: '通知を読み込めませんでした。'
	String get loadFailed => '通知を読み込めませんでした。';

	/// ja: '通知はありません。'
	String get empty => '通知はありません。';

	/// ja: '未読だけ'
	String get unreadOnly => '未読だけ';

	/// ja: '既読にする'
	String get markRead => '既読にする';

	/// ja: '既読にできませんでした。'
	String get markReadFailed => '既読にできませんでした。';

	/// ja: 'すべて既読にする'
	String get markAllRead => 'すべて既読にする';

	/// ja: '既読にできなかった通知があります。もう一度お試しください。'
	String get markAllReadFailed => '既読にできなかった通知があります。もう一度お試しください。';

	/// ja: 'ダッシュボードへ戻る'
	String get backToDashboard => 'ダッシュボードへ戻る';

	/// ja: 'ほか ${n} 件'
	String more({required Object n}) => 'ほか ${n} 件';

	/// ja: '未読'
	String get unread => '未読';

	/// ja: '対象'
	String get target => '対象';

	/// ja: '期限'
	String get expires => '期限';

	late final AnnouncementStrings$banner$ja banner = AnnouncementStrings$banner$ja.internal(_root);
}

// Path: banner
class AnnouncementStrings$banner$ja {
	AnnouncementStrings$banner$ja.internal(this._root);

	final AnnouncementStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未読の通知が ${n} 件あります'
	String summary({required Object n}) => '未読の通知が ${n} 件あります';

	/// ja: 'すべて見る'
	String get viewAll => 'すべて見る';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AnnouncementStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => '通知',
			'loading' => '読み込み中…',
			'loadFailed' => '通知を読み込めませんでした。',
			'empty' => '通知はありません。',
			'unreadOnly' => '未読だけ',
			'markRead' => '既読にする',
			'markReadFailed' => '既読にできませんでした。',
			'markAllRead' => 'すべて既読にする',
			'markAllReadFailed' => '既読にできなかった通知があります。もう一度お試しください。',
			'backToDashboard' => 'ダッシュボードへ戻る',
			'more' => ({required Object n}) => 'ほか ${n} 件',
			'unread' => '未読',
			'target' => '対象',
			'expires' => '期限',
			'banner.summary' => ({required Object n}) => '未読の通知が ${n} 件あります',
			'banner.viewAll' => 'すべて見る',
			_ => null,
		};
	}
}
