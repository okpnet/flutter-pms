///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef BackstageStringsJa = BackstageStrings; // ignore: unused_element
class BackstageStrings with BaseTranslations<BackstageLocale, BackstageStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [BackstageLocale.build] is preferred.
	BackstageStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<BackstageLocale, BackstageStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: BackstageLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<BackstageLocale, BackstageStrings> _meta;
	@override TranslationMetadata<BackstageLocale, BackstageStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final BackstageStrings _root = this; // ignore: unused_field

	BackstageStrings $copyWith({TranslationMetadata<BackstageLocale, BackstageStrings>? meta}) => BackstageStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '裏設定'
	String get title => '裏設定';

	/// ja: 'システム制作者だけが変更できる、アプリケーションの設定です。接続先とログのレベルは、アプリを再起動すると反映されます。'
	String get intro => 'システム制作者だけが変更できる、アプリケーションの設定です。接続先とログのレベルは、アプリを再起動すると反映されます。';

	late final BackstageStrings$fields$ja fields = BackstageStrings$fields$ja.internal(_root);
	late final BackstageStrings$choice$ja choice = BackstageStrings$choice$ja.internal(_root);
	late final BackstageStrings$source$ja source = BackstageStrings$source$ja.internal(_root);
	late final BackstageStrings$hint$ja hint = BackstageStrings$hint$ja.internal(_root);
	late final BackstageStrings$buttons$ja buttons = BackstageStrings$buttons$ja.internal(_root);
	late final BackstageStrings$notice$ja notice = BackstageStrings$notice$ja.internal(_root);
	late final BackstageStrings$issue$ja issue = BackstageStrings$issue$ja.internal(_root);
}

// Path: fields
class BackstageStrings$fields$ja {
	BackstageStrings$fields$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ユーザーが自分の画像を変更できる'
	String get isChangeUserImage => 'ユーザーが自分の画像を変更できる';

	/// ja: '接続先(GraphQL)'
	String get graphqlUrl => '接続先(GraphQL)';

	/// ja: '接続先(PocketBase)'
	String get pocketbaseUrl => '接続先(PocketBase)';

	/// ja: 'メンテナンスの確認先'
	String get maintenanceUrl => 'メンテナンスの確認先';

	/// ja: 'ログのレベル'
	String get logLevel => 'ログのレベル';

	/// ja: 'サイドバーをアイコンだけにする(既定)'
	String get sidebarIconOnly => 'サイドバーをアイコンだけにする(既定)';
}

// Path: choice
class BackstageStrings$choice$ja {
	BackstageStrings$choice$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: '既定に従う'
	String get followDefault => '既定に従う';

	/// ja: 'はい'
	String get yes => 'はい';

	/// ja: 'いいえ'
	String get no => 'いいえ';
}

// Path: source
class BackstageStrings$source$ja {
	BackstageStrings$source$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: '起動時の指定(変更できません)'
	String get launch => '起動時の指定(変更できません)';

	/// ja: '裏設定'
	String get stored => '裏設定';

	/// ja: '既定値'
	String get asset => '既定値';

	/// ja: '未指定'
	String get none => '未指定';
}

// Path: hint
class BackstageStrings$hint$ja {
	BackstageStrings$hint$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'https のURL(ローカルのネットワークだけ http)。空にすると既定に従います。'
	String get url => 'https のURL(ローカルのネットワークだけ http)。空にすると既定に従います。';
}

// Path: buttons
class BackstageStrings$buttons$ja {
	BackstageStrings$buttons$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保存'
	String get save => '保存';

	/// ja: '保存した値を消す'
	String get reset => '保存した値を消す';

	/// ja: '終了'
	String get exit => '終了';
}

// Path: notice
class BackstageStrings$notice$ja {
	BackstageStrings$notice$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保存しました。接続先とログのレベルは、再起動すると反映されます。'
	String get saved => '保存しました。接続先とログのレベルは、再起動すると反映されます。';

	/// ja: '保存した値を消しました。'
	String get reset => '保存した値を消しました。';

	/// ja: '保存できませんでした。保管庫を使えない可能性があります。'
	String get storeFailed => '保存できませんでした。保管庫を使えない可能性があります。';
}

// Path: issue
class BackstageStrings$issue$ja {
	BackstageStrings$issue$ja.internal(this._root);

	final BackstageStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'URLの形式が正しくありません。'
	String get urlInvalid => 'URLの形式が正しくありません。';

	/// ja: 'https のURLにしてください(http はローカルのネットワークだけ)。'
	String get urlNotHttps => 'https のURLにしてください(http はローカルのネットワークだけ)。';

	/// ja: '知らないログのレベルです。'
	String get logLevelUnknown => '知らないログのレベルです。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on BackstageStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => '裏設定',
			'intro' => 'システム制作者だけが変更できる、アプリケーションの設定です。接続先とログのレベルは、アプリを再起動すると反映されます。',
			'fields.isChangeUserImage' => 'ユーザーが自分の画像を変更できる',
			'fields.graphqlUrl' => '接続先(GraphQL)',
			'fields.pocketbaseUrl' => '接続先(PocketBase)',
			'fields.maintenanceUrl' => 'メンテナンスの確認先',
			'fields.logLevel' => 'ログのレベル',
			'fields.sidebarIconOnly' => 'サイドバーをアイコンだけにする(既定)',
			'choice.followDefault' => '既定に従う',
			'choice.yes' => 'はい',
			'choice.no' => 'いいえ',
			'source.launch' => '起動時の指定(変更できません)',
			'source.stored' => '裏設定',
			'source.asset' => '既定値',
			'source.none' => '未指定',
			'hint.url' => 'https のURL(ローカルのネットワークだけ http)。空にすると既定に従います。',
			'buttons.save' => '保存',
			'buttons.reset' => '保存した値を消す',
			'buttons.exit' => '終了',
			'notice.saved' => '保存しました。接続先とログのレベルは、再起動すると反映されます。',
			'notice.reset' => '保存した値を消しました。',
			'notice.storeFailed' => '保存できませんでした。保管庫を使えない可能性があります。',
			'issue.urlInvalid' => 'URLの形式が正しくありません。',
			'issue.urlNotHttps' => 'https のURLにしてください(http はローカルのネットワークだけ)。',
			'issue.logLevelUnknown' => '知らないログのレベルです。',
			_ => null,
		};
	}
}
