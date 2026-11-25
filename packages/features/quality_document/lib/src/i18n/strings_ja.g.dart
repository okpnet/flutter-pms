///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef QualityDocumentStringsJa = QualityDocumentStrings; // ignore: unused_element
class QualityDocumentStrings with BaseTranslations<QualityDocumentLocale, QualityDocumentStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityDocumentLocale.build] is preferred.
	QualityDocumentStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityDocumentLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings> _meta;
	@override TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final QualityDocumentStrings _root = this; // ignore: unused_field

	QualityDocumentStrings $copyWith({TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings>? meta}) => QualityDocumentStrings(meta: meta ?? this.$meta);

	// Translations
	late final QualityDocumentStrings$body$ja body = QualityDocumentStrings$body$ja.internal(_root);
	late final QualityDocumentStrings$menu$ja menu = QualityDocumentStrings$menu$ja.internal(_root);
	late final QualityDocumentStrings$entity$ja entity = QualityDocumentStrings$entity$ja.internal(_root);
}

// Path: body
class QualityDocumentStrings$body$ja {
	QualityDocumentStrings$body$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '本文'
	String get title => '本文';

	/// ja: '本文を編集'
	String get action => '本文を編集';

	/// ja: '読み込み中…'
	String get loading => '読み込み中…';

	/// ja: '文書コンテンツが見つかりません。'
	String get notFound => '文書コンテンツが見つかりません。';

	/// ja: 'まだ本文がありません。'
	String get noBody => 'まだ本文がありません。';

	/// ja: '閲覧のみ'
	String get readOnly => '閲覧のみ';

	/// ja: 'PDF'
	String get pdf => 'PDF';

	/// ja: 'PDF を保存しました。'
	String get pdfSaved => 'PDF を保存しました。';

	/// ja: '保存を取り消しました。'
	String get pdfCanceled => '保存を取り消しました。';

	/// ja: 'PDF を作成できませんでした。'
	String get pdfFailed => 'PDF を作成できませんでした。';

	/// ja: 'この文書は承認待ちです。'
	String get pendingNote => 'この文書は承認待ちです。';

	/// ja: 'この文書は承認待ちのため、読めません。'
	String get unreadable => 'この文書は承認待ちのため、読めません。';

	/// ja: '編集'
	String get edit => '編集';

	/// ja: '保存'
	String get save => '保存';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '変更はありません。'
	String get nothingChanged => '変更はありません。';

	/// ja: '変更を破棄しますか'
	String get discardTitle => '変更を破棄しますか';

	/// ja: '保存していない変更があります。'
	String get discardMessage => '保存していない変更があります。';

	/// ja: '破棄する'
	String get discard => '破棄する';

	/// ja: '編集を続ける'
	String get keepEditing => '編集を続ける';

	/// ja: '保存できませんでした。'
	String get saveFailed => '保存できませんでした。';

	/// ja: 'ビジュアル'
	String get modeVisual => 'ビジュアル';

	/// ja: 'Markdown'
	String get modeMarkdown => 'Markdown';

	/// ja: 'プレビュー'
	String get preview => 'プレビュー';
}

// Path: menu
class QualityDocumentStrings$menu$ja {
	QualityDocumentStrings$menu$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '品質管理文書'
	String get group => '品質管理文書';
}

// Path: entity
class QualityDocumentStrings$entity$ja {
	QualityDocumentStrings$entity$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations
	late final QualityDocumentStrings$entity$doctier$ja doctier = QualityDocumentStrings$entity$doctier$ja.internal(_root);
	late final QualityDocumentStrings$entity$doc$ja doc = QualityDocumentStrings$entity$doc$ja.internal(_root);
	late final QualityDocumentStrings$entity$doccontent$ja doccontent = QualityDocumentStrings$entity$doccontent$ja.internal(_root);
	late final QualityDocumentStrings$entity$report$ja report = QualityDocumentStrings$entity$report$ja.internal(_root);
}

// Path: entity.doctier
class QualityDocumentStrings$entity$doctier$ja {
	QualityDocumentStrings$entity$doctier$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書レベル'
	String get title => '文書レベル';

	late final QualityDocumentStrings$entity$doctier$fields$ja fields = QualityDocumentStrings$entity$doctier$fields$ja.internal(_root);
}

// Path: entity.doc
class QualityDocumentStrings$entity$doc$ja {
	QualityDocumentStrings$entity$doc$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書'
	String get title => '文書';

	late final QualityDocumentStrings$entity$doc$fields$ja fields = QualityDocumentStrings$entity$doc$fields$ja.internal(_root);
}

// Path: entity.doccontent
class QualityDocumentStrings$entity$doccontent$ja {
	QualityDocumentStrings$entity$doccontent$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書コンテンツ'
	String get title => '文書コンテンツ';

	late final QualityDocumentStrings$entity$doccontent$fields$ja fields = QualityDocumentStrings$entity$doccontent$fields$ja.internal(_root);
}

// Path: entity.report
class QualityDocumentStrings$entity$report$ja {
	QualityDocumentStrings$entity$report$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'レポート'
	String get title => 'レポート';

	late final QualityDocumentStrings$entity$report$fields$ja fields = QualityDocumentStrings$entity$report$fields$ja.internal(_root);
}

