///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef ManualStringsJa = ManualStrings; // ignore: unused_element
class ManualStrings with BaseTranslations<ManualLocale, ManualStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ManualLocale.build] is preferred.
	ManualStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ManualLocale, ManualStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ManualLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<ManualLocale, ManualStrings> _meta;
	@override TranslationMetadata<ManualLocale, ManualStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final ManualStrings _root = this; // ignore: unused_field

	ManualStrings $copyWith({TranslationMetadata<ManualLocale, ManualStrings>? meta}) => ManualStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '品質管理文書'
	String get menuGroup => '品質管理文書';

	/// ja: 'マニュアル'
	String get menuManual => 'マニュアル';

	/// ja: 'マニュアル'
	String get title => 'マニュアル';

	/// ja: '読み込み中…'
	String get loading => '読み込み中…';

	/// ja: 'ページがありません。'
	String get empty => 'ページがありません。';

	late final ManualStrings$view$ja view = ManualStrings$view$ja.internal(_root);
	late final ManualStrings$create$ja create = ManualStrings$create$ja.internal(_root);
	late final ManualStrings$edit$ja edit = ManualStrings$edit$ja.internal(_root);
	late final ManualStrings$linkDialog$ja linkDialog = ManualStrings$linkDialog$ja.internal(_root);
	late final ManualStrings$history$ja history = ManualStrings$history$ja.internal(_root);
	late final ManualStrings$export$ja export = ManualStrings$export$ja.internal(_root);
	late final ManualStrings$pdf$ja pdf = ManualStrings$pdf$ja.internal(_root);
	late final ManualStrings$approval$ja approval = ManualStrings$approval$ja.internal(_root);
	late final ManualStrings$errors$ja errors = ManualStrings$errors$ja.internal(_root);
	late final ManualStrings$ledger$ja ledger = ManualStrings$ledger$ja.internal(_root);
}

// Path: view
class ManualStrings$view$ja {
	ManualStrings$view$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '閲覧のみ'
	String get readOnly => '閲覧のみ';

	/// ja: '目次'
	String get tocTitle => '目次';

	/// ja: '目次・検索'
	String get tocFold => '目次・検索';

	/// ja: 'ページ名・本文を検索'
	String get searchHint => 'ページ名・本文を検索';

	/// ja: '見つかりません。'
	String get searchNone => '見つかりません。';

	/// ja: '編集'
	String get edit => '編集';

	/// ja: '子ページを追加'
	String get addChild => '子ページを追加';

	/// ja: 'ルートを追加'
	String get addRoot => 'ルートを追加';

	/// ja: '履歴'
	String get history => '履歴';

	/// ja: 'Markdown'
	String get markdown => 'Markdown';

	/// ja: 'PDF'
	String get pdf => 'PDF';

	/// ja: 'マニュアル'
	String get breadcrumbHome => 'マニュアル';

	/// ja: 'このページの目次'
	String get pageToc => 'このページの目次';

	/// ja: 'このページの下'
	String get children => 'このページの下';

	/// ja: 'このページへのリンク'
	String get backlinks => 'このページへのリンク';

	/// ja: 'まだ本文がありません。'
	String get noBody => 'まだ本文がありません。';

	/// ja: '更新者 ${by} · 更新 ${at} · 改訂 ${rev}'
	String meta({required Object by, required Object at, required Object rev}) => '更新者 ${by} · 更新 ${at} · 改訂 ${rev}';

	/// ja: 'ページ「${title}」はまだありません。'
	String missingLink({required Object title}) => 'ページ「${title}」はまだありません。';

	/// ja: '「${title}」はまだありません。押して作成します。'
	String missingLinkAdmin({required Object title}) => '「${title}」はまだありません。押して作成します。';

	/// ja: 'ルート'
	String get rootBadge => 'ルート';

	/// ja: '左の目次からページを選んでください。'
	String get selectPage => '左の目次からページを選んでください。';
}

// Path: create
class ManualStrings$create$ja {
	ManualStrings$create$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '子ページを追加'
	String get titleChild => '子ページを追加';

