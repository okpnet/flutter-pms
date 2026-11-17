///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class AccessControlStringsEn extends AccessControlStrings with BaseTranslations<AccessControlLocale, AccessControlStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AccessControlLocale.build] is preferred.
	AccessControlStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AccessControlLocale, AccessControlStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AccessControlLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AccessControlLocale, AccessControlStrings> _meta;
	@override TranslationMetadata<AccessControlLocale, AccessControlStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final AccessControlStringsEn _root = this; // ignore: unused_field

	@override 
	AccessControlStringsEn $copyWith({TranslationMetadata<AccessControlLocale, AccessControlStrings>? meta}) => AccessControlStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _AccessControlStrings$menu$en menu = _AccessControlStrings$menu$en._(_root);
	@override late final _AccessControlStrings$entity$en entity = _AccessControlStrings$entity$en._(_root);
}

// Path: menu
class _AccessControlStrings$menu$en extends AccessControlStrings$menu$ja {
	_AccessControlStrings$menu$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Access control';
}

// Path: entity
class _AccessControlStrings$entity$en extends AccessControlStrings$entity$ja {
	_AccessControlStrings$entity$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _AccessControlStrings$entity$accesspath$en accesspath = _AccessControlStrings$entity$accesspath$en._(_root);
	@override late final _AccessControlStrings$entity$deptaccesspath$en deptaccesspath = _AccessControlStrings$entity$deptaccesspath$en._(_root);
	@override late final _AccessControlStrings$entity$staffaccesspermission$en staffaccesspermission = _AccessControlStrings$entity$staffaccesspermission$en._(_root);
	@override late final _AccessControlStrings$entity$effectiveaccesspath$en effectiveaccesspath = _AccessControlStrings$entity$effectiveaccesspath$en._(_root);
}

// Path: entity.accesspath
class _AccessControlStrings$entity$accesspath$en extends AccessControlStrings$entity$accesspath$ja {
	_AccessControlStrings$entity$accesspath$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Access paths';
	@override late final _AccessControlStrings$entity$accesspath$fields$en fields = _AccessControlStrings$entity$accesspath$fields$en._(_root);
}

// Path: entity.deptaccesspath
class _AccessControlStrings$entity$deptaccesspath$en extends AccessControlStrings$entity$deptaccesspath$ja {
	_AccessControlStrings$entity$deptaccesspath$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Department access paths';
	@override late final _AccessControlStrings$entity$deptaccesspath$fields$en fields = _AccessControlStrings$entity$deptaccesspath$fields$en._(_root);
}

// Path: entity.staffaccesspermission
class _AccessControlStrings$entity$staffaccesspermission$en extends AccessControlStrings$entity$staffaccesspermission$ja {
	_AccessControlStrings$entity$staffaccesspermission$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Staff access permissions';
	@override late final _AccessControlStrings$entity$staffaccesspermission$fields$en fields = _AccessControlStrings$entity$staffaccesspermission$fields$en._(_root);
}

// Path: entity.effectiveaccesspath
class _AccessControlStrings$entity$effectiveaccesspath$en extends AccessControlStrings$entity$effectiveaccesspath$ja {
	_AccessControlStrings$entity$effectiveaccesspath$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effective access paths of staff';
	@override late final _AccessControlStrings$entity$effectiveaccesspath$fields$en fields = _AccessControlStrings$entity$effectiveaccesspath$fields$en._(_root);
}

// Path: entity.accesspath.fields
class _AccessControlStrings$entity$accesspath$fields$en extends AccessControlStrings$entity$accesspath$fields$ja {
	_AccessControlStrings$entity$accesspath$fields$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name_ja => 'Page name (Japanese)';
	@override String get f_name_en => 'Page name (English)';
	@override String get f_usecase_path => 'Page path';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.deptaccesspath.fields
class _AccessControlStrings$entity$deptaccesspath$fields$en extends AccessControlStrings$entity$deptaccesspath$fields$ja {
	_AccessControlStrings$entity$deptaccesspath$fields$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_department => 'Department';
	@override String get f_access_path => 'Access path';
	@override String get f_write => 'Write';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.staffaccesspermission.fields
class _AccessControlStrings$entity$staffaccesspermission$fields$en extends AccessControlStrings$entity$staffaccesspermission$fields$ja {
	_AccessControlStrings$entity$staffaccesspermission$fields$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_staff => 'Staff';
	@override String get f_access_path => 'Access path';
	@override String get f_write => 'Write';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.effectiveaccesspath.fields
class _AccessControlStrings$entity$effectiveaccesspath$fields$en extends AccessControlStrings$entity$effectiveaccesspath$fields$ja {
	_AccessControlStrings$entity$effectiveaccesspath$fields$en._(AccessControlStringsEn root) : this._root = root, super.internal(root);

	final AccessControlStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_staff => 'Staff';
	@override String get f_access_path => 'Access path';
	@override String get f_can_write => 'Can write';
	@override String get f_from_department => 'Inherited from department';
	@override String get f_from_staff => 'Personal permission';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AccessControlStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Access control',
			'entity.accesspath.title' => 'Access paths',
			'entity.accesspath.fields.f_name_ja' => 'Page name (Japanese)',
			'entity.accesspath.fields.f_name_en' => 'Page name (English)',
			'entity.accesspath.fields.f_usecase_path' => 'Page path',
			'entity.accesspath.fields.f_remarks' => 'Remarks',
			'entity.deptaccesspath.title' => 'Department access paths',
			'entity.deptaccesspath.fields.f_department' => 'Department',
			'entity.deptaccesspath.fields.f_access_path' => 'Access path',
			'entity.deptaccesspath.fields.f_write' => 'Write',
			'entity.deptaccesspath.fields.f_remarks' => 'Remarks',
			'entity.staffaccesspermission.title' => 'Staff access permissions',
			'entity.staffaccesspermission.fields.f_staff' => 'Staff',
			'entity.staffaccesspermission.fields.f_access_path' => 'Access path',
			'entity.staffaccesspermission.fields.f_write' => 'Write',
			'entity.staffaccesspermission.fields.f_remarks' => 'Remarks',
			'entity.effectiveaccesspath.title' => 'Effective access paths of staff',
			'entity.effectiveaccesspath.fields.f_staff' => 'Staff',
			'entity.effectiveaccesspath.fields.f_access_path' => 'Access path',
			'entity.effectiveaccesspath.fields.f_can_write' => 'Can write',
			'entity.effectiveaccesspath.fields.f_from_department' => 'Inherited from department',
			'entity.effectiveaccesspath.fields.f_from_staff' => 'Personal permission',
			_ => null,
		};
	}
}
