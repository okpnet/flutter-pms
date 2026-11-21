///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef DocumentSettingsStringsJa = DocumentSettingsStrings; // ignore: unused_element
class DocumentSettingsStrings with BaseTranslations<DocumentSettingsLocale, DocumentSettingsStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [DocumentSettingsLocale.build] is preferred.
	DocumentSettingsStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: DocumentSettingsLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings> _meta;
	@override TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final DocumentSettingsStrings _root = this; // ignore: unused_field

	DocumentSettingsStrings $copyWith({TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings>? meta}) => DocumentSettingsStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '品質管理文書'
	String get menuGroup => '品質管理文書';

	/// ja: '承認スタンプ・PDF の設定'
	String get menuLabel => '承認スタンプ・PDF の設定';

	/// ja: '承認スタンプ・PDF の設定'
	String get title => '承認スタンプ・PDF の設定';

	/// ja: '読み込み中…'
	String get loading => '読み込み中…';

	/// ja: '管理者だけが変更できます。'
	String get adminOnly => '管理者だけが変更できます。';

	/// ja: '設定を読み込めませんでした。標準の設定を表示します。'
	String get loadFailed => '設定を読み込めませんでした。標準の設定を表示します。';

	late final DocumentSettingsStrings$tabs$ja tabs = DocumentSettingsStrings$tabs$ja.internal(_root);
	late final DocumentSettingsStrings$approval$ja approval = DocumentSettingsStrings$approval$ja.internal(_root);
	late final DocumentSettingsStrings$actions$ja actions = DocumentSettingsStrings$actions$ja.internal(_root);

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '保存できませんでした。'
	String get saveFailed => '保存できませんでした。';

	/// ja: '未保存の変更があります。'
	String get unsaved => '未保存の変更があります。';

	/// ja: '読み取れなかった項目(標準の値で表示しています)'
	String get problemsTitle => '読み取れなかった項目(標準の値で表示しています)';

	late final DocumentSettingsStrings$preview$ja preview = DocumentSettingsStrings$preview$ja.internal(_root);
	late final DocumentSettingsStrings$json$ja json = DocumentSettingsStrings$json$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$ja stamp = DocumentSettingsStrings$stamp$ja.internal(_root);
	late final DocumentSettingsStrings$pdf$ja pdf = DocumentSettingsStrings$pdf$ja.internal(_root);
}

// Path: tabs
class DocumentSettingsStrings$tabs$ja {
	DocumentSettingsStrings$tabs$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認スタンプ'
	String get stamp => '承認スタンプ';

	/// ja: 'PDF'
	String get pdf => 'PDF';

	/// ja: 'JSON'
	String get json => 'JSON';

	/// ja: '承認パターン'
	String get approval => '承認パターン';
}

// Path: approval
class DocumentSettingsStrings$approval$ja {
	DocumentSettingsStrings$approval$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '種類ごとに、登録が申請になる承認パターンを選びます。「承認不要」は、その種類の登録で承認を求めません。設定は「保存」で反映されます。'
	String get hint => '種類ごとに、登録が申請になる承認パターンを選びます。「承認不要」は、その種類の登録で承認を求めません。設定は「保存」で反映されます。';

	/// ja: '承認不要(設定しない)'
	String get none => '承認不要(設定しない)';

	/// ja: '(一覧に無いパターン) ${id}'
	String unknown({required Object id}) => '(一覧に無いパターン) ${id}';

	/// ja: '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。'
	String get documentNote => '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。';

	/// ja: '承認パターンが登録されていません。会社情報の「承認」で登録してください。'
	String get empty => '承認パターンが登録されていません。会社情報の「承認」で登録してください。';

	/// ja: '承認パターンの一覧を読み込めませんでした。'
	String get loadFailed => '承認パターンの一覧を読み込めませんでした。';

	/// ja: '承認パターンを読み込んでいます…'
	String get loading => '承認パターンを読み込んでいます…';

	/// ja: '文書'
	String get kindDocument => '文書';

	/// ja: '受注'
	String get kindOrder => '受注';

	/// ja: '発注'
	String get kindPurchase => '発注';