	/// ja: 'ルートを追加'
	String get titleRoot => 'ルートを追加';

	/// ja: 'ページを作成'
	String get titleMissing => 'ページを作成';

	/// ja: 'ページ名'
	String get nameLabel => 'ページ名';

	/// ja: '新しいページの名前'
	String get nameHint => '新しいページの名前';

	/// ja: '管理番号'
	String get controlNumberLabel => '管理番号';

	/// ja: '文書の管理番号(利用者が決めます)'
	String get controlNumberHint => '文書の管理番号(利用者が決めます)';

	/// ja: '作成'
	String get create => '作成';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';
}

// Path: edit
class ManualStrings$edit$ja {
	ManualStrings$edit$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ページの編集'
	String get heading => 'ページの編集';

	/// ja: 'ルート(文書)は本文を持ちません。本文は子のページに書きます。'
	String get rootNoBody => 'ルート(文書)は本文を持ちません。本文は子のページに書きます。';

	/// ja: 'ページ名'
	String get nameLabel => 'ページ名';

	/// ja: '必須'
	String get required => '必須';

	/// ja: '本文'
	String get bodyLabel => '本文';

	/// ja: 'ビジュアル'
	String get modeVisual => 'ビジュアル';

	/// ja: 'Markdown'
	String get modeMarkdown => 'Markdown';

	/// ja: '保存'
	String get save => '保存';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: 'プレビュー'
	String get preview => 'プレビュー';

	/// ja: '保存しました(改訂 ${rev})。'
	String saved({required Object rev}) => '保存しました(改訂 ${rev})。';

	/// ja: '変更はありません。'
	String get nothingChanged => '変更はありません。';

	/// ja: '変更を破棄しますか'
	String get discardTitle => '変更を破棄しますか';

	/// ja: '保存していない変更があります。破棄して戻りますか。'
	String get discardMessage => '保存していない変更があります。破棄して戻りますか。';

	/// ja: '破棄する'
	String get discard => '破棄する';

	/// ja: '編集を続ける'
	String get keepEditing => '編集を続ける';

	late final ManualStrings$edit$toolbar$ja toolbar = ManualStrings$edit$toolbar$ja.internal(_root);
}

// Path: linkDialog
class ManualStrings$linkDialog$ja {
	ManualStrings$linkDialog$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'リンクを挿入'
	String get title => 'リンクを挿入';

	/// ja: 'ページ名を検索、または新しいページ名を入力'
	String get searchHint => 'ページ名を検索、または新しいページ名を入力';

	/// ja: '既存のページ'
	String get existing => '既存のページ';

	/// ja: 'ページ「${title}」を作成してリンク'
	String createNew({required Object title}) => 'ページ「${title}」を作成してリンク';

	/// ja: '該当するページがありません。'
	String get none => '該当するページがありません。';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';
}

// Path: history
class ManualStrings$history$ja {
	ManualStrings$history$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '履歴'
	String get title => '履歴';

	/// ja: '履歴はありません。'
	String get empty => '履歴はありません。';

	/// ja: 'この版に戻す'
	String get restore => 'この版に戻す';

	/// ja: 'この版に戻しますか'
	String get restoreTitle => 'この版に戻しますか';

	/// ja: '改訂 ${rev} の内容に戻します。戻す前の版も履歴に残ります。'
	String restoreMessage({required Object rev}) => '改訂 ${rev} の内容に戻します。戻す前の版も履歴に残ります。';

	/// ja: '現在の版'
	String get current => '現在の版';

	/// ja: '改訂 ${rev} · ${by} · ${at}'
	String versionMeta({required Object rev, required Object by, required Object at}) => '改訂 ${rev} · ${by} · ${at}';

	/// ja: '閉じる'
	String get close => '閉じる';
}

// Path: export
class ManualStrings$export$ja {
	ManualStrings$export$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'Markdown の書き出し'
	String get title => 'Markdown の書き出し';

	/// ja: '範囲'
	String get scope => '範囲';

	/// ja: 'このページ'
	String get scopePage => 'このページ';

