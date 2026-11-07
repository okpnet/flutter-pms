///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef AuthFilesStringsJa = AuthFilesStrings; // ignore: unused_element
class AuthFilesStrings with BaseTranslations<AuthFilesLocale, AuthFilesStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AuthFilesLocale.build] is preferred.
	AuthFilesStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AuthFilesLocale, AuthFilesStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AuthFilesLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<AuthFilesLocale, AuthFilesStrings> _meta;
	@override TranslationMetadata<AuthFilesLocale, AuthFilesStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final AuthFilesStrings _root = this; // ignore: unused_field

	AuthFilesStrings $copyWith({TranslationMetadata<AuthFilesLocale, AuthFilesStrings>? meta}) => AuthFilesStrings(meta: meta ?? this.$meta);

	// Translations
	late final AuthFilesStrings$common$ja common = AuthFilesStrings$common$ja.internal(_root);
	late final AuthFilesStrings$errors$ja errors = AuthFilesStrings$errors$ja.internal(_root);
	late final AuthFilesStrings$rules$ja rules = AuthFilesStrings$rules$ja.internal(_root);
	late final AuthFilesStrings$login$ja login = AuthFilesStrings$login$ja.internal(_root);
	late final AuthFilesStrings$logout$ja logout = AuthFilesStrings$logout$ja.internal(_root);
	late final AuthFilesStrings$register$ja register = AuthFilesStrings$register$ja.internal(_root);
	late final AuthFilesStrings$forgot$ja forgot = AuthFilesStrings$forgot$ja.internal(_root);
	late final AuthFilesStrings$code$ja code = AuthFilesStrings$code$ja.internal(_root);
	late final AuthFilesStrings$newPassword$ja newPassword = AuthFilesStrings$newPassword$ja.internal(_root);
	late final AuthFilesStrings$files$ja files = AuthFilesStrings$files$ja.internal(_root);
	late final AuthFilesStrings$admin$ja admin = AuthFilesStrings$admin$ja.internal(_root);
}

// Path: common
class AuthFilesStrings$common$ja {
	AuthFilesStrings$common$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '処理中...'
	String get loading => '処理中...';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '必須'
	String get required => '必須';

	/// ja: 'ログインに戻る'
	String get backToLogin => 'ログインに戻る';
}

// Path: errors
class AuthFilesStrings$errors$ja {
	AuthFilesStrings$errors$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '入力内容を確認してください。'
	String get validation => '入力内容を確認してください。';

	/// ja: 'ユーザーIDまたはパスワードが正しくありません。'
	String get invalidCredentials => 'ユーザーIDまたはパスワードが正しくありません。';

	/// ja: 'ユーザーIDまたはコードが正しくないか、有効期限が切れています。'
	String get codeInvalid => 'ユーザーIDまたはコードが正しくないか、有効期限が切れています。';

	/// ja: 'ログインが必要です。もう一度ログインしてください。'
	String get unauthorized => 'ログインが必要です。もう一度ログインしてください。';

	/// ja: 'この操作を行う権限がありません。'
	String get forbidden => 'この操作を行う権限がありません。';

	/// ja: '対象が見つかりません。'
	String get notFound => '対象が見つかりません。';

	/// ja: '試行が多すぎます。しばらくしてからもう一度お試しください。'
	String get rateLimited => '試行が多すぎます。しばらくしてからもう一度お試しください。';

	/// ja: '現在受け付けていません。しばらくしてからもう一度お試しください。'
	String get unavailable => '現在受け付けていません。しばらくしてからもう一度お試しください。';

	/// ja: 'サーバーに接続できませんでした。'
	String get connection => 'サーバーに接続できませんでした。';

	/// ja: '予期しないエラーが発生しました。'
	String get unknown => '予期しないエラーが発生しました。';

	/// ja: 'この環境ではファイルを選択・保存できません。'
	String get fileUnsupported => 'この環境ではファイルを選択・保存できません。';

	/// ja: 'ファイルが大きすぎます。100MB以下のファイルを選んでください。'
	String get fileTooLarge => 'ファイルが大きすぎます。100MB以下のファイルを選んでください。';
}

// Path: rules
class AuthFilesStrings$rules$ja {
	AuthFilesStrings$rules$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '入力してください。'
	String get required => '入力してください。';

	/// ja: 'ユーザーIDは、半角の英数字と . _ - で、4〜32文字にしてください。'
	String get userId => 'ユーザーIDは、半角の英数字と . _ - で、4〜32文字にしてください。';

	/// ja: 'メールアドレスの形式が正しくありません。(例:name@example.com)'
	String get email => 'メールアドレスの形式が正しくありません。(例:name@example.com)';

