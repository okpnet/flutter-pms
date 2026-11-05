///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef UserProfileStringsJa = UserProfileStrings; // ignore: unused_element
class UserProfileStrings with BaseTranslations<UserProfileLocale, UserProfileStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [UserProfileLocale.build] is preferred.
	UserProfileStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<UserProfileLocale, UserProfileStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: UserProfileLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<UserProfileLocale, UserProfileStrings> _meta;
	@override TranslationMetadata<UserProfileLocale, UserProfileStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final UserProfileStrings _root = this; // ignore: unused_field

	UserProfileStrings $copyWith({TranslationMetadata<UserProfileLocale, UserProfileStrings>? meta}) => UserProfileStrings(meta: meta ?? this.$meta);

	// Translations
	late final UserProfileStrings$menu$ja menu = UserProfileStrings$menu$ja.internal(_root);
	late final UserProfileStrings$myImage$ja myImage = UserProfileStrings$myImage$ja.internal(_root);
	late final UserProfileStrings$errors$ja errors = UserProfileStrings$errors$ja.internal(_root);
	late final UserProfileStrings$display$ja display = UserProfileStrings$display$ja.internal(_root);
}

// Path: menu
class UserProfileStrings$menu$ja {
	UserProfileStrings$menu$ja.internal(this._root);

	final UserProfileStrings _root; // ignore: unused_field

	// Translations

	/// ja: '自分のイメージ'
	String get myImage => '自分のイメージ';
}

// Path: myImage
class UserProfileStrings$myImage$ja {
	UserProfileStrings$myImage$ja.internal(this._root);

	final UserProfileStrings _root; // ignore: unused_field

	// Translations

	/// ja: '自分のイメージ'
	String get title => '自分のイメージ';

	/// ja: '現在の自分のイメージ'
	String get current => '現在の自分のイメージ';

	/// ja: '画像ファイルを選ぶ'
	String get choose => '画像ファイルを選ぶ';

	/// ja: 'PNG・JPEG・GIF・WebP、2MBまで。アプリバーとダッシュボードの顔写真が変わります。'
	String get note => 'PNG・JPEG・GIF・WebP、2MBまで。アプリバーとダッシュボードの顔写真が変わります。';

	/// ja: '初期のイメージに戻す'
	String get reset => '初期のイメージに戻す';

	/// ja: '自分のイメージを変更しました。'
	String get changed => '自分のイメージを変更しました。';

	/// ja: '初期のイメージに戻しました。'
	String get resetDone => '初期のイメージに戻しました。';

	/// ja: '自分のイメージは、管理者が変更します。変更したいときは、管理者に依頼してください。'
	String get readOnly => '自分のイメージは、管理者が変更します。変更したいときは、管理者に依頼してください。';

	/// ja: 'ログインしていないため、自分のイメージを表示できません。'
	String get noSession => 'ログインしていないため、自分のイメージを表示できません。';
}

// Path: errors
class UserProfileStrings$errors$ja {
	UserProfileStrings$errors$ja.internal(this._root);

	final UserProfileStrings _root; // ignore: unused_field

	// Translations

	/// ja: '画像が大きすぎます。{max}MB以下のファイルを選んでください。'
	String tooLarge({required Object max}) => '画像が大きすぎます。${max}MB以下のファイルを選んでください。';

	/// ja: '画像として読み込めません。PNG・JPEG・GIF・WebPのファイルを選んでください。'
	String get invalidImage => '画像として読み込めません。PNG・JPEG・GIF・WebPのファイルを選んでください。';

	/// ja: '画像を受け付けられませんでした。形式(JPEG・PNG・WebP)と大きさを確認してください。'
	String get validation => '画像を受け付けられませんでした。形式(JPEG・PNG・WebP)と大きさを確認してください。';

	/// ja: 'この画像を変更する権限がありません。'
	String get forbidden => 'この画像を変更する権限がありません。';

	/// ja: 'ログインが必要です。もう一度ログインしてください。'
	String get unauthorized => 'ログインが必要です。もう一度ログインしてください。';

	/// ja: '試行が多すぎます。しばらくしてからもう一度お試しください。'
	String get rateLimited => '試行が多すぎます。しばらくしてからもう一度お試しください。';

	/// ja: '通信できません。接続を確認してください。'
	String get network => '通信できません。接続を確認してください。';

	/// ja: 'この環境ではファイルを選択できません。'
	String get unsupported => 'この環境ではファイルを選択できません。';

	/// ja: '予期しないエラーが発生しました。'
	String get unknown => '予期しないエラーが発生しました。';
}

// Path: display
class UserProfileStrings$display$ja {
	UserProfileStrings$display$ja.internal(this._root);

