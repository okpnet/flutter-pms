/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 80 (40 per locale)
///
/// Built on 2026-11-25 at 13:10 UTC

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
/// - LocaleSettings.setLocale(CostLocale.ja) // set locale
/// - Locale locale = CostLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == CostLocale.ja) // locale check
enum CostLocale with BaseAppLocale<CostLocale, CostStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const CostLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<CostStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case CostLocale.ja:
				return CostStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case CostLocale.en:
				await l_en.loadLibrary();
				return l_en.CostStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	CostStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case CostLocale.ja:
				return CostStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case CostLocale.en:
				return l_en.CostStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<CostLocale, CostStrings> {
	AppLocaleUtils._() : super(
		baseLocale: CostLocale.ja,
		locales: CostLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static CostLocale parse(String rawLocale) => instance.parse(rawLocale);
	static CostLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