	/// ja: 'ふりがなは、ひらがな・カタカナで入力してください。英語の名前は、読みを入力します。'
	String get kana => 'ふりがなは、ひらがな・カタカナで入力してください。英語の名前は、読みを入力します。';

	/// ja: 'コードは12文字の英数字で入力してください。(ハイフン・空白は不要です)'
	String get code => 'コードは12文字の英数字で入力してください。(ハイフン・空白は不要です)';

	/// ja: 'パスワードは{n}文字以上にしてください。'
	String password({required Object n}) => 'パスワードは${n}文字以上にしてください。';

	/// ja: '新しいパスワードと同じ値を入力してください。'
	String get passwordConfirm => '新しいパスワードと同じ値を入力してください。';
}

// Path: login
class AuthFilesStrings$login$ja {
	AuthFilesStrings$login$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '{app}にサインイン'
	String heading({required Object app}) => '${app}にサインイン';

	/// ja: 'ユーザーIDまたはEメール'
	String get identity => 'ユーザーIDまたはEメール';

	/// ja: 'パスワード'
	String get password => 'パスワード';

	/// ja: 'ログイン'
	String get submit => 'ログイン';

	/// ja: 'パスワードを忘れた'
	String get forgot => 'パスワードを忘れた';

	/// ja: '新規登録'
	String get register => '新規登録';

	/// ja: '認証コードをお持ちの方'
	String get haveCode => '認証コードをお持ちの方';

	/// ja: 'ログインしています...'
	String get sending => 'ログインしています...';
}

// Path: logout
class AuthFilesStrings$logout$ja {
	AuthFilesStrings$logout$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ログアウトしますか?'
	String get confirmHeading => 'ログアウトしますか?';

	/// ja: '{name} さんとしてサインインしています。未保存の入力は失われます。'
	String confirmMessage({required Object name}) => '${name} さんとしてサインインしています。未保存の入力は失われます。';

	/// ja: 'キャンセル'
	String get confirmCancel => 'キャンセル';

	/// ja: 'ログアウト'
	String get confirmSubmit => 'ログアウト';

	/// ja: 'ログアウトしています…'
	String get workingHeading => 'ログアウトしています…';

	/// ja: 'セッションを終了しています。しばらくお待ちください。'
	String get workingMessage => 'セッションを終了しています。しばらくお待ちください。';

	/// ja: 'ログアウトしました'
	String get doneHeading => 'ログアウトしました';

	/// ja: '再度ご利用の際は、ログインしてください。'
	String get doneMessage => '再度ご利用の際は、ログインしてください。';

	/// ja: 'セッションが切れました'
	String get expiredHeading => 'セッションが切れました';

	/// ja: 'ログインの有効期限が切れたため、ログアウトしました。再度ログインしてください。'
	String get expiredMessage => 'ログインの有効期限が切れたため、ログアウトしました。再度ログインしてください。';

	/// ja: '{n}秒後にログイン画面へ移動します。'
	String countdown({required Object n}) => '${n}秒後にログイン画面へ移動します。';

	/// ja: '今すぐログイン画面へ'
	String get toLogin => '今すぐログイン画面へ';

	/// ja: 'セッションが切れたときも、この画面を表示します。'
	String get note => 'セッションが切れたときも、この画面を表示します。';
}

// Path: register
class AuthFilesStrings$register$ja {
	AuthFilesStrings$register$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '新規登録'
	String get heading => '新規登録';

	/// ja: 'ユーザーID'
	String get userId => 'ユーザーID';

	/// ja: 'メールアドレス'
	String get email => 'メールアドレス';

	/// ja: '名前'
	String get name => '名前';

	/// ja: 'ふりがな(英語の名前は読み)'
	String get ruby => 'ふりがな(英語の名前は読み)';

	/// ja: '送信'
	String get submit => '送信';

	/// ja: '送信すると管理者に申請されます。承認されると、認証コードが渡されます。'
	String get note => '送信すると管理者に申請されます。承認されると、認証コードが渡されます。';

	/// ja: '申請を受け付けました'
	String get acceptedHeading => '申請を受け付けました';

	/// ja: '管理者の承認をお待ちください。承認されると、メールまたは管理者から認証コードが渡されます。'
	String get accepted => '管理者の承認をお待ちください。承認されると、メールまたは管理者から認証コードが渡されます。';

	/// ja: '認証コードを入力する'
	String get toCode => '認証コードを入力する';
}

// Path: forgot
class AuthFilesStrings$forgot$ja {
	AuthFilesStrings$forgot$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'パスワードを忘れた'
	String get heading => 'パスワードを忘れた';

