///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef AccessControlStringsJa = AccessControlStrings; // ignore: unused_element
class AccessControlStrings with BaseTranslations<AccessControlLocale, AccessControlStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AccessControlLocale.build] is preferred.
	AccessControlStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AccessControlLocale, AccessControlStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AccessControlLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<AccessControlLocale, AccessControlStrings> _meta;
	@override TranslationMetadata<AccessControlLocale, AccessControlStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final AccessControlStrings _root = this; // ignore: unused_field

	AccessControlStrings $copyWith({TranslationMetadata<AccessControlLocale, AccessControlStrings>? meta}) => AccessControlStrings(meta: meta ?? this.$meta);

	// Translations
	late final AccessControlStrings$bulk$ja bulk = AccessControlStrings$bulk$ja.internal(_root);
	late final AccessControlStrings$menu$ja menu = AccessControlStrings$menu$ja.internal(_root);
	late final AccessControlStrings$entity$ja entity = AccessControlStrings$entity$ja.internal(_root);
}

// Path: bulk
class AccessControlStrings$bulk$ja {
	AccessControlStrings$bulk$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アクセス権設定'
	String get title => 'アクセス権設定';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '部署または担当者を選び、アクセスパスごとに「許可」と「書き込み」をチェックして、まとめて保存します。担当者の許可は、所属する部署の権限に足すためのものです(部署から受け継ぐ権限は、ここでは変わりません)。'
	String get hint => '部署または担当者を選び、アクセスパスごとに「許可」と「書き込み」をチェックして、まとめて保存します。担当者の許可は、所属する部署の権限に足すためのものです(部署から受け継ぐ権限は、ここでは変わりません)。';

	/// ja: '部署'
	String get scopeDepartment => '部署';

	/// ja: '担当者'
	String get scopeStaff => '担当者';

	/// ja: '実効'
	String get scopeEffective => '実効';

	/// ja: '担当者を選ぶと、部署から受け継ぐ分を含めた、実際に使える権限を表示します(ここでは変更できません。変えるときは「部署」または「担当者」で設定します)。'
	String get hintEffective => '担当者を選ぶと、部署から受け継ぐ分を含めた、実際に使える権限を表示します(ここでは変更できません。変えるときは「部署」または「担当者」で設定します)。';

	/// ja: '部署から'
	String get fromDepartment => '部署から';

	/// ja: '台帳'
	String get ledgers => '台帳';

	/// ja: 'アクセスパス'
	String get ledgerAccessPath => 'アクセスパス';

	/// ja: '部署のアクセスパス'
	String get ledgerDepartment => '部署のアクセスパス';

	/// ja: '担当者のアクセスパス'
	String get ledgerStaff => '担当者のアクセスパス';

	/// ja: '実効アクセスパス'
	String get ledgerEffective => '実効アクセスパス';

	/// ja: '部署を選ぶ'
	String get targetDepartment => '部署を選ぶ';

	/// ja: '担当者を選ぶ'
	String get targetStaff => '担当者を選ぶ';

	/// ja: '部署または担当者を選んでください。'
	String get pickTarget => '部署または担当者を選んでください。';

	/// ja: 'ページ名・パスで絞り込み'
	String get filter => 'ページ名・パスで絞り込み';

	/// ja: '表示中をすべて許可'
	String get allowAll => '表示中をすべて許可';

	/// ja: '表示中をすべて外す'
	String get denyAll => '表示中をすべて外す';

	/// ja: '許可'
	String get colAllow => '許可';

	/// ja: '書き込み'
	String get colWrite => '書き込み';

	/// ja: 'ページ'
	String get colPage => 'ページ';

	/// ja: '該当するアクセスパスがありません。'
	String get empty => '該当するアクセスパスがありません。';

	/// ja: '変更はありません。'
	String get noChanges => '変更はありません。';

	/// ja: '${n} 件の変更があります(色の付いた行)。'
	String changes({required Object n}) => '${n} 件の変更があります(色の付いた行)。';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '元に戻す'
	String get reset => '元に戻す';

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '保存できませんでした。一部だけ保存された可能性があるため、現在の状態を読み直しました。'
	String get saveFailed => '保存できませんでした。一部だけ保存された可能性があるため、現在の状態を読み直しました。';

