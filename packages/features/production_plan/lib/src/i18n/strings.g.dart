/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 201 (100 per locale)
///
/// Built on 2026-10-31 at 02:41 UTC

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
/// - LocaleSettings.setLocale(ProductionPlanLocale.ja) // set locale
/// - Locale locale = ProductionPlanLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == ProductionPlanLocale.ja) // locale check
enum ProductionPlanLocale with BaseAppLocale<ProductionPlanLocale, ProductionPlanStrings> {
	ja(languageCode: 'ja'),
	en(languageCode: 'en');

	const ProductionPlanLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<ProductionPlanStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case ProductionPlanLocale.ja:
				return ProductionPlanStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case ProductionPlanLocale.en:
				await l_en.loadLibrary();
				return l_en.ProductionPlanStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	ProductionPlanStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case ProductionPlanLocale.ja:
				return ProductionPlanStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case ProductionPlanLocale.en:
				return l_en.ProductionPlanStringsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<ProductionPlanLocale, ProductionPlanStrings> {
	AppLocaleUtils._() : super(
		baseLocale: ProductionPlanLocale.ja,
		locales: ProductionPlanLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static ProductionPlanLocale parse(String rawLocale) => instance.parse(rawLocale);
	static ProductionPlanLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