	/// ja: 'ユーザーIDまたはメールアドレスを入力してください。メールが登録されている場合は、認証コードをメールでお送りします。メールが無い場合は、管理者に確認して認証コードを受け取ってください。'
	String get description => 'ユーザーIDまたはメールアドレスを入力してください。メールが登録されている場合は、認証コードをメールでお送りします。メールが無い場合は、管理者に確認して認証コードを受け取ってください。';

	/// ja: 'ユーザーIDまたはメールアドレス'
	String get who => 'ユーザーIDまたはメールアドレス';

	/// ja: '送信'
	String get submit => '送信';
}

// Path: code
class AuthFilesStrings$code$ja {
	AuthFilesStrings$code$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '認証コードの入力'
	String get heading => '認証コードの入力';

	/// ja: '認証コードを入力してください。認証コードはメールまたは管理者から受け取ります。'
	String get description => '認証コードを入力してください。認証コードはメールまたは管理者から受け取ります。';

	/// ja: '受け付けました。メールまたは管理者から認証コードを受け取ってください。'
	String get accepted => '受け付けました。メールまたは管理者から認証コードを受け取ってください。';

	/// ja: 'ユーザーID'
	String get username => 'ユーザーID';

	/// ja: '認証コード(12文字)'
	String get code => '認証コード(12文字)';

	/// ja: '確認'
	String get submit => '確認';

	/// ja: '前の画面に戻る'
	String get back => '前の画面に戻る';
}

// Path: newPassword
class AuthFilesStrings$newPassword$ja {
	AuthFilesStrings$newPassword$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '新しいパスワード'
	String get heading => '新しいパスワード';

	/// ja: '新しいパスワード'
	String get password => '新しいパスワード';

	/// ja: '新しいパスワード(確認)'
	String get passwordConfirm => '新しいパスワード(確認)';

	/// ja: '8文字以上で入力してください。2つの入力が同じでないと、再設定できません。'
	String get note => '8文字以上で入力してください。2つの入力が同じでないと、再設定できません。';

	/// ja: 'パスワードを再設定'
	String get submit => 'パスワードを再設定';

	/// ja: 'パスワードを再設定しました。新しいパスワードでログインしてください。'
	String get done => 'パスワードを再設定しました。新しいパスワードでログインしてください。';
}

// Path: files
class AuthFilesStrings$files$ja {
	AuthFilesStrings$files$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '共有ファイル'
	String get title => '共有ファイル';

	/// ja: '同じIDで再アップロードすると新しい版になり、古い版も残ります。'
	String get description => '同じIDで再アップロードすると新しい版になり、古い版も残ります。';

	/// ja: 'ファイルID'
	String get fileId => 'ファイルID';

	/// ja: '英数字と _ - 、64文字まで'
	String get fileIdHint => '英数字と _ - 、64文字まで';

	/// ja: 'コメント(任意)'
	String get comment => 'コメント(任意)';

	/// ja: '履歴を表示'
	String get search => '履歴を表示';

	/// ja: 'アップロード'
	String get upload => 'アップロード';

	/// ja: 'アップロードしました(版 {revision})。'
	String uploaded({required Object revision}) => 'アップロードしました(版 ${revision})。';

	/// ja: 'ダウンロード'
	String get download => 'ダウンロード';

	/// ja: '保存しました。'
	String get downloaded => '保存しました。';

	/// ja: 'このIDのファイルはありません。'
	String get empty => 'このIDのファイルはありません。';

	/// ja: '版'
	String get revision => '版';

	/// ja: 'ファイル名'
	String get name => 'ファイル名';

	/// ja: 'サイズ'
	String get size => 'サイズ';

	/// ja: 'ファイルIDは英数字と _ - の64文字までです。'
	String get invalidId => 'ファイルIDは英数字と _ - の64文字までです。';
}

// Path: admin
class AuthFilesStrings$admin$ja {
	AuthFilesStrings$admin$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations
	late final AuthFilesStrings$admin$signups$ja signups = AuthFilesStrings$admin$signups$ja.internal(_root);
	late final AuthFilesStrings$admin$resets$ja resets = AuthFilesStrings$admin$resets$ja.internal(_root);
	late final AuthFilesStrings$admin$issuedCode$ja issuedCode = AuthFilesStrings$admin$issuedCode$ja.internal(_root);
}

// Path: admin.signups
class AuthFilesStrings$admin$signups$ja {
	AuthFilesStrings$admin$signups$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '登録申請'
	String get title => '登録申請';

	/// ja: '未処理の申請はありません。'
	String get empty => '未処理の申請はありません。';

	/// ja: '希望ID'
	String get userId => '希望ID';

