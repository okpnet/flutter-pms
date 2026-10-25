///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef AppCoreStringsJa = AppCoreStrings; // ignore: unused_element
class AppCoreStrings with BaseTranslations<AppCoreLocale, AppCoreStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppCoreLocale.build] is preferred.
	AppCoreStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppCoreLocale, AppCoreStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppCoreLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<AppCoreLocale, AppCoreStrings> _meta;
	@override TranslationMetadata<AppCoreLocale, AppCoreStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final AppCoreStrings _root = this; // ignore: unused_field

	AppCoreStrings $copyWith({TranslationMetadata<AppCoreLocale, AppCoreStrings>? meta}) => AppCoreStrings(meta: meta ?? this.$meta);

	// Translations
	late final AppCoreStrings$app$ja app = AppCoreStrings$app$ja.internal(_root);
	late final AppCoreStrings$shell$ja shell = AppCoreStrings$shell$ja.internal(_root);
	late final AppCoreStrings$boot$ja boot = AppCoreStrings$boot$ja.internal(_root);
	late final AppCoreStrings$logout$ja logout = AppCoreStrings$logout$ja.internal(_root);
	late final AppCoreStrings$error$ja error = AppCoreStrings$error$ja.internal(_root);
	late final AppCoreStrings$settings$ja settings = AppCoreStrings$settings$ja.internal(_root);
}

// Path: app
class AppCoreStrings$app$ja {
	AppCoreStrings$app$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: '生産管理'
	String get title => '生産管理';
}

// Path: shell
class AppCoreStrings$shell$ja {
	AppCoreStrings$shell$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ダッシュボード'
	String get dashboard => 'ダッシュボード';

	/// ja: 'メニューを開く'
	String get openMenu => 'メニューを開く';

	/// ja: 'ユーザーメニュー'
	String get userMenu => 'ユーザーメニュー';

	/// ja: '設定'
	String get settings => '設定';

	/// ja: 'ログアウト'
	String get logout => 'ログアウト';
}

// Path: boot
class AppCoreStrings$boot$ja {
	AppCoreStrings$boot$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: '読み込み中...'
	String get loading => '読み込み中...';
}

// Path: logout
class AppCoreStrings$logout$ja {
	AppCoreStrings$logout$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ログアウト'
	String get title => 'ログアウト';

	/// ja: 'ログアウトしました。'
	String get message => 'ログアウトしました。';

	/// ja: 'ログインする(仮)'
	String get signIn => 'ログインする(仮)';
}

// Path: error
class AppCoreStrings$error$ja {
	AppCoreStrings$error$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'エラー'
	String get title => 'エラー';

	/// ja: 'アプリケーションでエラーが発生しました'
	String get message => 'アプリケーションでエラーが発生しました';

	/// ja: '戻る'
	String get back => '戻る';
}

// Path: settings
class AppCoreStrings$settings$ja {
	AppCoreStrings$settings$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設定'
	String get title => '設定';

	/// ja: '使用者全体ではなく、使用しているユーザーにだけ影響する設定です。'
	String get note => '使用者全体ではなく、使用しているユーザーにだけ影響する設定です。';

	late final AppCoreStrings$settings$language$ja language = AppCoreStrings$settings$language$ja.internal(_root);
	late final AppCoreStrings$settings$layout$ja layout = AppCoreStrings$settings$layout$ja.internal(_root);
	late final AppCoreStrings$settings$user$ja user = AppCoreStrings$settings$user$ja.internal(_root);
	late final AppCoreStrings$settings$about$ja about = AppCoreStrings$settings$about$ja.internal(_root);
}

// Path: settings.language
class AppCoreStrings$settings$language$ja {
	AppCoreStrings$settings$language$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: '使用言語'
	String get title => '使用言語';

	/// ja: '実行環境に従う'
	String get system => '実行環境に従う';

	/// ja: '日本語'
	String get ja => '日本語';

	/// ja: 'English'
	String get en => 'English';
}

// Path: settings.layout
class AppCoreStrings$settings$layout$ja {
	AppCoreStrings$settings$layout$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: '画面'
	String get title => '画面';

	/// ja: 'サイドバーをアイコンだけにする'
	String get sidebarIconOnly => 'サイドバーをアイコンだけにする';
}

// Path: settings.user
class AppCoreStrings$settings$user$ja {
	AppCoreStrings$settings$user$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ログインユーザー'
	String get title => 'ログインユーザー';

	/// ja: '画面に表示するユーザー名と役割です。保存はされず、起動のたびに標準の値へ戻ります。'
	String get note => '画面に表示するユーザー名と役割です。保存はされず、起動のたびに標準の値へ戻ります。';

	/// ja: 'ユーザー名'
	String get name => 'ユーザー名';

	/// ja: '役割・所属'
	String get role => '役割・所属';

	/// ja: '設定する'
	String get apply => '設定する';

	/// ja: '標準に戻す'
	String get reset => '標準に戻す';
}

// Path: settings.about
class AppCoreStrings$settings$about$ja {
	AppCoreStrings$settings$about$ja.internal(this._root);

	final AppCoreStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'バージョン情報'
	String get title => 'バージョン情報';

	/// ja: 'アプリケーションのバージョン'
	String get version => 'アプリケーションのバージョン';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AppCoreStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => '生産管理',
			'shell.dashboard' => 'ダッシュボード',
			'shell.openMenu' => 'メニューを開く',
			'shell.userMenu' => 'ユーザーメニュー',
			'shell.settings' => '設定',
			'shell.logout' => 'ログアウト',
			'boot.loading' => '読み込み中...',
			'logout.title' => 'ログアウト',
			'logout.message' => 'ログアウトしました。',
			'logout.signIn' => 'ログインする(仮)',
			'error.title' => 'エラー',
			'error.message' => 'アプリケーションでエラーが発生しました',
			'error.back' => '戻る',
			'settings.title' => '設定',
			'settings.note' => '使用者全体ではなく、使用しているユーザーにだけ影響する設定です。',
			'settings.language.title' => '使用言語',
			'settings.language.system' => '実行環境に従う',
			'settings.language.ja' => '日本語',
			'settings.language.en' => 'English',
			'settings.layout.title' => '画面',
			'settings.layout.sidebarIconOnly' => 'サイドバーをアイコンだけにする',
			'settings.user.title' => 'ログインユーザー',
			'settings.user.note' => '画面に表示するユーザー名と役割です。保存はされず、起動のたびに標準の値へ戻ります。',
			'settings.user.name' => 'ユーザー名',
			'settings.user.role' => '役割・所属',
			'settings.user.apply' => '設定する',
			'settings.user.reset' => '標準に戻す',
			'settings.about.title' => 'バージョン情報',
			'settings.about.version' => 'アプリケーションのバージョン',
			_ => null,
		};
	}
}