	final UserProfileStrings _root; // ignore: unused_field

	// Translations

	/// ja: '表示パターン'
	String get title => '表示パターン';

	/// ja: 'small(タイトルバー向け。顔写真のみ。タップでメニュー)'
	String get small => 'small(タイトルバー向け。顔写真のみ。タップでメニュー)';

	/// ja: 'medium(サイドバー向け。顔写真 + 見出し・タイトル・サブタイトル。メニューがあるときだけ ▼)'
	String get medium => 'medium(サイドバー向け。顔写真 + 見出し・タイトル・サブタイトル。メニューがあるときだけ ▼)';

	/// ja: 'medium(メニューなし。▼ もメニューも出さない)'
	String get mediumNoMenu => 'medium(メニューなし。▼ もメニューも出さない)';

	/// ja: 'large(ダイアログ向け。左に顔写真・右に項目、中央に操作のボタン、下に詳細)'
	String get large => 'large(ダイアログ向け。左に顔写真・右に項目、中央に操作のボタン、下に詳細)';

	/// ja: 'large(幅が狭いとき。項目が顔写真の下へ回り込み、長い文字は省略)'
	String get largeNarrow => 'large(幅が狭いとき。項目が顔写真の下へ回り込み、長い文字は省略)';

	/// ja: 'large(詳細を右寄せにした例)'
	String get largeRight => 'large(詳細を右寄せにした例)';

	/// ja: '詳細情報(呼び出し元が渡したWidget)'
	String get detail => '詳細情報(呼び出し元が渡したWidget)';

	/// ja: '設定'
	String get menuSettings => '設定';

	/// ja: 'ログアウト'
	String get menuLogout => 'ログアウト';

	/// ja: '選んだ項目: {label}'
	String picked({required Object label}) => '選んだ項目: ${label}';

	/// ja: '生産管理部'
	String get sampleHeading => '生産管理部';

	/// ja: '課長'
	String get sampleSubtitle => '課長';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on UserProfileStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.myImage' => '自分のイメージ',
			'myImage.title' => '自分のイメージ',
			'myImage.current' => '現在の自分のイメージ',
			'myImage.choose' => '画像ファイルを選ぶ',
			'myImage.note' => 'PNG・JPEG・GIF・WebP、2MBまで。アプリバーとダッシュボードの顔写真が変わります。',
			'myImage.reset' => '初期のイメージに戻す',
			'myImage.changed' => '自分のイメージを変更しました。',
			'myImage.resetDone' => '初期のイメージに戻しました。',
			'myImage.readOnly' => '自分のイメージは、管理者が変更します。変更したいときは、管理者に依頼してください。',
			'myImage.noSession' => 'ログインしていないため、自分のイメージを表示できません。',
			'errors.tooLarge' => ({required Object max}) => '画像が大きすぎます。${max}MB以下のファイルを選んでください。',
			'errors.invalidImage' => '画像として読み込めません。PNG・JPEG・GIF・WebPのファイルを選んでください。',
			'errors.validation' => '画像を受け付けられませんでした。形式(JPEG・PNG・WebP)と大きさを確認してください。',
			'errors.forbidden' => 'この画像を変更する権限がありません。',
			'errors.unauthorized' => 'ログインが必要です。もう一度ログインしてください。',
			'errors.rateLimited' => '試行が多すぎます。しばらくしてからもう一度お試しください。',
			'errors.network' => '通信できません。接続を確認してください。',
			'errors.unsupported' => 'この環境ではファイルを選択できません。',
			'errors.unknown' => '予期しないエラーが発生しました。',
			'display.title' => '表示パターン',
			'display.small' => 'small(タイトルバー向け。顔写真のみ。タップでメニュー)',
			'display.medium' => 'medium(サイドバー向け。顔写真 + 見出し・タイトル・サブタイトル。メニューがあるときだけ ▼)',
			'display.mediumNoMenu' => 'medium(メニューなし。▼ もメニューも出さない)',
			'display.large' => 'large(ダイアログ向け。左に顔写真・右に項目、中央に操作のボタン、下に詳細)',
			'display.largeNarrow' => 'large(幅が狭いとき。項目が顔写真の下へ回り込み、長い文字は省略)',
			'display.largeRight' => 'large(詳細を右寄せにした例)',
			'display.detail' => '詳細情報(呼び出し元が渡したWidget)',
			'display.menuSettings' => '設定',
			'display.menuLogout' => 'ログアウト',
			'display.picked' => ({required Object label}) => '選んだ項目: ${label}',
			'display.sampleHeading' => '生産管理部',
			'display.sampleSubtitle' => '課長',
			_ => null,
		};
	}
}
