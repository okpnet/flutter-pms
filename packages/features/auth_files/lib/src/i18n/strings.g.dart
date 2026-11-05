/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 222 (111 per locale)
///
/// Built on 2026-11-05 at 07:55 UTC

// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/slang.dart';
export 'package:slang/slang.dart';

import 'strings_en.g.dart' deferred as l_en;
part 'strings_ja.g.dart';

/// Supported locales.
///
/// Usage:
/// - LocaleSettings.setLocale(AuthFilesLocale.ja) // set locale
/// - Locale locale = AuthFilesLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AuthFilesLocale.ja) // locale check
enum AuthFilesLocale with BaseAppLocale<AuthFilesLocale, AuthFilesStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const AuthFilesLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<AuthFilesStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case AuthFilesLocale.ja:
				return AuthFilesStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AuthFilesLocale.en:
				await l_en.loadLibrary();
				return l_en.AuthFilesStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	AuthFilesStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case AuthFilesLocale.ja:
				return AuthFilesStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AuthFilesLocale.en:
				return l_en.AuthFilesStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AuthFilesLocale, AuthFilesStrings> {
	AppLocaleUtils._() : super(
		baseLocale: AuthFilesLocale.ja,
		locales: AuthFilesLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AuthFilesLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AuthFilesLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
