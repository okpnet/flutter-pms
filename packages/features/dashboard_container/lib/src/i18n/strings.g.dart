/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 38 (19 per locale)
///
/// Built on 2026-10-26 at 12:25 UTC

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
/// - LocaleSettings.setLocale(DashboardContainerLocale.ja) // set locale
/// - Locale locale = DashboardContainerLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == DashboardContainerLocale.ja) // locale check
enum DashboardContainerLocale with BaseAppLocale<DashboardContainerLocale, DashboardContainerStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const DashboardContainerLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<DashboardContainerStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case DashboardContainerLocale.ja:
				return DashboardContainerStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case DashboardContainerLocale.en:
				await l_en.loadLibrary();
				return l_en.DashboardContainerStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	DashboardContainerStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case DashboardContainerLocale.ja:
				return DashboardContainerStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case DashboardContainerLocale.en:
				return l_en.DashboardContainerStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<DashboardContainerLocale, DashboardContainerStrings> {
	AppLocaleUtils._() : super(
		baseLocale: DashboardContainerLocale.ja,
		locales: DashboardContainerLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static DashboardContainerLocale parse(String rawLocale) => instance.parse(rawLocale);
	static DashboardContainerLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
