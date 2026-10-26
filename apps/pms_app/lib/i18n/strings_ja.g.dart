///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef AppStringsJa = AppStrings; // ignore: unused_element
class AppStrings with BaseTranslations<AppLocale, AppStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	AppStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, AppStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<AppLocale, AppStrings> _meta;
	@override TranslationMetadata<AppLocale, AppStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final AppStrings _root = this; // ignore: unused_field

	AppStrings $copyWith({TranslationMetadata<AppLocale, AppStrings>? meta}) => AppStrings(meta: meta ?? this.$meta);

	// Translations
	late final AppStrings$splash$ja splash = AppStrings$splash$ja.internal(_root);
	late final AppStrings$common$ja common = AppStrings$common$ja.internal(_root);
	late final AppStrings$login$ja login = AppStrings$login$ja.internal(_root);
	late final AppStrings$grid$ja grid = AppStrings$grid$ja.internal(_root);
	late final AppStrings$company$ja company = AppStrings$company$ja.internal(_root);
}

// Path: splash
class AppStrings$splash$ja {
	AppStrings$splash$ja.internal(this._root);

	final AppStrings _root; // ignore: unused_field

	// Translations

	/// ja: '初期化中'
	String get initializing => '初期化中';
}

// Path: common
class AppStrings$common$ja {
	AppStrings$common$ja.internal(this._root);

	final AppStrings _root; // ignore: unused_field

	// Translations

	/// ja: '未実装'
	String get notImplemented => '未実装';
}

// Path: login
class AppStrings$login$ja {
	AppStrings$login$ja.internal(this._root);

	final AppStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ログイン'
	String get title => 'ログイン';

	/// ja: 'IDまたはパスワードが違います'
	String get invalidCredential => 'IDまたはパスワードが違います';

	/// ja: 'ユーザーID'
	String get userId => 'ユーザーID';

	/// ja: 'ユーザーIDは必須です'
	String get userIdRequired => 'ユーザーIDは必須です';

	/// ja: 'パスワード'
	String get password => 'パスワード';

	/// ja: 'パスワードは必須です'
	String get passwordRequired => 'パスワードは必須です';

	/// ja: 'ログイン'
	String get submit => 'ログイン';
}

// Path: grid
class AppStrings$grid$ja {
	AppStrings$grid$ja.internal(this._root);

	final AppStrings _root; // ignore: unused_field

	// Translations

	/// ja: '条件適用 $count 件'
	String filtered({required Object count}) => '条件適用 ${count} 件';

	/// ja: 'お待ちください'
	String get wait => 'お待ちください';

	/// ja: '全 $count 件'
	String total({required Object count}) => '全 ${count} 件';
}

// Path: company
class AppStrings$company$ja {
	AppStrings$company$ja.internal(this._root);

	final AppStrings _root; // ignore: unused_field

	// Translations

	/// ja: '会社情報'
	String get title => '会社情報';

	/// ja: '会社名'
	String get name => '会社名';

	/// ja: '事業内容'
	String get business => '事業内容';

	/// ja: '住所'
	String get address => '住所';

	/// ja: '電話'
	String get tel => '電話';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AppStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'splash.initializing' => '初期化中',
			'common.notImplemented' => '未実装',
			'login.title' => 'ログイン',
			'login.invalidCredential' => 'IDまたはパスワードが違います',
			'login.userId' => 'ユーザーID',
			'login.userIdRequired' => 'ユーザーIDは必須です',
			'login.password' => 'パスワード',
			'login.passwordRequired' => 'パスワードは必須です',
			'login.submit' => 'ログイン',
			'grid.filtered' => ({required Object count}) => '条件適用 ${count} 件',
			'grid.wait' => 'お待ちください',
			'grid.total' => ({required Object count}) => '全 ${count} 件',
			'company.title' => '会社情報',
			'company.name' => '会社名',
			'company.business' => '事業内容',
			'company.address' => '住所',
			'company.tel' => '電話',
			_ => null,
		};
	}
}