	/// ja: '非計上発注'
	String get kindUnrecognized => '非計上発注';

	/// ja: '出荷オーダー'
	String get kindShippingOrder => '出荷オーダー';

	/// ja: '異常'
	String get kindComplaint => '異常';

	/// ja: '処置'
	String get kindDisposal => '処置';

	/// ja: '再発防止'
	String get kindRecurrencePrevention => '再発防止';
}

// Path: actions
class DocumentSettingsStrings$actions$ja {
	DocumentSettingsStrings$actions$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '保存'
	String get save => '保存';

	/// ja: '元に戻す'
	String get revert => '元に戻す';

	/// ja: '標準に戻す'
	String get resetDefaults => '標準に戻す';

	/// ja: '反映'
	String get apply => '反映';
}

// Path: preview
class DocumentSettingsStrings$preview$ja {
	DocumentSettingsStrings$preview$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'プレビュー'
	String get title => 'プレビュー';

	/// ja: 'ページ'
	String get page => 'ページ';

	/// ja: '見本の文書(承認済みと承認待ちの 2 段)です。'
	String get sampleNote => '見本の文書(承認済みと承認待ちの 2 段)です。';

	/// ja: '1 ページ目'
	String get pageFirst => '1 ページ目';

	/// ja: '2 ページ目'
	String get pageSecond => '2 ページ目';
}

// Path: json
class DocumentSettingsStrings$json$ja {
	DocumentSettingsStrings$json$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設定の JSON(info_app.settings)です。直して「反映」を押すと、フォームとプレビューに反映されます。'
	String get hint => '設定の JSON(info_app.settings)です。直して「反映」を押すと、フォームとプレビューに反映されます。';

	/// ja: 'JSON として読めません。'
	String get invalid => 'JSON として読めません。';

	/// ja: '反映・取り込みの前に、スキーマ(schema/app_settings.schema.json)で形を検査します。誤りがあるときは取り込みません。'
	String get schemaHint => '反映・取り込みの前に、スキーマ(schema/app_settings.schema.json)で形を検査します。誤りがあるときは取り込みません。';

	/// ja: 'JSON ファイルから取り込む'
	String get import => 'JSON ファイルから取り込む';

	/// ja: '${name} を取り込みました。内容を確かめて「保存」を押してください(まだ保存していません)。'
	String imported({required Object name}) => '${name} を取り込みました。内容を確かめて「保存」を押してください(まだ保存していません)。';

	/// ja: 'スキーマの誤りが ${count} 件あります。直してからもう一度反映してください。'
	String schemaErrors({required Object count}) => 'スキーマの誤りが ${count} 件あります。直してからもう一度反映してください。';

	/// ja: 'ほか ${count} 件'
	String schemaMore({required Object count}) => 'ほか ${count} 件';

	/// ja: 'ファイルを読めませんでした。'
	String get unreadable => 'ファイルを読めませんでした。';
}

// Path: stamp
class DocumentSettingsStrings$stamp$ja {
	DocumentSettingsStrings$stamp$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '位置'
	String get position => '位置';

	/// ja: '基準'
	String get anchor => '基準';

	/// ja: '左右の距離(mm)'
	String get offsetX => '左右の距離(mm)';

	/// ja: '上下の距離(mm)'
	String get offsetY => '上下の距離(mm)';

	/// ja: '出すページ'
	String get pages => '出すページ';

	/// ja: '見た目'
	String get look => '見た目';

	/// ja: '重ね方'
	String get layer => '重ね方';

	/// ja: 'すかし(不透明度)'
	String get opacity => 'すかし(不透明度)';

	/// ja: '形'
	String get shape => '形';

	/// ja: '幅(mm)'
	String get width => '幅(mm)';

	/// ja: '高さ(mm)'
	String get height => '高さ(mm)';

	/// ja: '回転(度)'
	String get rotation => '回転(度)';

	/// ja: '色(#RRGGBB、または変数への参照)'
	String get colors => '色(#RRGGBB、または変数への参照)';

	/// ja: '文字'
	String get colorText => '文字';