	/// ja: '文書全体'
	String get scopeAll => '文書全体';

	/// ja: 'コピー'
	String get copy => 'コピー';

	/// ja: 'コピーしました。'
	String get copied => 'コピーしました。';

	/// ja: '閉じる'
	String get close => '閉じる';
}

// Path: pdf
class ManualStrings$pdf$ja {
	ManualStrings$pdf$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'PDF の出力'
	String get title => 'PDF の出力';

	/// ja: '範囲'
	String get scope => '範囲';

	/// ja: 'このページ'
	String get scopePage => 'このページ';

	/// ja: '文書全体'
	String get scopeAll => '文書全体';

	/// ja: '承認スタンプ・ヘッダ・フッタ・テーマは、アプリの設定に従います。'
	String get note => '承認スタンプ・ヘッダ・フッタ・テーマは、アプリの設定に従います。';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '保存を取り消しました。'
	String get canceled => '保存を取り消しました。';

	/// ja: 'PDF を作成しています…'
	String get building => 'PDF を作成しています…';

	/// ja: 'PDF を作成できませんでした。'
	String get failed => 'PDF を作成できませんでした。';

	/// ja: '閉じる'
	String get close => '閉じる';
}

// Path: approval
class ManualStrings$approval$ja {
	ManualStrings$approval$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認待ち'
	String get pending => '承認待ち';

	/// ja: 'この文書は承認待ちです。承認されるまで、承認者と管理者だけが読めます。'
	String get pendingNote => 'この文書は承認待ちです。承認されるまで、承認者と管理者だけが読めます。';

	/// ja: 'この文書は承認待ちのため、公開されていません。'
	String get unreadable => 'この文書は承認待ちのため、公開されていません。';

	/// ja: '承認'
	String get stamps => '承認';

	/// ja: '承認はルートの文書にあります。'
	String get rootOnly => '承認はルートの文書にあります。';

	/// ja: '承認を申請'
	String get request => '承認を申請';

	/// ja: '承認を申請しました({count} 件の通知)。'
	String get requested => '承認を申請しました({count} 件の通知)。';

	/// ja: '承認を申請済みです(新しい通知はありません)。'
	String get requestedNone => '承認を申請済みです(新しい通知はありません)。';
}

// Path: errors
class ManualStrings$errors$ja {
	ManualStrings$errors$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ページ名を入力してください。'
	String get titleRequired => 'ページ名を入力してください。';

	/// ja: '同じ名前のページがあります。'
	String get titleDuplicate => '同じ名前のページがあります。';

	/// ja: 'ページが見つかりません。'
	String get notFound => 'ページが見つかりません。';

	/// ja: '編集の権限がありません。'
	String get notEditor => '編集の権限がありません。';

	/// ja: '管理番号を入力してください。'
	String get controlNumberRequired => '管理番号を入力してください。';

	/// ja: '文書レベルが登録されていません。先に文書レベルを登録してください。'
	String get rootTierMissing => '文書レベルが登録されていません。先に文書レベルを登録してください。';

	/// ja: '文書の承認パターンが設定されていません。会社情報の「承認」で、文書の標準の承認パターンを設定してください(承認が要らないときは、承認の段が無いパターンを選びます)。'
	String get approvalPatternMissing => '文書の承認パターンが設定されていません。会社情報の「承認」で、文書の標準の承認パターンを設定してください(承認が要らないときは、承認の段が無いパターンを選びます)。';

	/// ja: '承認を申請できません(承認が不要、またはすでに公開されています)。'
	String get requestUnavailable => '承認を申請できません(承認が不要、またはすでに公開されています)。';
}

// Path: ledger
class ManualStrings$ledger$ja {
	ManualStrings$ledger$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書'
	String get title => '文書';

	/// ja: '文書の一覧'
	String get heading => '文書の一覧';

	/// ja: '新規'
	String get addRoot => '新規';

	/// ja: '管理番号'
	String get controlNumber => '管理番号';

	/// ja: '名称'
	String get name => '名称';

	/// ja: '版'
	String get version => '版';

	/// ja: '状態'
	String get status => '状態';

