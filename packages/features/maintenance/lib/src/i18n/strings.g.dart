/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 20 (10 per locale)
///
/// Built on 2026-10-26 at 11:55 UTC

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
/// - LocaleSettings.setLocale(MaintenanceLocale.ja) // set locale
/// - Locale locale = MaintenanceLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == MaintenanceLocale.ja) // locale check
enum MaintenanceLocale with BaseAppLocale<MaintenanceLocale, MaintenanceStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const MaintenanceLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<MaintenanceStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case MaintenanceLocale.ja:
				return MaintenanceStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case MaintenanceLocale.en:
				await l_en.loadLibrary();
				return l_en.MaintenanceStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	MaintenanceStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case MaintenanceLocale.ja:
				return MaintenanceStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case MaintenanceLocale.en:
				return l_en.MaintenanceStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<MaintenanceLocale, MaintenanceStrings> {
	AppLocaleUtils._() : super(
		baseLocale: MaintenanceLocale.ja,
		locales: MaintenanceLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static MaintenanceLocale parse(String rawLocale) => instance.parse(rawLocale);
	static MaintenanceLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