	/// ja: '枠'
	String get colorFrame => '枠';

	/// ja: '塗り(空は塗らない)'
	String get colorFill => '塗り(空は塗らない)';

	/// ja: '内容'
	String get content => '内容';

	/// ja: '文字の言語'
	String get labelLanguage => '文字の言語';

	/// ja: '承認の段'
	String get stages => '承認の段';

	/// ja: '表示項目'
	String get items => '表示項目';

	/// ja: '項目'
	String get itemField => '項目';

	/// ja: '書式'
	String get itemFormat => '書式';

	/// ja: '大きさ'
	String get itemSize => '大きさ';

	/// ja: '行'
	String get itemLine => '行';

	/// ja: '項目を追加'
	String get addItem => '項目を追加';

	/// ja: '承認待ちの見た目'
	String get pending => '承認待ちの見た目';

	/// ja: '枠を破線にする'
	String get pendingDashed => '枠を破線にする';

	/// ja: '色'
	String get pendingColor => '色';

	late final DocumentSettingsStrings$stamp$anchors$ja anchors = DocumentSettingsStrings$stamp$anchors$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$pagesValues$ja pagesValues = DocumentSettingsStrings$stamp$pagesValues$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$layers$ja layers = DocumentSettingsStrings$stamp$layers$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$shapes$ja shapes = DocumentSettingsStrings$stamp$shapes$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$stagesValues$ja stagesValues = DocumentSettingsStrings$stamp$stagesValues$ja.internal(_root);
	late final DocumentSettingsStrings$stamp$fields$ja fields = DocumentSettingsStrings$stamp$fields$ja.internal(_root);
}

// Path: pdf
class DocumentSettingsStrings$pdf$ja {
	DocumentSettingsStrings$pdf$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '用紙'
	String get page => '用紙';

	/// ja: '用紙の大きさ'
	String get size => '用紙の大きさ';

	/// ja: '向き'
	String get orientation => '向き';

	/// ja: '縦'
	String get portrait => '縦';

	/// ja: '横'
	String get landscape => '横';

	/// ja: '余白(mm)'
	String get margins => '余白(mm)';

	/// ja: '上'
	String get marginTop => '上';

	/// ja: '右'
	String get marginRight => '右';

	/// ja: '下'
	String get marginBottom => '下';

	/// ja: '左'
	String get marginLeft => '左';

	/// ja: 'テーマ'
	String get theme => 'テーマ';

	/// ja: '変数(色の参照先)'
	String get vars => '変数(色の参照先)';

	/// ja: '文字'
	String get fonts => '文字';

	/// ja: '本文のフォント名'
	String get fontFamily => '本文のフォント名';

	/// ja: '本文の大きさ(pt)'
	String get baseSize => '本文の大きさ(pt)';

	/// ja: '行の高さ(倍)'
	String get lineHeight => '行の高さ(倍)';

	/// ja: '色(#RRGGBB、または変数への参照)'
	String get colors => '色(#RRGGBB、または変数への参照)';

	/// ja: '本文'
	String get colorText => '本文';

	/// ja: '見出し'
	String get colorHeading => '見出し';

	/// ja: 'リンク'
	String get colorLink => 'リンク';

	/// ja: '引用'
	String get colorQuote => '引用';

	/// ja: 'コードの背景'
	String get colorCodeBackground => 'コードの背景';

	/// ja: '表の罫線'
	String get colorTableBorder => '表の罫線';

	/// ja: '表の見出しの背景'
	String get colorTableHeader => '表の見出しの背景';

	/// ja: '見出し'
	String get headings => '見出し';

	/// ja: '大きさ(pt)'
	String get headingSize => '大きさ(pt)';

	/// ja: '章ごとに改ページ'
	String get headingBreak => '章ごとに改ページ';

	/// ja: 'ヘッダ'
	String get header => 'ヘッダ';

	/// ja: 'フッタ'
	String get footer => 'フッタ';

	/// ja: '出す'
	String get bandEnabled => '出す';

	/// ja: '高さ(mm)'
	String get bandHeight => '高さ(mm)';