	/// ja: '更新日'
	String get updatedAt => '更新日';

	/// ja: '文書がありません。'
	String get empty => '文書がありません。';

	/// ja: '${n} 件'
	String count({required Object n}) => '${n} 件';
}

// Path: edit.toolbar
class ManualStrings$edit$toolbar$ja {
	ManualStrings$edit$toolbar$ja.internal(this._root);

	final ManualStrings _root; // ignore: unused_field

	// Translations

	/// ja: '見出し 2'
	String get h2 => '見出し 2';

	/// ja: '見出し 3'
	String get h3 => '見出し 3';

	/// ja: '太字'
	String get bold => '太字';

	/// ja: '斜体'
	String get italic => '斜体';

	/// ja: '箇条書き'
	String get bullets => '箇条書き';

	/// ja: '番号付き'
	String get numbered => '番号付き';

	/// ja: '引用'
	String get quote => '引用';

	/// ja: 'コード'
	String get code => 'コード';

	/// ja: '表'
	String get table => '表';

	/// ja: '区切り線'
	String get rule => '区切り線';

	/// ja: 'リンク'
	String get link => 'リンク';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ManualStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuGroup' => '品質管理文書',
			'menuManual' => 'マニュアル',
			'title' => 'マニュアル',
			'loading' => '読み込み中…',
			'empty' => 'ページがありません。',
			'view.readOnly' => '閲覧のみ',
			'view.tocTitle' => '目次',
			'view.tocFold' => '目次・検索',
			'view.searchHint' => 'ページ名・本文を検索',
			'view.searchNone' => '見つかりません。',
			'view.edit' => '編集',
			'view.addChild' => '子ページを追加',
			'view.addRoot' => 'ルートを追加',
			'view.history' => '履歴',
			'view.markdown' => 'Markdown',
			'view.pdf' => 'PDF',
			'view.breadcrumbHome' => 'マニュアル',
			'view.pageToc' => 'このページの目次',
			'view.children' => 'このページの下',
			'view.backlinks' => 'このページへのリンク',
			'view.noBody' => 'まだ本文がありません。',
			'view.meta' => ({required Object by, required Object at, required Object rev}) => '更新者 ${by} · 更新 ${at} · 改訂 ${rev}',
			'view.missingLink' => ({required Object title}) => 'ページ「${title}」はまだありません。',
			'view.missingLinkAdmin' => ({required Object title}) => '「${title}」はまだありません。押して作成します。',
			'view.rootBadge' => 'ルート',
			'view.selectPage' => '左の目次からページを選んでください。',
			'create.titleChild' => '子ページを追加',
			'create.titleRoot' => 'ルートを追加',
			'create.titleMissing' => 'ページを作成',
			'create.nameLabel' => 'ページ名',
			'create.nameHint' => '新しいページの名前',
			'create.controlNumberLabel' => '管理番号',
			'create.controlNumberHint' => '文書の管理番号(利用者が決めます)',
			'create.create' => '作成',
			'create.cancel' => 'キャンセル',
			'edit.heading' => 'ページの編集',
			'edit.rootNoBody' => 'ルート(文書)は本文を持ちません。本文は子のページに書きます。',
			'edit.nameLabel' => 'ページ名',
			'edit.required' => '必須',
			'edit.bodyLabel' => '本文',
			'edit.modeVisual' => 'ビジュアル',
			'edit.modeMarkdown' => 'Markdown',
			'edit.save' => '保存',
			'edit.cancel' => 'キャンセル',
			'edit.preview' => 'プレビュー',
			'edit.saved' => ({required Object rev}) => '保存しました(改訂 ${rev})。',
			'edit.nothingChanged' => '変更はありません。',
			'edit.discardTitle' => '変更を破棄しますか',
			'edit.discardMessage' => '保存していない変更があります。破棄して戻りますか。',
			'edit.discard' => '破棄する',
			'edit.keepEditing' => '編集を続ける',
			'edit.toolbar.h2' => '見出し 2',
			'edit.toolbar.h3' => '見出し 3',
			'edit.toolbar.bold' => '太字',
			'edit.toolbar.italic' => '斜体',
			'edit.toolbar.bullets' => '箇条書き',
			'edit.toolbar.numbered' => '番号付き',
			'edit.toolbar.quote' => '引用',
			'edit.toolbar.code' => 'コード',
			'edit.toolbar.table' => '表',
			'edit.toolbar.rule' => '区切り線',
			'edit.toolbar.link' => 'リンク',
			'linkDialog.title' => 'リンクを挿入',
			'linkDialog.searchHint' => 'ページ名を検索、または新しいページ名を入力',
			'linkDialog.existing' => '既存のページ',
			'linkDialog.createNew' => ({required Object title}) => 'ページ「${title}」を作成してリンク',
			'linkDialog.none' => '該当するページがありません。',
			'linkDialog.cancel' => 'キャンセル',
			'history.title' => '履歴',
			'history.empty' => '履歴はありません。',
			'history.restore' => 'この版に戻す',
			'history.restoreTitle' => 'この版に戻しますか',
			'history.restoreMessage' => ({required Object rev}) => '改訂 ${rev} の内容に戻します。戻す前の版も履歴に残ります。',
			'history.current' => '現在の版',
			'history.versionMeta' => ({required Object rev, required Object by, required Object at}) => '改訂 ${rev} · ${by} · ${at}',
			'history.close' => '閉じる',
			'export.title' => 'Markdown の書き出し',
			'export.scope' => '範囲',
			'export.scopePage' => 'このページ',
			'export.scopeAll' => '文書全体',
			'export.copy' => 'コピー',
			'export.copied' => 'コピーしました。',
			'export.close' => '閉じる',
			'pdf.title' => 'PDF の出力',
			'pdf.scope' => '範囲',
			'pdf.scopePage' => 'このページ',
			'pdf.scopeAll' => '文書全体',
			'pdf.note' => '承認スタンプ・ヘッダ・フッタ・テーマは、アプリの設定に従います。',
			'pdf.save' => '保存',
			'pdf.saved' => '保存しました。',
			'pdf.canceled' => '保存を取り消しました。',
			'pdf.building' => 'PDF を作成しています…',
			'pdf.failed' => 'PDF を作成できませんでした。',
			'pdf.close' => '閉じる',
			'approval.pending' => '承認待ち',
			'approval.pendingNote' => 'この文書は承認待ちです。承認されるまで、承認者と管理者だけが読めます。',
			'approval.unreadable' => 'この文書は承認待ちのため、公開されていません。',
			'approval.stamps' => '承認',
			'approval.rootOnly' => '承認はルートの文書にあります。',
			'approval.request' => '承認を申請',
			'approval.requested' => '承認を申請しました({count} 件の通知)。',
			'approval.requestedNone' => '承認を申請済みです(新しい通知はありません)。',
			'errors.titleRequired' => 'ページ名を入力してください。',
			'errors.titleDuplicate' => '同じ名前のページがあります。',
			'errors.notFound' => 'ページが見つかりません。',
			'errors.notEditor' => '編集の権限がありません。',
			'errors.controlNumberRequired' => '管理番号を入力してください。',
			'errors.rootTierMissing' => '文書レベルが登録されていません。先に文書レベルを登録してください。',
			'errors.approvalPatternMissing' => '文書の承認パターンが設定されていません。会社情報の「承認」で、文書の標準の承認パターンを設定してください(承認が要らないときは、承認の段が無いパターンを選びます)。',
			'errors.requestUnavailable' => '承認を申請できません(承認が不要、またはすでに公開されています)。',
			'ledger.title' => '文書',
			'ledger.heading' => '文書の一覧',
			'ledger.addRoot' => '新規',
			'ledger.controlNumber' => '管理番号',
			'ledger.name' => '名称',
			'ledger.version' => '版',
			'ledger.status' => '状態',
			'ledger.updatedAt' => '更新日',
			'ledger.empty' => '文書がありません。',
			'ledger.count' => ({required Object n}) => '${n} 件',
			_ => null,
		};
	}
}
