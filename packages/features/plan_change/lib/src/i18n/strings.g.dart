/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 52
///
/// Built on 2026-11-16 at 13:38 UTC

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
/// - LocaleSettings.setLocale(PlanChangeLocale.ja) // set locale
/// - Locale locale = PlanChangeLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == PlanChangeLocale.ja) // locale check
enum PlanChangeLocale with BaseAppLocale<PlanChangeLocale, PlanChangeStrings> {
	ja(languageCode: 'ja');

	const PlanChangeLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<PlanChangeStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case PlanChangeLocale.ja:
				return PlanChangeStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	PlanChangeStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case PlanChangeLocale.ja:
				return PlanChangeStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<PlanChangeLocale, PlanChangeStrings> {
	AppLocaleUtils._() : super(
		baseLocale: PlanChangeLocale.ja,
		locales: PlanChangeLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static PlanChangeLocale parse(String rawLocale) => instance.parse(rawLocale);
	static PlanChangeLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