	/// ja: '文字の大きさ(pt)'
	String get bandSize => '文字の大きさ(pt)';

	/// ja: '文字の色'
	String get bandColor => '文字の色';

	/// ja: '本文との境の線'
	String get bandBorder => '本文との境の線';

	/// ja: '1 ページ目'
	String get bandFirstPage => '1 ページ目';

	/// ja: '他のページと同じ'
	String get firstSame => '他のページと同じ';

	/// ja: '出さない'
	String get firstNone => '出さない';

	/// ja: '左'
	String get bandLeft => '左';

	/// ja: '中央'
	String get bandCenter => '中央';

	/// ja: '右'
	String get bandRight => '右';

	/// ja: '使える変数(押すと入力中の欄に入ります)'
	String get variablesTitle => '使える変数(押すと入力中の欄に入ります)';

	/// ja: '{変数} または {変数:書式}。日時の書式は yyyy/MM/dd・HH:mm・G E(和暦)など。波括弧は {{ と }}。'
	String get variablesHint => '{変数} または {変数:書式}。日時の書式は yyyy/MM/dd・HH:mm・G E(和暦)など。波括弧は {{ と }}。';

	/// ja: '利用者の変数({var.名前} で使う)'
	String get custom => '利用者の変数({var.名前} で使う)';

	/// ja: '名前'
	String get customName => '名前';

	/// ja: '値'
	String get customValue => '値';

	/// ja: '変数を追加'
	String get addCustom => '変数を追加';

	/// ja: '削除'
	String get remove => '削除';
}

// Path: stamp.anchors
class DocumentSettingsStrings$stamp$anchors$ja {
	DocumentSettingsStrings$stamp$anchors$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '左上'
	String get topLeft => '左上';

	/// ja: '右上'
	String get topRight => '右上';

	/// ja: '左下'
	String get bottomLeft => '左下';

	/// ja: '右下'
	String get bottomRight => '右下';

	/// ja: '中央'
	String get center => '中央';
}

// Path: stamp.pagesValues
class DocumentSettingsStrings$stamp$pagesValues$ja {
	DocumentSettingsStrings$stamp$pagesValues$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '先頭のページだけ'
	String get first => '先頭のページだけ';

	/// ja: '全ページ'
	String get all => '全ページ';
}

// Path: stamp.layers
class DocumentSettingsStrings$stamp$layers$ja {
	DocumentSettingsStrings$stamp$layers$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '透かし(本文の後ろ)'
	String get background => '透かし(本文の後ろ)';

	/// ja: '本文の前'
	String get foreground => '本文の前';
}

// Path: stamp.shapes
class DocumentSettingsStrings$stamp$shapes$ja {
	DocumentSettingsStrings$stamp$shapes$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '円'
	String get circle => '円';

	/// ja: '角丸の四角'
	String get roundRect => '角丸の四角';

	/// ja: '二重枠'
	String get doubleFrame => '二重枠';

	/// ja: '日付印'
	String get dateStamp => '日付印';
}

// Path: stamp.stagesValues
class DocumentSettingsStrings$stamp$stagesValues$ja {
	DocumentSettingsStrings$stamp$stagesValues$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '段ごとに並べる'
	String get all => '段ごとに並べる';

	/// ja: '最後に承認した 1 つだけ'
	String get last => '最後に承認した 1 つだけ';
}

// Path: stamp.fields
class DocumentSettingsStrings$stamp$fields$ja {
	DocumentSettingsStrings$stamp$fields$ja.internal(this._root);

	final DocumentSettingsStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認の文字'
	String get stamp_label => '承認の文字';

	/// ja: '承認日時'
	String get approved_at => '承認日時';

	/// ja: '承認者'
	String get approved_staff => '承認者';

	/// ja: '承認の段の名称'
	String get approval_name => '承認の段の名称';

	/// ja: '版コード'
	String get version_code => '版コード';

	/// ja: '管理番号'
	String get control_number => '管理番号';

	/// ja: '改訂'
	String get document_revision => '改訂';

