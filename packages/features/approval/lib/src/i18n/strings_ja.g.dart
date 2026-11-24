///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ApprovalStringsJa = ApprovalStrings; // ignore: unused_element
class ApprovalStrings with BaseTranslations<ApprovalLocale, ApprovalStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ApprovalLocale.build] is preferred.
	ApprovalStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ApprovalLocale, ApprovalStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ApprovalLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ApprovalLocale, ApprovalStrings> _meta;
	@override TranslationMetadata<ApprovalLocale, ApprovalStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ApprovalStrings _root = this; // ignore: unused_field

	ApprovalStrings $copyWith({TranslationMetadata<ApprovalLocale, ApprovalStrings>? meta}) => ApprovalStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '承認一覧'
	String get menuLabel => '承認一覧';

	/// ja: '承認一覧'
	String get title => '承認一覧';

	/// ja: '読み込み中…'
	String get loading => '読み込み中…';

	/// ja: '承認待ちを読み込めませんでした。'
	String get loadFailed => '承認待ちを読み込めませんでした。';

	/// ja: '承認待ちはありません。'
	String get empty => '承認待ちはありません。';

	late final ApprovalStrings$menus$ja menus = ApprovalStrings$menus$ja.internal(_root);
	late final ApprovalStrings$kinds$ja kinds = ApprovalStrings$kinds$ja.internal(_root);
	late final ApprovalStrings$list$ja list = ApprovalStrings$list$ja.internal(_root);
	late final ApprovalStrings$dialog$ja dialog = ApprovalStrings$dialog$ja.internal(_root);
	late final ApprovalStrings$alert$ja alert = ApprovalStrings$alert$ja.internal(_root);
}

// Path: menus
class ApprovalStrings$menus$ja {
	ApprovalStrings$menus$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '運用と改善'
	String get operations => '運用と改善';

	/// ja: '営業'
	String get sales => '営業';

	/// ja: '購買'
	String get purchasing => '購買';
}

// Path: kinds
class ApprovalStrings$kinds$ja {
	ApprovalStrings$kinds$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書'
	String get document => '文書';

	/// ja: '受注'
	String get order => '受注';

	/// ja: '出荷'
	String get shipping_order => '出荷';

	/// ja: '発注'
	String get purchase => '発注';

	/// ja: '非計上発注'
	String get unrecognized => '非計上発注';

	/// ja: '異常'
	String get complaint => '異常';

	/// ja: '異常の処置'
	String get disposal => '異常の処置';

	/// ja: '再発防止'
	String get recurrence_prevention => '再発防止';
}

// Path: list
class ApprovalStrings$list$ja {
	ApprovalStrings$list$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '件名・内容・申請者で検索'
	String get searchHint => '件名・内容・申請者で検索';

	/// ja: 'すべて選択'
	String get selectAll => 'すべて選択';

	/// ja: '選択を解除'
	String get clearSelection => '選択を解除';

	/// ja: '承認する'
	String get approve => '承認する';

	/// ja: '参照'
	String get refer => '参照';

	late final ApprovalStrings$list$cols$ja cols = ApprovalStrings$list$cols$ja.internal(_root);

	/// ja: '第${n}段階'
	String step({required Object n}) => '第${n}段階';

	/// ja: '${label}(${count})'
	String tabCount({required Object label, required Object count}) => '${label}(${count})';

	/// ja: '${n} 件を選択中'
	String selectedNote({required Object n}) => '${n} 件を選択中';
}

// Path: dialog
class ApprovalStrings$dialog$ja {
	ApprovalStrings$dialog$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認の確認'
	String get title => '承認の確認';

	/// ja: '次の内容を承認します。担当者のパスワードを入力してください。'
	String get note => '次の内容を承認します。担当者のパスワードを入力してください。';

	/// ja: 'パスワード'
	String get password => 'パスワード';

	/// ja: 'パスワードが違います。承認は登録されていません。'
	String get passwordWrong => 'パスワードが違います。承認は登録されていません。';

	/// ja: 'パスワードを確認できませんでした。しばらくしてからやり直してください。'
	String get passwordUnavailable => 'パスワードを確認できませんでした。しばらくしてからやり直してください。';

	/// ja: '承認する'
	String get confirm => '承認する';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '閉じる'
	String get close => '閉じる';

	/// ja: '登録しています…'
	String get busy => '登録しています…';

	/// ja: '承認の結果'
	String get resultTitle => '承認の結果';

	/// ja: '承認 ${n} 件を登録しました。'
	String resultOk({required Object n}) => '承認 ${n} 件を登録しました。';

	/// ja: '${n} 件は承認できませんでした。'
	String resultFailed({required Object n}) => '${n} 件は承認できませんでした。';

