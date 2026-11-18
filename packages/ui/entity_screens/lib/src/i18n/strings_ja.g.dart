///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef EntityScreenStringsJa = EntityScreenStrings; // ignore: unused_element
class EntityScreenStrings with BaseTranslations<EntityScreenLocale, EntityScreenStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [EntityScreenLocale.build] is preferred.
	EntityScreenStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: EntityScreenLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<EntityScreenLocale, EntityScreenStrings> _meta;
	@override TranslationMetadata<EntityScreenLocale, EntityScreenStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final EntityScreenStrings _root = this; // ignore: unused_field

	EntityScreenStrings $copyWith({TranslationMetadata<EntityScreenLocale, EntityScreenStrings>? meta}) => EntityScreenStrings(meta: meta ?? this.$meta);

	// Translations

	/// ja: '新規'
	String get create => '新規';

	/// ja: '編集'
	String get editMode => '編集';

	/// ja: '編集を終える'
	String get editDone => '編集を終える';

	/// ja: '行をダブルクリック(長押し)すると、編集できます。'
	String get editHint => '行をダブルクリック(長押し)すると、編集できます。';

	/// ja: '${name}の編集'
	String editTitle({required Object name}) => '${name}の編集';

	/// ja: '${name}の登録'
	String newTitle({required Object name}) => '${name}の登録';

	/// ja: '配下'
	String get belowLabel => '配下';

	/// ja: '配下 ${count}'
	String belowCount({required Object count}) => '配下 ${count}';

	/// ja: '必須'
	String get requiredMark => '必須';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '${date} 時点'
	String asOf({required Object date}) => '${date} 時点';

	/// ja: '${name}を検索'
	String searchTitle({required Object name}) => '${name}を検索';

	/// ja: '検索'
	String get searchHint => '検索';

	/// ja: 'すべて'
	String get chipAll => 'すべて';

	/// ja: '${name}の一覧'
	String listTitle({required Object name}) => '${name}の一覧';

	/// ja: '全${total}件のうち${shown}件を表示。'
	String listCount({required Object total, required Object shown}) => '全${total}件のうち${shown}件を表示。';

	/// ja: '操作'
	String get actionMenu => '操作';

	/// ja: '選択中の行'
	String get actionSelected => '選択中の行';

	/// ja: '行を選ぶと、その行に使える操作を選べます。'
	String get actionHint => '行を選ぶと、その行に使える操作を選べます。';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '追加'
	String get add => '追加';

	/// ja: '親'
	String get parent => '親';

	/// ja: '最上位(親なし)'
	String get noParent => '最上位(親なし)';

	/// ja: '未選択'
	String get unselected => '未選択';

	late final EntityScreenStrings$file$ja file = EntityScreenStrings$file$ja.internal(_root);

	/// ja: '選択'
	String get pick => '選択';

	/// ja: '${name}の選択'
	String pickTitle({required Object name}) => '${name}の選択';

	/// ja: '解除'
	String get clear => '解除';

	/// ja: 'データが見つかりません'
	String get notFound => 'データが見つかりません';

	/// ja: '読み込めません'
	String get loadFailed => '読み込めません';

	/// ja: '保存に失敗しました'
	String get saveFailed => '保存に失敗しました';

	/// ja: '削除に失敗しました'
	String get deleteFailed => '削除に失敗しました';

	/// ja: 'データがありません'
	String get noData => 'データがありません';

	/// ja: '件'
	String get children => '件';

	late final EntityScreenStrings$confirmDelete$ja confirmDelete = EntityScreenStrings$confirmDelete$ja.internal(_root);
	late final EntityScreenStrings$confirmSave$ja confirmSave = EntityScreenStrings$confirmSave$ja.internal(_root);
	late final EntityScreenStrings$failure$ja failure = EntityScreenStrings$failure$ja.internal(_root);
	late final EntityScreenStrings$condition$ja condition = EntityScreenStrings$condition$ja.internal(_root);

	/// ja: 'はい'
	String get yes => 'はい';

	/// ja: 'いいえ'
	String get no => 'いいえ';

	late final EntityScreenStrings$nested$ja nested = EntityScreenStrings$nested$ja.internal(_root);
	late final EntityScreenStrings$validation$ja validation = EntityScreenStrings$validation$ja.internal(_root);
}

// Path: file
class EntityScreenStrings$file$ja {
	EntityScreenStrings$file$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アップロード'
	String get upload => 'アップロード';

	/// ja: '差し替え'
	String get replace => '差し替え';

	/// ja: 'ファイルなし'
	String get none => 'ファイルなし';

