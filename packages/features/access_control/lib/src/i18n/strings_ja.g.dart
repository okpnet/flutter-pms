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
	late final AccessControlStrings$menu$ja menu = AccessControlStrings$menu$ja.internal(_root);
	late final AccessControlStrings$entity$ja entity = AccessControlStrings$entity$ja.internal(_root);
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

	/// ja: 'シンボル'
	String get f_symbol => 'シンボル';

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
			'menu.group' => 'アクセス管理',
			'entity.accesspath.title' => 'アクセスパス',
			'entity.accesspath.fields.f_name_ja' => 'ページ名（日本語）',
			'entity.accesspath.fields.f_name_en' => 'ページ名（英語）',
			'entity.accesspath.fields.f_usecase_path' => 'ページのパス',
			'entity.accesspath.fields.f_symbol' => 'シンボル',
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
