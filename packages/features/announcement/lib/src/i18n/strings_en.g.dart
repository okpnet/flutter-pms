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
class AnnouncementStringsEn extends AnnouncementStrings with BaseTranslations<AnnouncementLocale, AnnouncementStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AnnouncementLocale.build] is preferred.
	AnnouncementStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AnnouncementLocale, AnnouncementStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AnnouncementLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AnnouncementLocale, AnnouncementStrings> _meta;
	@override TranslationMetadata<AnnouncementLocale, AnnouncementStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final AnnouncementStringsEn _root = this; // ignore: unused_field

	@override 
	AnnouncementStringsEn $copyWith({TranslationMetadata<AnnouncementLocale, AnnouncementStrings>? meta}) => AnnouncementStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get title => 'Notifications';
	@override String get loading => 'Loading…';
	@override String get loadFailed => 'Could not load notifications.';
	@override String get empty => 'No notifications.';
	@override String get unreadOnly => 'Unread only';
	@override String get markRead => 'Mark as read';
	@override String get markReadFailed => 'Could not mark as read.';
	@override String get unread => 'Unread';
	@override String get target => 'Target';
	@override String get expires => 'Expires';
	@override late final _AnnouncementStrings$banner$en banner = _AnnouncementStrings$banner$en._(_root);
}

// Path: banner
class _AnnouncementStrings$banner$en extends AnnouncementStrings$banner$ja {
	_AnnouncementStrings$banner$en._(AnnouncementStringsEn root) : this._root = root, super.internal(root);

	final AnnouncementStringsEn _root; // ignore: unused_field

	// Translations
	@override String summary({required Object n}) => 'You have ${n} unread notifications';
	@override String get viewAll => 'View all';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AnnouncementStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'title' => 'Notifications',
			'loading' => 'Loading…',
			'loadFailed' => 'Could not load notifications.',
			'empty' => 'No notifications.',
			'unreadOnly' => 'Unread only',
			'markRead' => 'Mark as read',
			'markReadFailed' => 'Could not mark as read.',
			'unread' => 'Unread',
			'target' => 'Target',
			'expires' => 'Expires',
			'banner.summary' => ({required Object n}) => 'You have ${n} unread notifications',
			'banner.viewAll' => 'View all',
			_ => null,
		};
	}
}
