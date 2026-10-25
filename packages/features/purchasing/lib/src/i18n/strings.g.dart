/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 51
///
/// Built on 2026-10-25 at 02:54 UTC

// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/slang.dart';
export 'package:slang/slang.dart';

part 'strings_ja.g.dart';

/// Supported locales.
///
/// Usage:
/// - LocaleSettings.setLocale(PurchasingLocale.ja) // set locale
/// - Locale locale = PurchasingLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == PurchasingLocale.ja) // locale check
enum PurchasingLocale with BaseAppLocale<PurchasingLocale, PurchasingStrings> {
	ja(languageCode: 'ja');

	const PurchasingLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<PurchasingStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case PurchasingLocale.ja:
				return PurchasingStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	PurchasingStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case PurchasingLocale.ja:
				return PurchasingStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<PurchasingLocale, PurchasingStrings> {
	AppLocaleUtils._() : super(
		baseLocale: PurchasingLocale.ja,
		locales: PurchasingLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static PurchasingLocale parse(String rawLocale) => instance.parse(rawLocale);
	static PurchasingLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
