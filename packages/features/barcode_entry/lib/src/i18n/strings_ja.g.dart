///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef BarcodeEntryStringsJa = BarcodeEntryStrings; // ignore: unused_element
class BarcodeEntryStrings with BaseTranslations<BarcodeEntryLocale, BarcodeEntryStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [BarcodeEntryLocale.build] is preferred.
	BarcodeEntryStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: BarcodeEntryLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings> _meta;
	@override TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final BarcodeEntryStrings _root = this; // ignore: unused_field

	BarcodeEntryStrings $copyWith({TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings>? meta}) => BarcodeEntryStrings(meta: meta ?? this.$meta);

	// Translations
	late final BarcodeEntryStrings$menu$ja menu = BarcodeEntryStrings$menu$ja.internal(_root);

	/// ja: 'バーコード'
	String get title => 'バーコード';

	late final BarcodeEntryStrings$steps$ja steps = BarcodeEntryStrings$steps$ja.internal(_root);
	late final BarcodeEntryStrings$kinds$ja kinds = BarcodeEntryStrings$kinds$ja.internal(_root);
	late final BarcodeEntryStrings$modes$ja modes = BarcodeEntryStrings$modes$ja.internal(_root);
	late final BarcodeEntryStrings$input$ja input = BarcodeEntryStrings$input$ja.internal(_root);
	late final BarcodeEntryStrings$ngReasons$ja ngReasons = BarcodeEntryStrings$ngReasons$ja.internal(_root);
	late final BarcodeEntryStrings$notice$ja notice = BarcodeEntryStrings$notice$ja.internal(_root);
	late final BarcodeEntryStrings$log$ja log = BarcodeEntryStrings$log$ja.internal(_root);
}

// Path: menu
class BarcodeEntryStrings$menu$ja {
	BarcodeEntryStrings$menu$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業実績'
	String get group => '作業実績';

	/// ja: 'バーコード'
	String get item => 'バーコード';
}

// Path: steps
class BarcodeEntryStrings$steps$ja {
	BarcodeEntryStrings$steps$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'リーディングトップ'
	String get top => 'リーディングトップ';

	/// ja: '開始の選択'
	String get start => '開始の選択';

	/// ja: '棚出庫処理'
	String get issueShelf => '棚出庫処理';

	/// ja: '数量入力'
	String get qty => '数量入力';

	/// ja: '評価'
	String get eval => '評価';

	/// ja: '不合格処理'
	String get ng => '不合格処理';

	/// ja: '棚移動リーディング(入庫処理)'
	String get putShelf => '棚移動リーディング(入庫処理)';

	/// ja: '製品/購入品リーディング'
	String get stockItem => '製品/購入品リーディング';

	/// ja: '数量入力'
	String get stockQty => '数量入力';

	/// ja: '受入検品(数量入力)'
	String get recvQty => '受入検品(数量入力)';

	/// ja: '受入検品(評価)'
	String get recvEval => '受入検品(評価)';

	/// ja: '設備点検'
	String get equipment => '設備点検';
}

// Path: kinds
class BarcodeEntryStrings$kinds$ja {
	BarcodeEntryStrings$kinds$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業指示'
	String get work => '作業指示';

	/// ja: '棚'
	String get shelf => '棚';

	/// ja: '購入品'
	String get purchase => '購入品';

	/// ja: '製品/購入品'
	String get item => '製品/購入品';

	/// ja: '設備'
	String get equipment => '設備';
}

// Path: modes
class BarcodeEntryStrings$modes$ja {
	BarcodeEntryStrings$modes$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations
	late final BarcodeEntryStrings$modes$work$ja work = BarcodeEntryStrings$modes$work$ja.internal(_root);
	late final BarcodeEntryStrings$modes$receive$ja receive = BarcodeEntryStrings$modes$receive$ja.internal(_root);
	late final BarcodeEntryStrings$modes$shelf$ja shelf = BarcodeEntryStrings$modes$shelf$ja.internal(_root);
	late final BarcodeEntryStrings$modes$equipment$ja equipment = BarcodeEntryStrings$modes$equipment$ja.internal(_root);
}

