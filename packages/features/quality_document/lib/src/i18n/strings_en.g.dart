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
class QualityDocumentStringsEn extends QualityDocumentStrings with BaseTranslations<QualityDocumentLocale, QualityDocumentStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [QualityDocumentLocale.build] is preferred.
	QualityDocumentStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: QualityDocumentLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings> _meta;
	@override TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final QualityDocumentStringsEn _root = this; // ignore: unused_field

	@override 
	QualityDocumentStringsEn $copyWith({TranslationMetadata<QualityDocumentLocale, QualityDocumentStrings>? meta}) => QualityDocumentStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _QualityDocumentStrings$menu$en menu = _QualityDocumentStrings$menu$en._(_root);
	@override late final _QualityDocumentStrings$entity$en entity = _QualityDocumentStrings$entity$en._(_root);
}

// Path: menu
class _QualityDocumentStrings$menu$en extends QualityDocumentStrings$menu$ja {
	_QualityDocumentStrings$menu$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Quality documents';
}

// Path: entity
class _QualityDocumentStrings$entity$en extends QualityDocumentStrings$entity$ja {
	_QualityDocumentStrings$entity$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _QualityDocumentStrings$entity$doctier$en doctier = _QualityDocumentStrings$entity$doctier$en._(_root);
	@override late final _QualityDocumentStrings$entity$doc$en doc = _QualityDocumentStrings$entity$doc$en._(_root);
	@override late final _QualityDocumentStrings$entity$doccontent$en doccontent = _QualityDocumentStrings$entity$doccontent$en._(_root);
	@override late final _QualityDocumentStrings$entity$report$en report = _QualityDocumentStrings$entity$report$en._(_root);
}

// Path: entity.doctier
class _QualityDocumentStrings$entity$doctier$en extends QualityDocumentStrings$entity$doctier$ja {
	_QualityDocumentStrings$entity$doctier$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Document tiers';
	@override late final _QualityDocumentStrings$entity$doctier$fields$en fields = _QualityDocumentStrings$entity$doctier$fields$en._(_root);
}

// Path: entity.doc
class _QualityDocumentStrings$entity$doc$en extends QualityDocumentStrings$entity$doc$ja {
	_QualityDocumentStrings$entity$doc$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Documents';
	@override late final _QualityDocumentStrings$entity$doc$fields$en fields = _QualityDocumentStrings$entity$doc$fields$en._(_root);
}

// Path: entity.doccontent
class _QualityDocumentStrings$entity$doccontent$en extends QualityDocumentStrings$entity$doccontent$ja {
	_QualityDocumentStrings$entity$doccontent$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Document contents';
	@override late final _QualityDocumentStrings$entity$doccontent$fields$en fields = _QualityDocumentStrings$entity$doccontent$fields$en._(_root);
}

// Path: entity.report
class _QualityDocumentStrings$entity$report$en extends QualityDocumentStrings$entity$report$ja {
	_QualityDocumentStrings$entity$report$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reports';
	@override late final _QualityDocumentStrings$entity$report$fields$en fields = _QualityDocumentStrings$entity$report$fields$en._(_root);
}

// Path: entity.doctier.fields
class _QualityDocumentStrings$entity$doctier$fields$en extends QualityDocumentStrings$entity$doctier$fields$ja {
	_QualityDocumentStrings$entity$doctier$fields$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Code';
	@override String get f_identifier => 'Control number identifier';
	@override String get f_name => 'Name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_attributive_noun => 'Qualifying noun';
	@override String get f_tier_number => 'Tier number';
	@override String get f_file => 'File';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.doc.fields
class _QualityDocumentStrings$entity$doc$fields$en extends QualityDocumentStrings$entity$doc$fields$ja {
	_QualityDocumentStrings$entity$doc$fields$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Code';
	@override String get f_control_number => 'Control number';
	@override String get f_version_code => 'Version code';
	@override String get f_name => 'Document name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_mstr_document_tier_id => 'Document tier';
	@override String get f_file => 'File';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.doccontent.fields
class _QualityDocumentStrings$entity$doccontent$fields$en extends QualityDocumentStrings$entity$doccontent$fields$ja {
	_QualityDocumentStrings$entity$doccontent$fields$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_doc => 'Document';
	@override String get f_code => 'Code';
	@override String get f_name => 'Content name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_detail => 'Details';
	@override String get f_sequence => 'Sequence';
	@override String get f_image_content => 'Image content';
	@override String get f_file => 'File';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.report.fields
class _QualityDocumentStrings$entity$report$fields$en extends QualityDocumentStrings$entity$report$fields$ja {
	_QualityDocumentStrings$entity$report$fields$en._(QualityDocumentStringsEn root) : this._root = root, super.internal(root);

	final QualityDocumentStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Code';
	@override String get f_name => 'Name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_is_default => 'Default';
	@override String get f_file => 'File';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on QualityDocumentStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Quality documents',
			'entity.doctier.title' => 'Document tiers',
			'entity.doctier.fields.f_code' => 'Code',
			'entity.doctier.fields.f_identifier' => 'Control number identifier',
			'entity.doctier.fields.f_name' => 'Name',
			'entity.doctier.fields.f_pronunciation' => 'Reading',
			'entity.doctier.fields.f_nickname' => 'Abbreviation',
			'entity.doctier.fields.f_attributive_noun' => 'Qualifying noun',
			'entity.doctier.fields.f_tier_number' => 'Tier number',
			'entity.doctier.fields.f_file' => 'File',
			'entity.doctier.fields.f_remarks' => 'Remarks',
			'entity.doc.title' => 'Documents',
			'entity.doc.fields.f_code' => 'Code',
			'entity.doc.fields.f_control_number' => 'Control number',
			'entity.doc.fields.f_version_code' => 'Version code',
			'entity.doc.fields.f_name' => 'Document name',
			'entity.doc.fields.f_pronunciation' => 'Reading',
			'entity.doc.fields.f_nickname' => 'Abbreviation',
			'entity.doc.fields.f_mstr_document_tier_id' => 'Document tier',
			'entity.doc.fields.f_file' => 'File',
			'entity.doc.fields.f_remarks' => 'Remarks',
			'entity.doccontent.title' => 'Document contents',
			'entity.doccontent.fields.f_doc' => 'Document',
			'entity.doccontent.fields.f_code' => 'Code',
			'entity.doccontent.fields.f_name' => 'Content name',
			'entity.doccontent.fields.f_pronunciation' => 'Reading',
			'entity.doccontent.fields.f_nickname' => 'Abbreviation',
			'entity.doccontent.fields.f_detail' => 'Details',
			'entity.doccontent.fields.f_sequence' => 'Sequence',
			'entity.doccontent.fields.f_image_content' => 'Image content',
			'entity.doccontent.fields.f_file' => 'File',
			'entity.doccontent.fields.f_remarks' => 'Remarks',
			'entity.report.title' => 'Reports',
			'entity.report.fields.f_code' => 'Code',
			'entity.report.fields.f_name' => 'Name',
			'entity.report.fields.f_pronunciation' => 'Reading',
			'entity.report.fields.f_nickname' => 'Abbreviation',
			'entity.report.fields.f_is_default' => 'Default',
			'entity.report.fields.f_file' => 'File',
			'entity.report.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
