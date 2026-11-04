///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class UserProfileStringsEn extends UserProfileStrings with BaseTranslations<UserProfileLocale, UserProfileStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [UserProfileLocale.build] is preferred.
	UserProfileStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<UserProfileLocale, UserProfileStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: UserProfileLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<UserProfileLocale, UserProfileStrings> _meta;
	@override TranslationMetadata<UserProfileLocale, UserProfileStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final UserProfileStringsEn _root = this; // ignore: unused_field

	@override 
	UserProfileStringsEn $copyWith({TranslationMetadata<UserProfileLocale, UserProfileStrings>? meta}) => UserProfileStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _UserProfileStrings$menu$en menu = _UserProfileStrings$menu$en._(_root);
	@override late final _UserProfileStrings$myImage$en myImage = _UserProfileStrings$myImage$en._(_root);
	@override late final _UserProfileStrings$errors$en errors = _UserProfileStrings$errors$en._(_root);
}

// Path: menu
class _UserProfileStrings$menu$en extends UserProfileStrings$menu$ja {
	_UserProfileStrings$menu$en._(UserProfileStringsEn root) : this._root = root, super.internal(root);

	final UserProfileStringsEn _root; // ignore: unused_field

	// Translations
	@override String get myImage => 'My image';
}

// Path: myImage
class _UserProfileStrings$myImage$en extends UserProfileStrings$myImage$ja {
	_UserProfileStrings$myImage$en._(UserProfileStringsEn root) : this._root = root, super.internal(root);

	final UserProfileStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'My image';
	@override String get current => 'Your current image';
	@override String get choose => 'Choose an image file';
	@override String get note => 'PNG, JPEG, GIF or WebP, up to 2 MB. The photo in the app bar and on the dashboard changes.';
	@override String get reset => 'Restore the default image';
	@override String get changed => 'Your image was changed.';
	@override String get resetDone => 'The default image was restored.';
	@override String get readOnly => 'Your image is changed by an administrator. Ask an administrator if you want to change it.';
	@override String get noSession => 'You are not signed in, so your image cannot be shown.';
}

// Path: errors
class _UserProfileStrings$errors$en extends UserProfileStrings$errors$ja {
	_UserProfileStrings$errors$en._(UserProfileStringsEn root) : this._root = root, super.internal(root);

	final UserProfileStringsEn _root; // ignore: unused_field

	// Translations
	@override String tooLarge({required Object max}) => 'The image is too large. Choose a file of ${max} MB or less.';
	@override String get invalidImage => 'The file cannot be read as an image. Choose a PNG, JPEG, GIF or WebP file.';
	@override String get validation => 'The image was not accepted. Check the format (JPEG, PNG, WebP) and the size.';
	@override String get forbidden => 'You do not have permission to change this image.';
	@override String get unauthorized => 'Sign-in is required. Please sign in again.';
	@override String get rateLimited => 'Too many attempts. Please try again later.';
	@override String get network => 'Cannot connect. Please check your connection.';
	@override String get unsupported => 'Files cannot be picked in this environment.';
	@override String get unknown => 'An unexpected error occurred.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on UserProfileStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.myImage' => 'My image',
			'myImage.title' => 'My image',
			'myImage.current' => 'Your current image',
			'myImage.choose' => 'Choose an image file',
			'myImage.note' => 'PNG, JPEG, GIF or WebP, up to 2 MB. The photo in the app bar and on the dashboard changes.',
			'myImage.reset' => 'Restore the default image',
			'myImage.changed' => 'Your image was changed.',
			'myImage.resetDone' => 'The default image was restored.',
			'myImage.readOnly' => 'Your image is changed by an administrator. Ask an administrator if you want to change it.',
			'myImage.noSession' => 'You are not signed in, so your image cannot be shown.',
			'errors.tooLarge' => ({required Object max}) => 'The image is too large. Choose a file of ${max} MB or less.',
			'errors.invalidImage' => 'The file cannot be read as an image. Choose a PNG, JPEG, GIF or WebP file.',
			'errors.validation' => 'The image was not accepted. Check the format (JPEG, PNG, WebP) and the size.',
			'errors.forbidden' => 'You do not have permission to change this image.',
			'errors.unauthorized' => 'Sign-in is required. Please sign in again.',
			'errors.rateLimited' => 'Too many attempts. Please try again later.',
			'errors.network' => 'Cannot connect. Please check your connection.',
			'errors.unsupported' => 'Files cannot be picked in this environment.',
			'errors.unknown' => 'An unexpected error occurred.',
			_ => null,
		};
	}
}