	/// ja: 'アップロードに失敗しました'
	String get uploadFailed => 'アップロードに失敗しました';

	/// ja: 'ダウンロードに失敗しました'
	String get downloadFailed => 'ダウンロードに失敗しました';

	/// ja: '保存しました'
	String get downloaded => '保存しました';
}

// Path: confirmDelete
class EntityScreenStrings$confirmDelete$ja {
	EntityScreenStrings$confirmDelete$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '削除の確認'
	String get title => '削除の確認';

	/// ja: '「$name」を削除します。'
	String message({required Object name}) => '「${name}」を削除します。';
}

// Path: confirmSave
class EntityScreenStrings$confirmSave$ja {
	EntityScreenStrings$confirmSave$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '実行の確認'
	String get title => '実行の確認';

	/// ja: 'この操作は取り消せません(追記だけの記録になります)。実行しますか。'
	String get message => 'この操作は取り消せません(追記だけの記録になります)。実行しますか。';

	/// ja: '実行'
	String get ok => '実行';

	/// ja: '実行しました'
	String get done => '実行しました';
}

// Path: failure
class EntityScreenStrings$failure$ja {
	EntityScreenStrings$failure$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '対象が見つかりません(すでに処理された可能性があります)'
	String get notFound => '対象が見つかりません(すでに処理された可能性があります)';

	/// ja: '今の状態では実行できません'
	String get notAllowed => '今の状態では実行できません';

	/// ja: '入力が正しくありません'
	String get invalidInput => '入力が正しくありません';

	/// ja: '棚に場所が設定されていないため実行できません'
	String get noLocation => '棚に場所が設定されていないため実行できません';

	/// ja: 'サーバーに接続できません'
	String get unavailable => 'サーバーに接続できません';
}

// Path: condition
class EntityScreenStrings$condition$ja {
	EntityScreenStrings$condition$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '範囲'
	String get between => '範囲';

	/// ja: '二値(Yes / No)'
	String get yesNo => '二値(Yes / No)';

	/// ja: '値を入力'
	String get value => '値を入力';

	/// ja: '下限'
	String get lower => '下限';

	/// ja: '上限'
	String get upper => '上限';

	/// ja: 'Yes'
	String get yes => 'Yes';

	/// ja: 'No'
	String get no => 'No';
}

// Path: nested
class EntityScreenStrings$nested$ja {
	EntityScreenStrings$nested$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '編集モード'
	String get edit => '編集モード';

	/// ja: '閲覧に戻る'
	String get done => '閲覧に戻る';

	/// ja: '検索'
	String get search => '検索';

	/// ja: '並べ替え'
	String get sort => '並べ替え';

	/// ja: '並べ替えなし'
	String get noSort => '並べ替えなし';

	/// ja: '追加'
	String get add => '追加';

	/// ja: '数'
	String get countSuffix => '数';
}

// Path: validation
class EntityScreenStrings$validation$ja {
	EntityScreenStrings$validation$ja.internal(this._root);

	final EntityScreenStrings _root; // ignore: unused_field

	// Translations

	/// ja: '必須です'
	String get required => '必須です';

	/// ja: '数値で入力してください'
	String get invalidNumber => '数値で入力してください';

	/// ja: '日付を yyyy-MM-dd で入力してください'
	String get invalidDate => '日付を yyyy-MM-dd で入力してください';

	/// ja: '選択肢にない値です'
	String get invalidChoice => '選択肢にない値です';

	/// ja: '$min 以上で入力してください'
	String belowMinimum({required Object min}) => '${min} 以上で入力してください';

	/// ja: '$min より大きい値を入力してください'
	String notAboveMinimum({required Object min}) => '${min} より大きい値を入力してください';

	/// ja: '$max 以下で入力してください'
	String aboveMaximum({required Object max}) => '${max} 以下で入力してください';

	/// ja: '$max より小さい値を入力してください'
	String notBelowMaximum({required Object max}) => '${max} より小さい値を入力してください';

	/// ja: '$other 以降の日付を入力してください'
	String beforeOtherDate({required Object other}) => '${other} 以降の日付を入力してください';

	/// ja: 'どちらか一方だけを選んでください'
	String get bothSelected => 'どちらか一方だけを選んでください';

	/// ja: '$child がある間は外せません'
	String lockedByChildren({required Object child}) => '${child} がある間は外せません';

	/// ja: '演算子と値を入力してください'
	String get invalidCondition => '演算子と値を入力してください';

	/// ja: '自分または配下は親にできません'
	String get parentCycle => '自分または配下は親にできません';

	/// ja: '配下があるため削除できません'
	String get hasChildren => '配下があるため削除できません';

