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
class AppStringsEn extends AppStrings with BaseTranslations<AppLocale, AppStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	AppStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, AppStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AppLocale, AppStrings> _meta;
	@override TranslationMetadata<AppLocale, AppStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final AppStringsEn _root = this; // ignore: unused_field

	@override 
	AppStringsEn $copyWith({TranslationMetadata<AppLocale, AppStrings>? meta}) => AppStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _AppStrings$splash$en splash = _AppStrings$splash$en._(_root);
	@override late final _AppStrings$common$en common = _AppStrings$common$en._(_root);
	@override late final _AppStrings$login$en login = _AppStrings$login$en._(_root);
	@override late final _AppStrings$grid$en grid = _AppStrings$grid$en._(_root);
	@override late final _AppStrings$company$en company = _AppStrings$company$en._(_root);
}

// Path: splash
class _AppStrings$splash$en extends AppStrings$splash$ja {
	_AppStrings$splash$en._(AppStringsEn root) : this._root = root, super.internal(root);

	final AppStringsEn _root; // ignore: unused_field

	// Translations
	@override String get initializing => 'Initializing';
}

// Path: common
class _AppStrings$common$en extends AppStrings$common$ja {
	_AppStrings$common$en._(AppStringsEn root) : this._root = root, super.internal(root);

	final AppStringsEn _root; // ignore: unused_field

	// Translations
	@override String get notImplemented => 'Not implemented';
}

// Path: login
class _AppStrings$login$en extends AppStrings$login$ja {
	_AppStrings$login$en._(AppStringsEn root) : this._root = root, super.internal(root);

	final AppStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sign in';
	@override String get invalidCredential => 'The ID or password is incorrect';
	@override String get userId => 'User ID';
	@override String get userIdRequired => 'User ID is required';
	@override String get password => 'Password';
	@override String get passwordRequired => 'Password is required';
	@override String get submit => 'Sign in';
}

// Path: grid
class _AppStrings$grid$en extends AppStrings$grid$ja {
	_AppStrings$grid$en._(AppStringsEn root) : this._root = root, super.internal(root);

	final AppStringsEn _root; // ignore: unused_field

	// Translations
	@override String filtered({required Object count}) => '${count} filtered';
	@override String get wait => 'Please wait';
	@override String total({required Object count}) => '${count} in total';
}

// Path: company
class _AppStrings$company$en extends AppStrings$company$ja {
	_AppStrings$company$en._(AppStringsEn root) : this._root = root, super.internal(root);

	final AppStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Company';
	@override String get name => 'Company name';
	@override String get business => 'Business';
	@override String get address => 'Address';
	@override String get tel => 'Phone';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AppStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'splash.initializing' => 'Initializing',
			'common.notImplemented' => 'Not implemented',
			'login.title' => 'Sign in',
			'login.invalidCredential' => 'The ID or password is incorrect',
			'login.userId' => 'User ID',
			'login.userIdRequired' => 'User ID is required',
			'login.password' => 'Password',
			'login.passwordRequired' => 'Password is required',
			'login.submit' => 'Sign in',
			'grid.filtered' => ({required Object count}) => '${count} filtered',
			'grid.wait' => 'Please wait',
			'grid.total' => ({required Object count}) => '${count} in total',
			'company.title' => 'Company',
			'company.name' => 'Company name',
			'company.business' => 'Business',
			'company.address' => 'Address',
			'company.tel' => 'Phone',
			_ => null,
		};
	}
}
