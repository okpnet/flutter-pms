/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 32 (16 per locale)
///
/// Built on 2026-11-26 at 07:40 UTC

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
/// - LocaleSettings.setLocale(AnnouncementLocale.ja) // set locale
/// - Locale locale = AnnouncementLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AnnouncementLocale.ja) // locale check
enum AnnouncementLocale with BaseAppLocale<AnnouncementLocale, AnnouncementStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const AnnouncementLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<AnnouncementStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case AnnouncementLocale.ja:
				return AnnouncementStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AnnouncementLocale.en:
				await l_en.loadLibrary();
				return l_en.AnnouncementStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	AnnouncementStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case AnnouncementLocale.ja:
				return AnnouncementStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AnnouncementLocale.en:
				return l_en.AnnouncementStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AnnouncementLocale, AnnouncementStrings> {
	AppLocaleUtils._() : super(
		baseLocale: AnnouncementLocale.ja,
		locales: AnnouncementLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AnnouncementLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AnnouncementLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