	/// ja: 'Eメール'
	String get email => 'Eメール';

	/// ja: '申請日時'
	String get created => '申請日時';

	/// ja: '承認'
	String get approve => '承認';

	/// ja: '却下'
	String get reject => '却下';

	/// ja: '担当者のID(App DBで登録済みのもの)'
	String get appUserId => '担当者のID(App DBで登録済みのもの)';

	/// ja: '承認しました。コードを本人へ渡してください。'
	String get approved => '承認しました。コードを本人へ渡してください。';

	/// ja: '却下しました。'
	String get rejected => '却下しました。';

	/// ja: 'この申請を却下しますか?'
	String get confirmReject => 'この申請を却下しますか?';
}

// Path: admin.resets
class AuthFilesStrings$admin$resets$ja {
	AuthFilesStrings$admin$resets$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '再設定の依頼'
	String get title => '再設定の依頼';

	/// ja: '未処理の依頼はありません。'
	String get empty => '未処理の依頼はありません。';

	/// ja: 'コードを発行'
	String get issue => 'コードを発行';

	/// ja: 'コードを発行しました。本人確認のうえ、手渡してください。'
	String get issued => 'コードを発行しました。本人確認のうえ、手渡してください。';

	/// ja: '依頼日時'
	String get created => '依頼日時';
}

// Path: admin.issuedCode
class AuthFilesStrings$admin$issuedCode$ja {
	AuthFilesStrings$admin$issuedCode$ja.internal(this._root);

	final AuthFilesStrings _root; // ignore: unused_field

	// Translations

	/// ja: '発行したコード'
	String get title => '発行したコード';

	/// ja: 'コード'
	String get code => 'コード';

	/// ja: '有効期限'
	String get expires => '有効期限';

	/// ja: 'メールで送信済み'
	String get mailed => 'メールで送信済み';

