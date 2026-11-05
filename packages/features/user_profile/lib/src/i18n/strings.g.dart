/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 64 (32 per locale)
///
/// Built on 2026-11-05 at 02:56 UTC

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
/// - LocaleSettings.setLocale(UserProfileLocale.ja) // set locale
/// - Locale locale = UserProfileLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == UserProfileLocale.ja) // locale check
enum UserProfileLocale with BaseAppLocale<UserProfileLocale, UserProfileStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const UserProfileLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<UserProfileStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case UserProfileLocale.ja:
				return UserProfileStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case UserProfileLocale.en:
				await l_en.loadLibrary();
				return l_en.UserProfileStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	UserProfileStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case UserProfileLocale.ja:
				return UserProfileStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case UserProfileLocale.en:
				return l_en.UserProfileStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<UserProfileLocale, UserProfileStrings> {
	AppLocaleUtils._() : super(
		baseLocale: UserProfileLocale.ja,
		locales: UserProfileLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static UserProfileLocale parse(String rawLocale) => instance.parse(rawLocale);
	static UserProfileLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
