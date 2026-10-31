/// Generated file. Do not edit.
///
/// Source: lib/src/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 43
///
/// Built on 2026-10-31 at 02:41 UTC

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
/// - LocaleSettings.setLocale(ProductionProcessLocale.ja) // set locale
/// - Locale locale = ProductionProcessLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == ProductionProcessLocale.ja) // locale check
enum ProductionProcessLocale with BaseAppLocale<ProductionProcessLocale, ProductionProcessStrings> {
	ja(languageCode: 'ja');

	const ProductionProcessLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<ProductionProcessStrings> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case ProductionProcessLocale.ja:
				return ProductionProcessStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	ProductionProcessStrings buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case ProductionProcessLocale.ja:
				return ProductionProcessStringsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<ProductionProcessLocale, ProductionProcessStrings> {
	AppLocaleUtils._() : super(
		baseLocale: ProductionProcessLocale.ja,
		locales: ProductionProcessLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static ProductionProcessLocale parse(String rawLocale) => instance.parse(rawLocale);
	static ProductionProcessLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
