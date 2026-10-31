/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 92
///
/// Built on 2026-10-31 at 06:01 UTC

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
/// - LocaleSettings.setLocale(BarcodeEntryLocale.ja) // set locale
/// - Locale locale = BarcodeEntryLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == BarcodeEntryLocale.ja) // locale check
enum BarcodeEntryLocale with BaseAppLocale<BarcodeEntryLocale, BarcodeEntryStrings> {
	ja(languageCode: 'ja');

	const BarcodeEntryLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<BarcodeEntryStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case BarcodeEntryLocale.ja:
				return BarcodeEntryStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	BarcodeEntryStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case BarcodeEntryLocale.ja:
				return BarcodeEntryStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<BarcodeEntryLocale, BarcodeEntryStrings> {
	AppLocaleUtils._() : super(
		baseLocale: BarcodeEntryLocale.ja,
		locales: BarcodeEntryLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static BarcodeEntryLocale parse(String rawLocale) => instance.parse(rawLocale);
	static BarcodeEntryLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
