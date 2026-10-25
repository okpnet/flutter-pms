/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 46 (23 per locale)
///
/// Built on 2026-10-25 at 02:29 UTC

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
/// - LocaleSettings.setLocale(EntityScreenLocale.ja) // set locale
/// - Locale locale = EntityScreenLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == EntityScreenLocale.ja) // locale check
enum EntityScreenLocale with BaseAppLocale<EntityScreenLocale, EntityScreenStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const EntityScreenLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<EntityScreenStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case EntityScreenLocale.ja:
				return EntityScreenStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case EntityScreenLocale.en:
				await l_en.loadLibrary();
				return l_en.EntityScreenStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	EntityScreenStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case EntityScreenLocale.ja:
				return EntityScreenStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case EntityScreenLocale.en:
				return l_en.EntityScreenStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<EntityScreenLocale, EntityScreenStrings> {
	AppLocaleUtils._() : super(
		baseLocale: EntityScreenLocale.ja,
		locales: EntityScreenLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static EntityScreenLocale parse(String rawLocale) => instance.parse(rawLocale);
	static EntityScreenLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
