/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 75 (37 per locale)
///
/// Built on 2026-10-29 at 13:38 UTC

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
/// - LocaleSettings.setLocale(SharedMasterLocale.ja) // set locale
/// - Locale locale = SharedMasterLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == SharedMasterLocale.ja) // locale check
enum SharedMasterLocale with BaseAppLocale<SharedMasterLocale, SharedMasterStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const SharedMasterLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<SharedMasterStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case SharedMasterLocale.ja:
				return SharedMasterStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case SharedMasterLocale.en:
				await l_en.loadLibrary();
				return l_en.SharedMasterStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	SharedMasterStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case SharedMasterLocale.ja:
				return SharedMasterStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case SharedMasterLocale.en:
				return l_en.SharedMasterStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<SharedMasterLocale, SharedMasterStrings> {
	AppLocaleUtils._() : super(
		baseLocale: SharedMasterLocale.ja,
		locales: SharedMasterLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static SharedMasterLocale parse(String rawLocale) => instance.parse(rawLocale);
	static SharedMasterLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