	/// ja: '本人へ手渡ししてください。閉じると再表示できません。'
	String get handOver => '本人へ手渡ししてください。閉じると再表示できません。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AuthFilesStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.back' => '戻る',
			'common.loading' => '処理中...',
			'common.cancel' => 'キャンセル',
			'common.required' => '必須',
			'common.backToLogin' => 'ログインに戻る',
			'errors.validation' => '入力内容を確認してください。',
			'errors.invalidCredentials' => 'ユーザーIDまたはパスワードが正しくありません。',
			'errors.codeInvalid' => 'ユーザーIDまたはコードが正しくないか、有効期限が切れています。',
			'errors.unauthorized' => 'ログインが必要です。もう一度ログインしてください。',
			'errors.forbidden' => 'この操作を行う権限がありません。',
			'errors.notFound' => '対象が見つかりません。',
			'errors.rateLimited' => '試行が多すぎます。しばらくしてからもう一度お試しください。',
			'errors.unavailable' => '現在受け付けていません。しばらくしてからもう一度お試しください。',
			'errors.connection' => 'サーバーに接続できませんでした。',
			'errors.unknown' => '予期しないエラーが発生しました。',
			'errors.fileUnsupported' => 'この環境ではファイルを選択・保存できません。',
			'errors.fileTooLarge' => 'ファイルが大きすぎます。100MB以下のファイルを選んでください。',
			'rules.required' => '入力してください。',
			'rules.userId' => 'ユーザーIDは、半角の英数字と . _ - で、4〜32文字にしてください。',
			'rules.email' => 'メールアドレスの形式が正しくありません。(例:name@example.com)',
			'rules.kana' => 'ふりがなは、ひらがな・カタカナで入力してください。英語の名前は、読みを入力します。',
			'rules.code' => 'コードは12文字の英数字で入力してください。(ハイフン・空白は不要です)',
			'rules.password' => ({required Object n}) => 'パスワードは${n}文字以上にしてください。',
			'rules.passwordConfirm' => '新しいパスワードと同じ値を入力してください。',
			'login.heading' => ({required Object app}) => '${app}にサインイン',
			'login.identity' => 'ユーザーIDまたはEメール',
			'login.password' => 'パスワード',
			'login.submit' => 'ログイン',
			'login.forgot' => 'パスワードを忘れた',
			'login.register' => '新規登録',
			'login.haveCode' => '認証コードをお持ちの方',
			'login.sending' => 'ログインしています...',
			'logout.confirmHeading' => 'ログアウトしますか?',
			'logout.confirmMessage' => ({required Object name}) => '${name} さんとしてサインインしています。未保存の入力は失われます。',
			'logout.confirmCancel' => 'キャンセル',
			'logout.confirmSubmit' => 'ログアウト',
			'logout.workingHeading' => 'ログアウトしています…',
			'logout.workingMessage' => 'セッションを終了しています。しばらくお待ちください。',
			'logout.doneHeading' => 'ログアウトしました',
			'logout.doneMessage' => '再度ご利用の際は、ログインしてください。',
			'logout.expiredHeading' => 'セッションが切れました',
			'logout.expiredMessage' => 'ログインの有効期限が切れたため、ログアウトしました。再度ログインしてください。',
			'logout.countdown' => ({required Object n}) => '${n}秒後にログイン画面へ移動します。',
			'logout.toLogin' => '今すぐログイン画面へ',
			'logout.note' => 'セッションが切れたときも、この画面を表示します。',
			'register.heading' => '新規登録',
			'register.userId' => 'ユーザーID',
			'register.email' => 'メールアドレス',
			'register.name' => '名前',
			'register.ruby' => 'ふりがな(英語の名前は読み)',
			'register.submit' => '送信',
			'register.note' => '送信すると管理者に申請されます。承認されると、認証コードが渡されます。',
			'register.acceptedHeading' => '申請を受け付けました',
			'register.accepted' => '管理者の承認をお待ちください。承認されると、メールまたは管理者から認証コードが渡されます。',
			'register.toCode' => '認証コードを入力する',
			'forgot.heading' => 'パスワードを忘れた',
			'forgot.description' => 'ユーザーIDまたはメールアドレスを入力してください。メールが登録されている場合は、認証コードをメールでお送りします。メールが無い場合は、管理者に確認して認証コードを受け取ってください。',
			'forgot.who' => 'ユーザーIDまたはメールアドレス',
			'forgot.submit' => '送信',
			'code.heading' => '認証コードの入力',
			'code.description' => '認証コードを入力してください。認証コードはメールまたは管理者から受け取ります。',
			'code.accepted' => '受け付けました。メールまたは管理者から認証コードを受け取ってください。',
			'code.username' => 'ユーザーID',
			'code.code' => '認証コード(12文字)',
			'code.submit' => '確認',
			'code.back' => '前の画面に戻る',
			'newPassword.heading' => '新しいパスワード',
			'newPassword.password' => '新しいパスワード',
			'newPassword.passwordConfirm' => '新しいパスワード(確認)',
			'newPassword.note' => '8文字以上で入力してください。2つの入力が同じでないと、再設定できません。',
			'newPassword.submit' => 'パスワードを再設定',
			'newPassword.done' => 'パスワードを再設定しました。新しいパスワードでログインしてください。',
			'files.title' => '共有ファイル',
			'files.description' => '同じIDで再アップロードすると新しい版になり、古い版も残ります。',
			'files.fileId' => 'ファイルID',
			'files.fileIdHint' => '英数字と _ - 、64文字まで',
			'files.comment' => 'コメント(任意)',
			'files.search' => '履歴を表示',
			'files.upload' => 'アップロード',
			'files.uploaded' => ({required Object revision}) => 'アップロードしました(版 ${revision})。',
			'files.download' => 'ダウンロード',
			'files.downloaded' => '保存しました。',
			'files.empty' => 'このIDのファイルはありません。',
			'files.revision' => '版',
			'files.name' => 'ファイル名',
			'files.size' => 'サイズ',
			'files.invalidId' => 'ファイルIDは英数字と _ - の64文字までです。',
			'admin.signups.title' => '登録申請',
			'admin.signups.empty' => '未処理の申請はありません。',
			'admin.signups.userId' => '希望ID',
			'admin.signups.email' => 'Eメール',
			'admin.signups.created' => '申請日時',
			'admin.signups.approve' => '承認',
			'admin.signups.reject' => '却下',
			'admin.signups.appUserId' => '担当者のID(App DBで登録済みのもの)',
			'admin.signups.approved' => '承認しました。コードを本人へ渡してください。',
			'admin.signups.rejected' => '却下しました。',
			'admin.signups.confirmReject' => 'この申請を却下しますか?',
			'admin.resets.title' => '再設定の依頼',
			'admin.resets.empty' => '未処理の依頼はありません。',
			'admin.resets.issue' => 'コードを発行',
			'admin.resets.issued' => 'コードを発行しました。本人確認のうえ、手渡してください。',
			'admin.resets.created' => '依頼日時',
			'admin.issuedCode.title' => '発行したコード',
			'admin.issuedCode.code' => 'コード',
			'admin.issuedCode.expires' => '有効期限',
			'admin.issuedCode.mailed' => 'メールで送信済み',
			'admin.issuedCode.handOver' => '本人へ手渡ししてください。閉じると再表示できません。',
			_ => null,
		};
	}
}