// Path: input
class BarcodeEntryStrings$input$ja {
	BarcodeEntryStrings$input$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'バーコードの読込'
	String get topTitle => 'バーコードの読込';

	/// ja: 'バーコードリーダーで読み取るか、文字を入力して Enter を押します。種類は自動で判定します(上の種類を選ぶと、その種類だけを受け付けます)。'
	String get topHint => 'バーコードリーダーで読み取るか、文字を入力して Enter を押します。種類は自動で判定します(上の種類を選ぶと、その種類だけを受け付けます)。';

	/// ja: 'バーコード / 入力'
	String get label => 'バーコード / 入力';

	/// ja: '決定'
	String get commit => '決定';

	/// ja: 'カメラで読み取る'
	String get camera => 'カメラで読み取る';

	/// ja: 'カメラを閉じる'
	String get cameraClose => 'カメラを閉じる';

	/// ja: 'カメラを使えません。権限を確認するか、リーダー・手入力を使ってください。'
	String get cameraError => 'カメラを使えません。権限を確認するか、リーダー・手入力を使ってください。';

	/// ja: '取り消し'
	String get cancel => '取り消し';

	/// ja: '数量'
	String get qtyLabel => '数量';

	/// ja: 'この作業を開始しますか(材料を棚から出庫します)。'
	String get startQuestion => 'この作業を開始しますか(材料を棚から出庫します)。';

	/// ja: 'はい'
	String get answerYes => 'はい';

	/// ja: 'いいえ'
	String get answerNo => 'いいえ';

	/// ja: '合格'
	String get pass => '合格';

	/// ja: '不合格'
	String get fail => '不合格';

	/// ja: '評価を選んでください。'
	String get evalQuestion => '評価を選んでください。';

	/// ja: '不合格の理由'
	String get ngReason => '不合格の理由';

	/// ja: '不合格として進める'
	String get ngConfirm => '不合格として進める';

	/// ja: '「{item}」の材料を取り出す棚を読み取ると、出庫して作業を開始します。'
	String issueShelfHint({required Object item}) => '「${item}」の材料を取り出す棚を読み取ると、出庫して作業を開始します。';

	/// ja: '{judge}品{qty}{unit}を入れる棚を読み取ると、入庫処理をします。'
	String putShelfHint({required Object judge, required Object qty, required Object unit}) => '${judge}品${qty}${unit}を入れる棚を読み取ると、入庫処理をします。';

	/// ja: '「{shelf}」へ入れる製品/購入品を読み取ります。'
	String stockItemHint({required Object shelf}) => '「${shelf}」へ入れる製品/購入品を読み取ります。';

	/// ja: '残り {remain}{unit}(1以上の整数)'
	String qtyHint({required Object remain, required Object unit}) => '残り ${remain}${unit}(1以上の整数)';

	/// ja: '点検結果を記録'
	String get inspectionSave => '点検結果を記録';

	late final BarcodeEntryStrings$input$inspectionResults$ja inspectionResults = BarcodeEntryStrings$input$inspectionResults$ja.internal(_root);

	/// ja: '合格'
	String get judgePass => '合格';

	/// ja: '不合格'
	String get judgeFail => '不合格';
}

// Path: ngReasons
class BarcodeEntryStrings$ngReasons$ja {
	BarcodeEntryStrings$ngReasons$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '寸法不良'
	String get dimension => '寸法不良';

	/// ja: '外観不良'
	String get appearance => '外観不良';

	/// ja: '材料不良'
	String get material => '材料不良';

	/// ja: '数量不足'
	String get shortage => '数量不足';

	/// ja: 'その他'
	String get other => 'その他';
}