	/// ja: '備考'
	String get approved_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on DocumentSettingsStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuGroup' => '品質管理文書',
			'menuLabel' => '承認スタンプ・PDF の設定',
			'title' => '承認スタンプ・PDF の設定',
			'loading' => '読み込み中…',
			'adminOnly' => '管理者だけが変更できます。',
			'loadFailed' => '設定を読み込めませんでした。標準の設定を表示します。',
			'tabs.stamp' => '承認スタンプ',
			'tabs.pdf' => 'PDF',
			'tabs.json' => 'JSON',
			'tabs.approval' => '承認パターン',
			'approval.hint' => '種類ごとに、登録が申請になる承認パターンを選びます。「承認不要」は、その種類の登録で承認を求めません。設定は「保存」で反映されます。',
			'approval.none' => '承認不要(設定しない)',
			'approval.unknown' => ({required Object id}) => '(一覧に無いパターン) ${id}',
			'approval.documentNote' => '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。',
			'approval.empty' => '承認パターンが登録されていません。会社情報の「承認」で登録してください。',
			'approval.loadFailed' => '承認パターンの一覧を読み込めませんでした。',
			'approval.loading' => '承認パターンを読み込んでいます…',
			'approval.kindDocument' => '文書',
			'approval.kindOrder' => '受注',
			'approval.kindPurchase' => '発注',
			'approval.kindUnrecognized' => '非計上発注',
			'approval.kindShippingOrder' => '出荷オーダー',
			'approval.kindComplaint' => '異常',
			'approval.kindDisposal' => '処置',
			'approval.kindRecurrencePrevention' => '再発防止',
			'actions.save' => '保存',
			'actions.revert' => '元に戻す',
			'actions.resetDefaults' => '標準に戻す',
			'actions.apply' => '反映',
			'saved' => '保存しました。',
			'saveFailed' => '保存できませんでした。',
			'unsaved' => '未保存の変更があります。',
			'problemsTitle' => '読み取れなかった項目(標準の値で表示しています)',
			'preview.title' => 'プレビュー',
			'preview.page' => 'ページ',
			'preview.sampleNote' => '見本の文書(承認済みと承認待ちの 2 段)です。',
			'preview.pageFirst' => '1 ページ目',
			'preview.pageSecond' => '2 ページ目',
			'json.hint' => '設定の JSON(info_app.settings)です。直して「反映」を押すと、フォームとプレビューに反映されます。',
			'json.invalid' => 'JSON として読めません。',
			'json.schemaHint' => '反映・取り込みの前に、スキーマ(schema/app_settings.schema.json)で形を検査します。誤りがあるときは取り込みません。',
			'json.import' => 'JSON ファイルから取り込む',
			'json.imported' => ({required Object name}) => '${name} を取り込みました。内容を確かめて「保存」を押してください(まだ保存していません)。',
			'json.schemaErrors' => ({required Object count}) => 'スキーマの誤りが ${count} 件あります。直してからもう一度反映してください。',
			'json.schemaMore' => ({required Object count}) => 'ほか ${count} 件',
			'json.unreadable' => 'ファイルを読めませんでした。',
			'stamp.position' => '位置',
			'stamp.anchor' => '基準',
			'stamp.offsetX' => '左右の距離(mm)',
			'stamp.offsetY' => '上下の距離(mm)',
			'stamp.pages' => '出すページ',
			'stamp.look' => '見た目',
			'stamp.layer' => '重ね方',
			'stamp.opacity' => 'すかし(不透明度)',
			'stamp.shape' => '形',
			'stamp.width' => '幅(mm)',
			'stamp.height' => '高さ(mm)',
			'stamp.rotation' => '回転(度)',
			'stamp.colors' => '色(#RRGGBB、または変数への参照)',
			'stamp.colorText' => '文字',
			'stamp.colorFrame' => '枠',
			'stamp.colorFill' => '塗り(空は塗らない)',
			'stamp.content' => '内容',
			'stamp.labelLanguage' => '文字の言語',
			'stamp.stages' => '承認の段',
			'stamp.items' => '表示項目',
			'stamp.itemField' => '項目',
			'stamp.itemFormat' => '書式',
			'stamp.itemSize' => '大きさ',
			'stamp.itemLine' => '行',
			'stamp.addItem' => '項目を追加',
			'stamp.pending' => '承認待ちの見た目',
			'stamp.pendingDashed' => '枠を破線にする',
			'stamp.pendingColor' => '色',
			'stamp.anchors.topLeft' => '左上',
			'stamp.anchors.topRight' => '右上',
			'stamp.anchors.bottomLeft' => '左下',
			'stamp.anchors.bottomRight' => '右下',
			'stamp.anchors.center' => '中央',
			'stamp.pagesValues.first' => '先頭のページだけ',
			'stamp.pagesValues.all' => '全ページ',
			'stamp.layers.background' => '透かし(本文の後ろ)',
			'stamp.layers.foreground' => '本文の前',
			'stamp.shapes.circle' => '円',
			'stamp.shapes.roundRect' => '角丸の四角',
			'stamp.shapes.doubleFrame' => '二重枠',
			'stamp.shapes.dateStamp' => '日付印',
			'stamp.stagesValues.all' => '段ごとに並べる',
			'stamp.stagesValues.last' => '最後に承認した 1 つだけ',
			'stamp.fields.stamp_label' => '承認の文字',
			'stamp.fields.approved_at' => '承認日時',
			'stamp.fields.approved_staff' => '承認者',
			'stamp.fields.approval_name' => '承認の段の名称',
			'stamp.fields.version_code' => '版コード',
			'stamp.fields.control_number' => '管理番号',
			'stamp.fields.document_revision' => '改訂',
			'stamp.fields.approved_remarks' => '備考',
			'pdf.page' => '用紙',
			'pdf.size' => '用紙の大きさ',
			'pdf.orientation' => '向き',
			'pdf.portrait' => '縦',
			'pdf.landscape' => '横',
			'pdf.margins' => '余白(mm)',
			'pdf.marginTop' => '上',
			'pdf.marginRight' => '右',
			'pdf.marginBottom' => '下',
			'pdf.marginLeft' => '左',
			'pdf.theme' => 'テーマ',
			'pdf.vars' => '変数(色の参照先)',
			'pdf.fonts' => '文字',
			'pdf.fontFamily' => '本文のフォント名',
			'pdf.baseSize' => '本文の大きさ(pt)',
			'pdf.lineHeight' => '行の高さ(倍)',
			'pdf.colors' => '色(#RRGGBB、または変数への参照)',
			'pdf.colorText' => '本文',
			'pdf.colorHeading' => '見出し',
			'pdf.colorLink' => 'リンク',
			'pdf.colorQuote' => '引用',
			'pdf.colorCodeBackground' => 'コードの背景',
			'pdf.colorTableBorder' => '表の罫線',
			'pdf.colorTableHeader' => '表の見出しの背景',
			'pdf.headings' => '見出し',
			'pdf.headingSize' => '大きさ(pt)',
			'pdf.headingBreak' => '章ごとに改ページ',
			'pdf.header' => 'ヘッダ',
			'pdf.footer' => 'フッタ',
			'pdf.bandEnabled' => '出す',
			'pdf.bandHeight' => '高さ(mm)',
			'pdf.bandSize' => '文字の大きさ(pt)',
			'pdf.bandColor' => '文字の色',
			'pdf.bandBorder' => '本文との境の線',
			'pdf.bandFirstPage' => '1 ページ目',
			'pdf.firstSame' => '他のページと同じ',
			'pdf.firstNone' => '出さない',
			'pdf.bandLeft' => '左',
			'pdf.bandCenter' => '中央',
			'pdf.bandRight' => '右',
			'pdf.variablesTitle' => '使える変数(押すと入力中の欄に入ります)',
			'pdf.variablesHint' => '{変数} または {変数:書式}。日時の書式は yyyy/MM/dd・HH:mm・G E(和暦)など。波括弧は {{ と }}。',
			'pdf.custom' => '利用者の変数({var.名前} で使う)',
			'pdf.customName' => '名前',
			'pdf.customValue' => '値',
			'pdf.addCustom' => '変数を追加',
			'pdf.remove' => '削除',
			_ => null,
		};
	}
}