	/// ja: '承認者: ${name}'
	String by({required Object name}) => '承認者: ${name}';

	/// ja: '承認日時: ${at}'
	String at({required Object at}) => '承認日時: ${at}';

	late final ApprovalStrings$dialog$errors$ja errors = ApprovalStrings$dialog$errors$ja.internal(_root);
}

// Path: alert
class ApprovalStrings$alert$ja {
	ApprovalStrings$alert$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認待ちが ${n} 件あります'
	String summary({required Object n}) => '承認待ちが ${n} 件あります';

	/// ja: '${menu}の承認一覧(${detail})'
	String link({required Object menu, required Object detail}) => '${menu}の承認一覧(${detail})';
}

// Path: list.cols
class ApprovalStrings$list$cols$ja {
	ApprovalStrings$list$cols$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '件名'
	String get subject => '件名';

	/// ja: '内容'
	String get detail => '内容';

	/// ja: '申請者'
	String get applicant => '申請者';

	/// ja: '申請日'
	String get appliedAt => '申請日';

	/// ja: '承認の段階'
	String get step => '承認の段階';
}

// Path: dialog.errors
class ApprovalStrings$dialog$errors$ja {
	ApprovalStrings$dialog$errors$ja.internal(this._root);

	final ApprovalStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認できる担当者ではありません。'
	String get notApprover => '承認できる担当者ではありません。';

	/// ja: '前の段階が承認されていません。'
	String get notYet => '前の段階が承認されていません。';

	/// ja: 'すでに承認されています。'
	String get already => 'すでに承認されています。';

	/// ja: '承認前が見つかりません。'
	String get notFound => '承認前が見つかりません。';

	/// ja: '承認できませんでした。'
	String get other => '承認できませんでした。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ApprovalStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuLabel' => '承認一覧',
			'title' => '承認一覧',
			'loading' => '読み込み中…',
			'loadFailed' => '承認待ちを読み込めませんでした。',
			'empty' => '承認待ちはありません。',
			'menus.operations' => '運用と改善',
			'menus.sales' => '営業',
			'menus.purchasing' => '購買',
			'kinds.document' => '文書',
			'kinds.order' => '受注',
			'kinds.shipping_order' => '出荷',
			'kinds.purchase' => '発注',
			'kinds.unrecognized' => '非計上発注',
			'kinds.complaint' => '異常',
			'kinds.disposal' => '異常の処置',
			'kinds.recurrence_prevention' => '再発防止',
			'list.searchHint' => '件名・内容・申請者で検索',
			'list.selectAll' => 'すべて選択',
			'list.clearSelection' => '選択を解除',
			'list.approve' => '承認する',
			'list.refer' => '参照',
			'list.cols.subject' => '件名',
			'list.cols.detail' => '内容',
			'list.cols.applicant' => '申請者',
			'list.cols.appliedAt' => '申請日',
			'list.cols.step' => '承認の段階',
			'list.step' => ({required Object n}) => '第${n}段階',
			'list.tabCount' => ({required Object label, required Object count}) => '${label}(${count})',
			'list.selectedNote' => ({required Object n}) => '${n} 件を選択中',
			'dialog.title' => '承認の確認',
			'dialog.note' => '次の内容を承認します。担当者のパスワードを入力してください。',
			'dialog.password' => 'パスワード',
			'dialog.passwordWrong' => 'パスワードが違います。承認は登録されていません。',
			'dialog.passwordUnavailable' => 'パスワードを確認できませんでした。しばらくしてからやり直してください。',
			'dialog.confirm' => '承認する',
			'dialog.cancel' => 'キャンセル',
			'dialog.close' => '閉じる',
			'dialog.busy' => '登録しています…',
			'dialog.resultTitle' => '承認の結果',
			'dialog.resultOk' => ({required Object n}) => '承認 ${n} 件を登録しました。',
			'dialog.resultFailed' => ({required Object n}) => '${n} 件は承認できませんでした。',
			'dialog.by' => ({required Object name}) => '承認者: ${name}',
			'dialog.at' => ({required Object at}) => '承認日時: ${at}',
			'dialog.errors.notApprover' => '承認できる担当者ではありません。',
			'dialog.errors.notYet' => '前の段階が承認されていません。',
			'dialog.errors.already' => 'すでに承認されています。',
			'dialog.errors.notFound' => '承認前が見つかりません。',
			'dialog.errors.other' => '承認できませんでした。',
			'alert.summary' => ({required Object n}) => '承認待ちが ${n} 件あります',
			'alert.link' => ({required Object menu, required Object detail}) => '${menu}の承認一覧(${detail})',
			_ => null,
		};
	}
}