// Path: notice
class BarcodeEntryStrings$notice$ja {
	BarcodeEntryStrings$notice$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'バーコードを読み取るか、文字を入力してください。'
	String get empty => 'バーコードを読み取るか、文字を入力してください。';

	/// ja: '「{value}」は登録されていないバーコードです。もう一度読み取ってください。'
	String unknown({required Object value}) => '「${value}」は登録されていないバーコードです。もう一度読み取ってください。';

	/// ja: '「{mode}」では{expected}のバーコードを読み取ります。読み取ったのは{actual}です。'
	String wrongKind({required Object mode, required Object expected, required Object actual}) => '「${mode}」では${expected}のバーコードを読み取ります。読み取ったのは${actual}です。';

	/// ja: '製品/購入品は、先に棚のバーコードを読み取ってください(棚移動)。'
	String get needShelfFirst => '製品/購入品は、先に棚のバーコードを読み取ってください(棚移動)。';

	/// ja: '{actual}のバーコードです。棚のバーコードを読み取ってください。'
	String expectShelf({required Object actual}) => '${actual}のバーコードです。棚のバーコードを読み取ってください。';

	/// ja: '{actual}のバーコードです。製品/購入品のバーコードを読み取ってください。'
	String expectItem({required Object actual}) => '${actual}のバーコードです。製品/購入品のバーコードを読み取ってください。';

	/// ja: '数量は1以上の整数で入力してください。'
	String get qtyInvalid => '数量は1以上の整数で入力してください。';

	/// ja: '指示数量の残りは{remain}{unit}です。それ以下の数量を入力してください。'
	String qtyOverWork({required Object remain, required Object unit}) => '指示数量の残りは${remain}${unit}です。それ以下の数量を入力してください。';

	/// ja: '発注数量の残りは{remain}{unit}です。それ以下の数量を入力してください。'
	String qtyOverPurchase({required Object remain, required Object unit}) => '発注数量の残りは${remain}${unit}です。それ以下の数量を入力してください。';

	/// ja: 'この作業指示は、指示数量まで完了しています。次のバーコードを読み取ってください。'
	String get workDone => 'この作業指示は、指示数量まで完了しています。次のバーコードを読み取ってください。';

	/// ja: 'この購入品は、発注数量まで受け入れ済みです。次のバーコードを読み取ってください。'
	String get purchaseDone => 'この購入品は、発注数量まで受け入れ済みです。次のバーコードを読み取ってください。';

	/// ja: '取り消しました。最初から読み取ってください。'
	String get canceled => '取り消しました。最初から読み取ってください。';

	/// ja: '開始しませんでした。次のバーコードを読み取ってください。'
	String get notStarted => '開始しませんでした。次のバーコードを読み取ってください。';

	/// ja: '{shelf}から出庫し、作業を開始しました。次のバーコードを読み取ってください。'
	String started({required Object shelf}) => '${shelf}から出庫し、作業を開始しました。次のバーコードを読み取ってください。';

	/// ja: '{shelf}へ入庫しました。次のバーコードを読み取ってください。'
	String stored({required Object shelf}) => '${shelf}へ入庫しました。次のバーコードを読み取ってください。';

	/// ja: '点検結果を記録しました。次のバーコードを読み取ってください。'
	String get inspected => '点検結果を記録しました。次のバーコードを読み取ってください。';

	/// ja: '登録できませんでした。通信の状態を確認して、もう一度お試しください。'
	String get failed => '登録できませんでした。通信の状態を確認して、もう一度お試しください。';
}

// Path: log
class BarcodeEntryStrings$log$ja {
	BarcodeEntryStrings$log$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '履歴'
	String get title => '履歴';

	/// ja: 'まだ履歴はありません。'
	String get empty => 'まだ履歴はありません。';

	/// ja: '読み取れないバーコード: {value}'
	String unknown({required Object value}) => '読み取れないバーコード: ${value}';