	/// ja: '他で使用中のため削除できません'
	String get referenced => '他で使用中のため削除できません';

	/// ja: '重複しています'
	String get duplicate => '重複しています';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on EntityScreenStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'create' => '新規',
			'editMode' => '編集',
			'editDone' => '編集を終える',
			'editHint' => '行をダブルクリック(長押し)すると、編集できます。',
			'editTitle' => ({required Object name}) => '${name}の編集',
			'newTitle' => ({required Object name}) => '${name}の登録',
			'belowLabel' => '配下',
			'belowCount' => ({required Object count}) => '配下 ${count}',
			'requiredMark' => '必須',
			'back' => '戻る',
			'asOf' => ({required Object date}) => '${date} 時点',
			'searchTitle' => ({required Object name}) => '${name}を検索',
			'searchHint' => '検索',
			'chipAll' => 'すべて',
			'listTitle' => ({required Object name}) => '${name}の一覧',
			'listCount' => ({required Object total, required Object shown}) => '全${total}件のうち${shown}件を表示。',
			'actionMenu' => '操作',
			'actionSelected' => '選択中の行',
			'actionHint' => '行を選ぶと、その行に使える操作を選べます。',
			'save' => '保存',
			'delete' => '削除',
			'cancel' => 'キャンセル',
			'add' => '追加',
			'parent' => '親',
			'noParent' => '最上位(親なし)',
			'unselected' => '未選択',
			'file.upload' => 'アップロード',
			'file.replace' => '差し替え',
			'file.none' => 'ファイルなし',
			'file.uploadFailed' => 'アップロードに失敗しました',
			'file.downloadFailed' => 'ダウンロードに失敗しました',
			'file.downloaded' => '保存しました',
			'pick' => '選択',
			'pickTitle' => ({required Object name}) => '${name}の選択',
			'clear' => '解除',
			'notFound' => 'データが見つかりません',
			'loadFailed' => '読み込めません',
			'saveFailed' => '保存に失敗しました',
			'deleteFailed' => '削除に失敗しました',
			'noData' => 'データがありません',
			'children' => '件',
			'confirmDelete.title' => '削除の確認',
			'confirmDelete.message' => ({required Object name}) => '「${name}」を削除します。',
			'confirmSave.title' => '実行の確認',
			'confirmSave.message' => 'この操作は取り消せません(追記だけの記録になります)。実行しますか。',
			'confirmSave.ok' => '実行',
			'confirmSave.done' => '実行しました',
			'failure.notFound' => '対象が見つかりません(すでに処理された可能性があります)',
			'failure.notAllowed' => '今の状態では実行できません',
			'failure.invalidInput' => '入力が正しくありません',
			'failure.noLocation' => '棚に場所が設定されていないため実行できません',
			'failure.unavailable' => 'サーバーに接続できません',
			'condition.between' => '範囲',
			'condition.yesNo' => '二値(Yes / No)',
			'condition.value' => '値を入力',
			'condition.lower' => '下限',
			'condition.upper' => '上限',
			'condition.yes' => 'Yes',
			'condition.no' => 'No',
			'yes' => 'はい',
			'no' => 'いいえ',
			'nested.edit' => '編集モード',
			'nested.done' => '閲覧に戻る',
			'nested.search' => '検索',
			'nested.sort' => '並べ替え',
			'nested.noSort' => '並べ替えなし',
			'nested.add' => '追加',
			'nested.countSuffix' => '数',
			'validation.required' => '必須です',
			'validation.invalidNumber' => '数値で入力してください',
			'validation.invalidDate' => '日付を yyyy-MM-dd で入力してください',
			'validation.invalidChoice' => '選択肢にない値です',
			'validation.belowMinimum' => ({required Object min}) => '${min} 以上で入力してください',
			'validation.notAboveMinimum' => ({required Object min}) => '${min} より大きい値を入力してください',
			'validation.aboveMaximum' => ({required Object max}) => '${max} 以下で入力してください',
			'validation.notBelowMaximum' => ({required Object max}) => '${max} より小さい値を入力してください',
			'validation.beforeOtherDate' => ({required Object other}) => '${other} 以降の日付を入力してください',
			'validation.bothSelected' => 'どちらか一方だけを選んでください',
			'validation.lockedByChildren' => ({required Object child}) => '${child} がある間は外せません',
			'validation.invalidCondition' => '演算子と値を入力してください',
			'validation.parentCycle' => '自分または配下は親にできません',
			'validation.hasChildren' => '配下があるため削除できません',
			'validation.referenced' => '他で使用中のため削除できません',
			'validation.duplicate' => '重複しています',
			_ => null,
		};
	}
}