	/// ja: '読み込めませんでした。'
	String get loadFailed => '読み込めませんでした。';
}

// Path: menu
class AccessControlStrings$menu$ja {
	AccessControlStrings$menu$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アクセス管理'
	String get group => 'アクセス管理';
}

// Path: entity
class AccessControlStrings$entity$ja {
	AccessControlStrings$entity$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations
	late final AccessControlStrings$entity$accesspath$ja accesspath = AccessControlStrings$entity$accesspath$ja.internal(_root);
	late final AccessControlStrings$entity$deptaccesspath$ja deptaccesspath = AccessControlStrings$entity$deptaccesspath$ja.internal(_root);
	late final AccessControlStrings$entity$staffaccesspermission$ja staffaccesspermission = AccessControlStrings$entity$staffaccesspermission$ja.internal(_root);
	late final AccessControlStrings$entity$effectiveaccesspath$ja effectiveaccesspath = AccessControlStrings$entity$effectiveaccesspath$ja.internal(_root);
}

// Path: entity.accesspath
class AccessControlStrings$entity$accesspath$ja {
	AccessControlStrings$entity$accesspath$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アクセスパス'
	String get title => 'アクセスパス';

	late final AccessControlStrings$entity$accesspath$fields$ja fields = AccessControlStrings$entity$accesspath$fields$ja.internal(_root);
}

// Path: entity.deptaccesspath
class AccessControlStrings$entity$deptaccesspath$ja {
	AccessControlStrings$entity$deptaccesspath$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署のアクセスパス'
	String get title => '部署のアクセスパス';

	late final AccessControlStrings$entity$deptaccesspath$fields$ja fields = AccessControlStrings$entity$deptaccesspath$fields$ja.internal(_root);
}

// Path: entity.staffaccesspermission
class AccessControlStrings$entity$staffaccesspermission$ja {
	AccessControlStrings$entity$staffaccesspermission$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者のアクセスパス許可'
	String get title => '担当者のアクセスパス許可';

	late final AccessControlStrings$entity$staffaccesspermission$fields$ja fields = AccessControlStrings$entity$staffaccesspermission$fields$ja.internal(_root);
}

// Path: entity.effectiveaccesspath
class AccessControlStrings$entity$effectiveaccesspath$ja {
	AccessControlStrings$entity$effectiveaccesspath$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者の実効アクセスパス'
	String get title => '担当者の実効アクセスパス';

	late final AccessControlStrings$entity$effectiveaccesspath$fields$ja fields = AccessControlStrings$entity$effectiveaccesspath$fields$ja.internal(_root);
}

// Path: entity.accesspath.fields
class AccessControlStrings$entity$accesspath$fields$ja {
	AccessControlStrings$entity$accesspath$fields$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'ページ名（日本語）'
	String get f_name_ja => 'ページ名（日本語）';

	/// ja: 'ページ名（英語）'
	String get f_name_en => 'ページ名（英語）';

	/// ja: 'ページのパス'
	String get f_usecase_path => 'ページのパス';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.deptaccesspath.fields
class AccessControlStrings$entity$deptaccesspath$fields$ja {
	AccessControlStrings$entity$deptaccesspath$fields$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署'
	String get f_department => '部署';

	/// ja: 'アクセスパス'
	String get f_access_path => 'アクセスパス';

	/// ja: '書き込み'
	String get f_write => '書き込み';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.staffaccesspermission.fields
class AccessControlStrings$entity$staffaccesspermission$fields$ja {
	AccessControlStrings$entity$staffaccesspermission$fields$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者'
	String get f_staff => '担当者';

	/// ja: 'アクセスパス'
	String get f_access_path => 'アクセスパス';

	/// ja: '書き込み'
	String get f_write => '書き込み';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.effectiveaccesspath.fields
class AccessControlStrings$entity$effectiveaccesspath$fields$ja {
	AccessControlStrings$entity$effectiveaccesspath$fields$ja.internal(this._root);

	final AccessControlStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者'
	String get f_staff => '担当者';

	/// ja: 'アクセスパス'
	String get f_access_path => 'アクセスパス';