	/// ja: '{sym} {item}／{task}: 指示数量が完了しています'
	String workDone({required Object sym, required Object item, required Object task}) => '${sym} ${item}／${task}: 指示数量が完了しています';

	/// ja: '{sym} {item}: 受入が完了しています'
	String purchaseDone({required Object sym, required Object item}) => '${sym} ${item}: 受入が完了しています';

	/// ja: '取り消しました'
	String get canceled => '取り消しました';

	/// ja: '{sym}: 開始しませんでした'
	String notStarted({required Object sym}) => '${sym}: 開始しませんでした';

	/// ja: '{sym} {item}／{task}: {shelf}から材料を出庫し、作業を開始'
	String started({required Object sym, required Object item, required Object task, required Object shelf}) => '${sym} ${item}／${task}: ${shelf}から材料を出庫し、作業を開始';

	/// ja: '{sym} {item}／{task}: {qty}{unit}を{judge}として{shelf}へ入庫'
	String storedWork({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}／${task}: ${qty}${unit}を${judge}として${shelf}へ入庫';

	/// ja: '{sym} {item}／{task}: {qty}{unit}を{judge}として{shelf}へ入庫(指示数量が完了)'
	String storedWorkDone({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}／${task}: ${qty}${unit}を${judge}として${shelf}へ入庫(指示数量が完了)';

	/// ja: '{sym} {item}: {qty}{unit}を受入検品({judge})、{shelf}へ入庫'
	String storedPurchase({required Object sym, required Object item, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}: ${qty}${unit}を受入検品(${judge})、${shelf}へ入庫';

	/// ja: '{shelf}: {item} {qty}{unit}を入庫'
	String storedItem({required Object shelf, required Object item, required Object qty, required Object unit}) => '${shelf}: ${item} ${qty}${unit}を入庫';

	/// ja: '設備点検 {code} {name}: {count}項目を記録(すべて合格)'
	String inspected({required Object code, required Object name, required Object count}) => '設備点検 ${code} ${name}: ${count}項目を記録(すべて合格)';

	/// ja: '設備点検 {code} {name}: {count}項目を記録(要確認 {issues}件)'
	String inspectedWithIssue({required Object code, required Object name, required Object count, required Object issues}) => '設備点検 ${code} ${name}: ${count}項目を記録(要確認 ${issues}件)';

	/// ja: '登録に失敗: {sym}'
	String failed({required Object sym}) => '登録に失敗: ${sym}';
}

// Path: modes.work
class BarcodeEntryStrings$modes$work$ja {
	BarcodeEntryStrings$modes$work$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業実績'
	String get label => '作業実績';

	/// ja: '作業指示(製造/委託品)のバーコードを読み取ります。'
	String get hint => '作業指示(製造/委託品)のバーコードを読み取ります。';
}

// Path: modes.receive
class BarcodeEntryStrings$modes$receive$ja {
	BarcodeEntryStrings$modes$receive$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '受入検品'
	String get label => '受入検品';

	/// ja: '購入品(発注明細)のバーコードを読み取ります。'
	String get hint => '購入品(発注明細)のバーコードを読み取ります。';
}

// Path: modes.shelf
class BarcodeEntryStrings$modes$shelf$ja {
	BarcodeEntryStrings$modes$shelf$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '棚移動'
	String get label => '棚移動';

	/// ja: '棚のバーコードを読み取り、続けて製品/購入品を読み取ります。'
	String get hint => '棚のバーコードを読み取り、続けて製品/購入品を読み取ります。';
}

// Path: modes.equipment
class BarcodeEntryStrings$modes$equipment$ja {
	BarcodeEntryStrings$modes$equipment$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '設備点検'
	String get label => '設備点検';

	/// ja: '設備のバーコードを読み取ります。'
	String get hint => '設備のバーコードを読み取ります。';
}

// Path: input.inspectionResults
class BarcodeEntryStrings$input$inspectionResults$ja {
	BarcodeEntryStrings$input$inspectionResults$ja.internal(this._root);

	final BarcodeEntryStrings _root; // ignore: unused_field

	// Translations

	/// ja: '合格'
	String get pass => '合格';

	/// ja: '不合格'
	String get fail => '不合格';

	/// ja: '要再点検'
	String get recheck => '要再点検';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on BarcodeEntryStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '作業実績',
			'menu.item' => 'バーコード',
			'title' => 'バーコード',
			'steps.top' => 'リーディングトップ',
			'steps.start' => '開始の選択',
			'steps.issueShelf' => '棚出庫処理',
			'steps.qty' => '数量入力',
			'steps.eval' => '評価',
			'steps.ng' => '不合格処理',
			'steps.putShelf' => '棚移動リーディング(入庫処理)',
			'steps.stockItem' => '製品/購入品リーディング',
			'steps.stockQty' => '数量入力',
			'steps.recvQty' => '受入検品(数量入力)',
			'steps.recvEval' => '受入検品(評価)',
			'steps.equipment' => '設備点検',
			'kinds.work' => '作業指示',
			'kinds.shelf' => '棚',
			'kinds.purchase' => '購入品',
			'kinds.item' => '製品/購入品',
			'kinds.equipment' => '設備',
			'modes.work.label' => '作業実績',
			'modes.work.hint' => '作業指示(製造/委託品)のバーコードを読み取ります。',
			'modes.receive.label' => '受入検品',
			'modes.receive.hint' => '購入品(発注明細)のバーコードを読み取ります。',
			'modes.shelf.label' => '棚移動',
			'modes.shelf.hint' => '棚のバーコードを読み取り、続けて製品/購入品を読み取ります。',
			'modes.equipment.label' => '設備点検',
			'modes.equipment.hint' => '設備のバーコードを読み取ります。',
			'input.topTitle' => 'バーコードの読込',
			'input.topHint' => 'バーコードリーダーで読み取るか、文字を入力して Enter を押します。種類は自動で判定します(上の種類を選ぶと、その種類だけを受け付けます)。',
			'input.label' => 'バーコード / 入力',
			'input.commit' => '決定',
			'input.camera' => 'カメラで読み取る',
			'input.cameraClose' => 'カメラを閉じる',
			'input.cameraError' => 'カメラを使えません。権限を確認するか、リーダー・手入力を使ってください。',
			'input.cancel' => '取り消し',
			'input.qtyLabel' => '数量',
			'input.startQuestion' => 'この作業を開始しますか(材料を棚から出庫します)。',
			'input.answerYes' => 'はい',
			'input.answerNo' => 'いいえ',
			'input.pass' => '合格',
			'input.fail' => '不合格',
			'input.evalQuestion' => '評価を選んでください。',
			'input.ngReason' => '不合格の理由',
			'input.ngConfirm' => '不合格として進める',
			'input.issueShelfHint' => ({required Object item}) => '「${item}」の材料を取り出す棚を読み取ると、出庫して作業を開始します。',
			'input.putShelfHint' => ({required Object judge, required Object qty, required Object unit}) => '${judge}品${qty}${unit}を入れる棚を読み取ると、入庫処理をします。',
			'input.stockItemHint' => ({required Object shelf}) => '「${shelf}」へ入れる製品/購入品を読み取ります。',
			'input.qtyHint' => ({required Object remain, required Object unit}) => '残り ${remain}${unit}(1以上の整数)',
			'input.inspectionSave' => '点検結果を記録',
			'input.inspectionResults.pass' => '合格',
			'input.inspectionResults.fail' => '不合格',
			'input.inspectionResults.recheck' => '要再点検',
			'input.judgePass' => '合格',
			'input.judgeFail' => '不合格',
			'ngReasons.dimension' => '寸法不良',
			'ngReasons.appearance' => '外観不良',
			'ngReasons.material' => '材料不良',
			'ngReasons.shortage' => '数量不足',
			'ngReasons.other' => 'その他',
			'notice.empty' => 'バーコードを読み取るか、文字を入力してください。',
			'notice.unknown' => ({required Object value}) => '「${value}」は登録されていないバーコードです。もう一度読み取ってください。',
			'notice.wrongKind' => ({required Object mode, required Object expected, required Object actual}) => '「${mode}」では${expected}のバーコードを読み取ります。読み取ったのは${actual}です。',
			'notice.needShelfFirst' => '製品/購入品は、先に棚のバーコードを読み取ってください(棚移動)。',
			'notice.expectShelf' => ({required Object actual}) => '${actual}のバーコードです。棚のバーコードを読み取ってください。',
			'notice.expectItem' => ({required Object actual}) => '${actual}のバーコードです。製品/購入品のバーコードを読み取ってください。',
			'notice.qtyInvalid' => '数量は1以上の整数で入力してください。',
			'notice.qtyOverWork' => ({required Object remain, required Object unit}) => '指示数量の残りは${remain}${unit}です。それ以下の数量を入力してください。',
			'notice.qtyOverPurchase' => ({required Object remain, required Object unit}) => '発注数量の残りは${remain}${unit}です。それ以下の数量を入力してください。',
			'notice.workDone' => 'この作業指示は、指示数量まで完了しています。次のバーコードを読み取ってください。',
			'notice.purchaseDone' => 'この購入品は、発注数量まで受け入れ済みです。次のバーコードを読み取ってください。',
			'notice.canceled' => '取り消しました。最初から読み取ってください。',
			'notice.notStarted' => '開始しませんでした。次のバーコードを読み取ってください。',
			'notice.started' => ({required Object shelf}) => '${shelf}から出庫し、作業を開始しました。次のバーコードを読み取ってください。',
			'notice.stored' => ({required Object shelf}) => '${shelf}へ入庫しました。次のバーコードを読み取ってください。',
			'notice.inspected' => '点検結果を記録しました。次のバーコードを読み取ってください。',
			'notice.failed' => '登録できませんでした。通信の状態を確認して、もう一度お試しください。',
			'log.title' => '履歴',
			'log.empty' => 'まだ履歴はありません。',
			'log.unknown' => ({required Object value}) => '読み取れないバーコード: ${value}',
			'log.workDone' => ({required Object sym, required Object item, required Object task}) => '${sym} ${item}／${task}: 指示数量が完了しています',
			'log.purchaseDone' => ({required Object sym, required Object item}) => '${sym} ${item}: 受入が完了しています',
			'log.canceled' => '取り消しました',
			'log.notStarted' => ({required Object sym}) => '${sym}: 開始しませんでした',
			'log.started' => ({required Object sym, required Object item, required Object task, required Object shelf}) => '${sym} ${item}／${task}: ${shelf}から材料を出庫し、作業を開始',
			'log.storedWork' => ({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}／${task}: ${qty}${unit}を${judge}として${shelf}へ入庫',
			'log.storedWorkDone' => ({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}／${task}: ${qty}${unit}を${judge}として${shelf}へ入庫(指示数量が完了)',
			'log.storedPurchase' => ({required Object sym, required Object item, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}: ${qty}${unit}を受入検品(${judge})、${shelf}へ入庫',
			'log.storedItem' => ({required Object shelf, required Object item, required Object qty, required Object unit}) => '${shelf}: ${item} ${qty}${unit}を入庫',
			'log.inspected' => ({required Object code, required Object name, required Object count}) => '設備点検 ${code} ${name}: ${count}項目を記録(すべて合格)',
			'log.inspectedWithIssue' => ({required Object code, required Object name, required Object count, required Object issues}) => '設備点検 ${code} ${name}: ${count}項目を記録(要確認 ${issues}件)',
			'log.failed' => ({required Object sym}) => '登録に失敗: ${sym}',
			_ => null,
		};
	}
}
