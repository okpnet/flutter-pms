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
class BackstageStringsEn extends BackstageStrings with BaseTranslations<BackstageLocale, BackstageStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [BackstageLocale.build] is preferred.
	BackstageStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<BackstageLocale, BackstageStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: BackstageLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<BackstageLocale, BackstageStrings> _meta;
	@override TranslationMetadata<BackstageLocale, BackstageStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final BackstageStringsEn _root = this; // ignore: unused_field

	@override 
	BackstageStringsEn $copyWith({TranslationMetadata<BackstageLocale, BackstageStrings>? meta}) => BackstageStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get title => 'Backstage settings';
	@override String get intro => 'Application settings for the system maintainer only. Connection URLs and the log level take effect after the app restarts.';
	@override late final _BackstageStrings$fields$en fields = _BackstageStrings$fields$en._(_root);
	@override late final _BackstageStrings$choice$en choice = _BackstageStrings$choice$en._(_root);
	@override late final _BackstageStrings$source$en source = _BackstageStrings$source$en._(_root);
	@override late final _BackstageStrings$hint$en hint = _BackstageStrings$hint$en._(_root);
	@override late final _BackstageStrings$buttons$en buttons = _BackstageStrings$buttons$en._(_root);
	@override late final _BackstageStrings$notice$en notice = _BackstageStrings$notice$en._(_root);
	@override late final _BackstageStrings$issue$en issue = _BackstageStrings$issue$en._(_root);
}

// Path: fields
class _BackstageStrings$fields$en extends BackstageStrings$fields$ja {
	_BackstageStrings$fields$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get isChangeUserImage => 'Users can change their own image';
	@override String get graphqlUrl => 'Endpoint (GraphQL)';
	@override String get pocketbaseUrl => 'Endpoint (PocketBase)';
	@override String get maintenanceUrl => 'Maintenance check URL';
	@override String get logLevel => 'Log level';
	@override String get sidebarIconOnly => 'Icon-only sidebar (default)';
}

// Path: choice
class _BackstageStrings$choice$en extends BackstageStrings$choice$ja {
	_BackstageStrings$choice$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get followDefault => 'Follow the default';
	@override String get yes => 'Yes';
	@override String get no => 'No';
}

// Path: source
class _BackstageStrings$source$en extends BackstageStrings$source$ja {
	_BackstageStrings$source$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get launch => 'Set at launch (read-only)';
	@override String get stored => 'Backstage';
	@override String get asset => 'Default';
	@override String get none => 'Not set';
}

// Path: hint
class _BackstageStrings$hint$en extends BackstageStrings$hint$ja {
	_BackstageStrings$hint$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get url => 'An https URL (http only on the local network). Leave empty to follow the default.';
}

// Path: buttons
class _BackstageStrings$buttons$en extends BackstageStrings$buttons$ja {
	_BackstageStrings$buttons$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get save => 'Save';
	@override String get reset => 'Clear saved values';
	@override String get exit => 'Exit';
}

// Path: notice
class _BackstageStrings$notice$en extends BackstageStrings$notice$ja {
	_BackstageStrings$notice$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get saved => 'Saved. Connection URLs and the log level take effect after a restart.';
	@override String get reset => 'Cleared the saved values.';
	@override String get storeFailed => 'Could not save. The secure storage may be unavailable.';
}

// Path: issue
class _BackstageStrings$issue$en extends BackstageStrings$issue$ja {
	_BackstageStrings$issue$en._(BackstageStringsEn root) : this._root = root, super.internal(root);

	final BackstageStringsEn _root; // ignore: unused_field

	// Translations
	@override String get urlInvalid => 'The URL format is invalid.';
	@override String get urlNotHttps => 'Use an https URL (http is allowed only on the local network).';
	@override String get logLevelUnknown => 'Unknown log level.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on BackstageStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => 'Backstage settings',
			'intro' => 'Application settings for the system maintainer only. Connection URLs and the log level take effect after the app restarts.',
			'fields.isChangeUserImage' => 'Users can change their own image',
			'fields.graphqlUrl' => 'Endpoint (GraphQL)',
			'fields.pocketbaseUrl' => 'Endpoint (PocketBase)',
			'fields.maintenanceUrl' => 'Maintenance check URL',
			'fields.logLevel' => 'Log level',
			'fields.sidebarIconOnly' => 'Icon-only sidebar (default)',
			'choice.followDefault' => 'Follow the default',
			'choice.yes' => 'Yes',
			'choice.no' => 'No',
			'source.launch' => 'Set at launch (read-only)',
			'source.stored' => 'Backstage',
			'source.asset' => 'Default',
			'source.none' => 'Not set',
			'hint.url' => 'An https URL (http only on the local network). Leave empty to follow the default.',
			'buttons.save' => 'Save',
			'buttons.reset' => 'Clear saved values',
			'buttons.exit' => 'Exit',
			'notice.saved' => 'Saved. Connection URLs and the log level take effect after a restart.',
			'notice.reset' => 'Cleared the saved values.',
			'notice.storeFailed' => 'Could not save. The secure storage may be unavailable.',
			'issue.urlInvalid' => 'The URL format is invalid.',
			'issue.urlNotHttps' => 'Use an https URL (http is allowed only on the local network).',
			'issue.logLevelUnknown' => 'Unknown log level.',
			_ => null,
		};
	}
}