	/// ja: '書き込み可'
	String get f_can_write => '書き込み可';

	/// ja: '部署から受け継ぐ'
	String get f_from_department => '部署から受け継ぐ';

	/// ja: '個人の許可'
	String get f_from_staff => '個人の許可';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AccessControlStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'bulk.title' => 'アクセス権設定',
			'bulk.back' => '戻る',
			'bulk.hint' => '部署または担当者を選び、アクセスパスごとに「許可」と「書き込み」をチェックして、まとめて保存します。担当者の許可は、所属する部署の権限に足すためのものです(部署から受け継ぐ権限は、ここでは変わりません)。',
			'bulk.scopeDepartment' => '部署',
			'bulk.scopeStaff' => '担当者',
			'bulk.scopeEffective' => '実効',
			'bulk.hintEffective' => '担当者を選ぶと、部署から受け継ぐ分を含めた、実際に使える権限を表示します(ここでは変更できません。変えるときは「部署」または「担当者」で設定します)。',
			'bulk.fromDepartment' => '部署から',
			'bulk.ledgers' => '台帳',
			'bulk.ledgerAccessPath' => 'アクセスパス',
			'bulk.ledgerDepartment' => '部署のアクセスパス',
			'bulk.ledgerStaff' => '担当者のアクセスパス',
			'bulk.ledgerEffective' => '実効アクセスパス',
			'bulk.targetDepartment' => '部署を選ぶ',
			'bulk.targetStaff' => '担当者を選ぶ',
			'bulk.pickTarget' => '部署または担当者を選んでください。',
			'bulk.filter' => 'ページ名・パスで絞り込み',
			'bulk.allowAll' => '表示中をすべて許可',
			'bulk.denyAll' => '表示中をすべて外す',
			'bulk.colAllow' => '許可',
			'bulk.colWrite' => '書き込み',
			'bulk.colPage' => 'ページ',
			'bulk.empty' => '該当するアクセスパスがありません。',
			'bulk.noChanges' => '変更はありません。',
			'bulk.changes' => ({required Object n}) => '${n} 件の変更があります(色の付いた行)。',
			'bulk.save' => '保存',
			'bulk.reset' => '元に戻す',
			'bulk.saved' => '保存しました。',
			'bulk.saveFailed' => '保存できませんでした。一部だけ保存された可能性があるため、現在の状態を読み直しました。',
			'bulk.loadFailed' => '読み込めませんでした。',
			'menu.group' => 'アクセス管理',
			'entity.accesspath.title' => 'アクセスパス',
			'entity.accesspath.fields.f_name_ja' => 'ページ名（日本語）',
			'entity.accesspath.fields.f_name_en' => 'ページ名（英語）',
			'entity.accesspath.fields.f_usecase_path' => 'ページのパス',
			'entity.accesspath.fields.f_remarks' => '備考',
			'entity.deptaccesspath.title' => '部署のアクセスパス',
			'entity.deptaccesspath.fields.f_department' => '部署',
			'entity.deptaccesspath.fields.f_access_path' => 'アクセスパス',
			'entity.deptaccesspath.fields.f_write' => '書き込み',
			'entity.deptaccesspath.fields.f_remarks' => '備考',
			'entity.staffaccesspermission.title' => '担当者のアクセスパス許可',
			'entity.staffaccesspermission.fields.f_staff' => '担当者',
			'entity.staffaccesspermission.fields.f_access_path' => 'アクセスパス',
			'entity.staffaccesspermission.fields.f_write' => '書き込み',
			'entity.staffaccesspermission.fields.f_remarks' => '備考',
			'entity.effectiveaccesspath.title' => '担当者の実効アクセスパス',
			'entity.effectiveaccesspath.fields.f_staff' => '担当者',
			'entity.effectiveaccesspath.fields.f_access_path' => 'アクセスパス',
			'entity.effectiveaccesspath.fields.f_can_write' => '書き込み可',
			'entity.effectiveaccesspath.fields.f_from_department' => '部署から受け継ぐ',
			'entity.effectiveaccesspath.fields.f_from_staff' => '個人の許可',
			_ => null,
		};
	}
}