// Path: entity.doctier.fields
class QualityDocumentStrings$entity$doctier$fields$ja {
	QualityDocumentStrings$entity$doctier$fields$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: '管理番号識別子'
	String get f_identifier => '管理番号識別子';

	/// ja: '名前'
	String get f_name => '名前';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '限定名詞'
	String get f_attributive_noun => '限定名詞';

	/// ja: '階層番号'
	String get f_tier_number => '階層番号';

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.doc.fields
class QualityDocumentStrings$entity$doc$fields$ja {
	QualityDocumentStrings$entity$doc$fields$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: '管理番号'
	String get f_control_number => '管理番号';

	/// ja: '版コード'
	String get f_version_code => '版コード';

	/// ja: '文書名'
	String get f_name => '文書名';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '文書レベル'
	String get f_mstr_document_tier_id => '文書レベル';

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.doccontent.fields
class QualityDocumentStrings$entity$doccontent$fields$ja {
	QualityDocumentStrings$entity$doccontent$fields$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: '文書'
	String get f_doc => '文書';

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: '文書コンテンツ名'
	String get f_name => '文書コンテンツ名';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '詳細'
	String get f_detail => '詳細';

	/// ja: 'シーケンス'
	String get f_sequence => 'シーケンス';

	/// ja: 'イメージコンテンツ'
	String get f_image_content => 'イメージコンテンツ';

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.report.fields
class QualityDocumentStrings$entity$report$fields$ja {
	QualityDocumentStrings$entity$report$fields$ja.internal(this._root);

	final QualityDocumentStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'コード'
	String get f_code => 'コード';

	/// ja: '名前'
	String get f_name => '名前';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: 'デフォルト'
	String get f_is_default => 'デフォルト';

	/// ja: 'ファイル'
	String get f_file => 'ファイル';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityDocumentStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'body.title' => '本文',
			'body.action' => '本文を編集',
			'body.loading' => '読み込み中…',
			'body.notFound' => '文書コンテンツが見つかりません。',
			'body.noBody' => 'まだ本文がありません。',
			'body.readOnly' => '閲覧のみ',
			'body.pdf' => 'PDF',
			'body.pdfSaved' => 'PDF を保存しました。',
			'body.pdfCanceled' => '保存を取り消しました。',
			'body.pdfFailed' => 'PDF を作成できませんでした。',
			'body.pendingNote' => 'この文書は承認待ちです。',
			'body.unreadable' => 'この文書は承認待ちのため、読めません。',
			'body.edit' => '編集',
			'body.save' => '保存',
			'body.cancel' => 'キャンセル',
			'body.saved' => '保存しました。',
			'body.nothingChanged' => '変更はありません。',
			'body.discardTitle' => '変更を破棄しますか',
			'body.discardMessage' => '保存していない変更があります。',
			'body.discard' => '破棄する',
			'body.keepEditing' => '編集を続ける',
			'body.saveFailed' => '保存できませんでした。',
			'body.modeVisual' => 'ビジュアル',
			'body.modeMarkdown' => 'Markdown',
			'body.preview' => 'プレビュー',
			'menu.group' => '品質管理文書',
			'entity.doctier.title' => '文書レベル',
			'entity.doctier.fields.f_code' => 'コード',
			'entity.doctier.fields.f_identifier' => '管理番号識別子',
			'entity.doctier.fields.f_name' => '名前',
			'entity.doctier.fields.f_pronunciation' => '読み',
			'entity.doctier.fields.f_nickname' => '略称',
			'entity.doctier.fields.f_attributive_noun' => '限定名詞',
			'entity.doctier.fields.f_tier_number' => '階層番号',
			'entity.doctier.fields.f_file' => 'ファイル',
			'entity.doctier.fields.f_remarks' => '備考',
			'entity.doc.title' => '文書',
			'entity.doc.fields.f_code' => 'コード',
			'entity.doc.fields.f_control_number' => '管理番号',
			'entity.doc.fields.f_version_code' => '版コード',
			'entity.doc.fields.f_name' => '文書名',
			'entity.doc.fields.f_pronunciation' => '読み',
			'entity.doc.fields.f_nickname' => '略称',
			'entity.doc.fields.f_mstr_document_tier_id' => '文書レベル',
			'entity.doc.fields.f_file' => 'ファイル',
			'entity.doc.fields.f_remarks' => '備考',
			'entity.doccontent.title' => '文書コンテンツ',
			'entity.doccontent.fields.f_doc' => '文書',
			'entity.doccontent.fields.f_code' => 'コード',
			'entity.doccontent.fields.f_name' => '文書コンテンツ名',
			'entity.doccontent.fields.f_pronunciation' => '読み',
			'entity.doccontent.fields.f_nickname' => '略称',
			'entity.doccontent.fields.f_detail' => '詳細',
			'entity.doccontent.fields.f_sequence' => 'シーケンス',
			'entity.doccontent.fields.f_image_content' => 'イメージコンテンツ',
			'entity.doccontent.fields.f_file' => 'ファイル',
			'entity.doccontent.fields.f_remarks' => '備考',
			'entity.report.title' => 'レポート',
			'entity.report.fields.f_code' => 'コード',
			'entity.report.fields.f_name' => '名前',
			'entity.report.fields.f_pronunciation' => '読み',
			'entity.report.fields.f_nickname' => '略称',
			'entity.report.fields.f_is_default' => 'デフォルト',
			'entity.report.fields.f_file' => 'ファイル',
			'entity.report.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
