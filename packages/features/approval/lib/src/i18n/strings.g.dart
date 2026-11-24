/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 100 (50 per locale)
///
/// Built on 2026-11-24 at 04:06 UTC

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
/// - LocaleSettings.setLocale(ApprovalLocale.ja) // set locale
/// - Locale locale = ApprovalLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == ApprovalLocale.ja) // locale check
enum ApprovalLocale with BaseAppLocale<ApprovalLocale, ApprovalStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const ApprovalLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<ApprovalStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case ApprovalLocale.ja:
				return ApprovalStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case ApprovalLocale.en:
				await l_en.loadLibrary();
				return l_en.ApprovalStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	ApprovalStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case ApprovalLocale.ja:
				return ApprovalStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case ApprovalLocale.en:
				return l_en.ApprovalStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<ApprovalLocale, ApprovalStrings> {
	AppLocaleUtils._() : super(
		baseLocale: ApprovalLocale.ja,
		locales: ApprovalLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static ApprovalLocale parse(String rawLocale) => instance.parse(rawLocale);
	static ApprovalLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
