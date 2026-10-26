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
class AppCoreStringsEn extends AppCoreStrings with BaseTranslations<AppCoreLocale, AppCoreStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppCoreLocale.build] is preferred.
	AppCoreStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppCoreLocale, AppCoreStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppCoreLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AppCoreLocale, AppCoreStrings> _meta;
	@override TranslationMetadata<AppCoreLocale, AppCoreStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final AppCoreStringsEn _root = this; // ignore: unused_field

	@override 
	AppCoreStringsEn $copyWith({TranslationMetadata<AppCoreLocale, AppCoreStrings>? meta}) => AppCoreStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _AppCoreStrings$app$en app = _AppCoreStrings$app$en._(_root);
	@override late final _AppCoreStrings$shell$en shell = _AppCoreStrings$shell$en._(_root);
	@override late final _AppCoreStrings$dashboard$en dashboard = _AppCoreStrings$dashboard$en._(_root);
	@override late final _AppCoreStrings$boot$en boot = _AppCoreStrings$boot$en._(_root);
	@override late final _AppCoreStrings$logout$en logout = _AppCoreStrings$logout$en._(_root);
	@override late final _AppCoreStrings$error$en error = _AppCoreStrings$error$en._(_root);
	@override late final _AppCoreStrings$settings$en settings = _AppCoreStrings$settings$en._(_root);
}

// Path: app
class _AppCoreStrings$app$en extends AppCoreStrings$app$ja {
	_AppCoreStrings$app$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Production management';
}

// Path: shell
class _AppCoreStrings$shell$en extends AppCoreStrings$shell$ja {
	_AppCoreStrings$shell$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get openMenu => 'Open menu';
	@override String get userMenu => 'User menu';
	@override String get settings => 'Settings';
	@override String get logout => 'Sign out';
}

// Path: dashboard
class _AppCoreStrings$dashboard$en extends AppCoreStrings$dashboard$ja {
	_AppCoreStrings$dashboard$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dashboard';
	@override String get edit => 'Edit layout';
	@override String get done => 'Done';
}

// Path: boot
class _AppCoreStrings$boot$en extends AppCoreStrings$boot$ja {
	_AppCoreStrings$boot$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Loading...';
}

// Path: logout
class _AppCoreStrings$logout$en extends AppCoreStrings$logout$ja {
	_AppCoreStrings$logout$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Signed out';
	@override String get message => 'You have been signed out.';
	@override String get signIn => 'Sign in (temporary)';
}

// Path: error
class _AppCoreStrings$error$en extends AppCoreStrings$error$ja {
	_AppCoreStrings$error$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error';
	@override String get message => 'An error occurred in the application';
	@override String get back => 'Back';
}

// Path: settings
class _AppCoreStrings$settings$en extends AppCoreStrings$settings$ja {
	_AppCoreStrings$settings$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override String get note => 'These settings affect only the user who is signed in, not all users.';
	@override late final _AppCoreStrings$settings$language$en language = _AppCoreStrings$settings$language$en._(_root);
	@override late final _AppCoreStrings$settings$layout$en layout = _AppCoreStrings$settings$layout$en._(_root);
	@override late final _AppCoreStrings$settings$user$en user = _AppCoreStrings$settings$user$en._(_root);
	@override late final _AppCoreStrings$settings$about$en about = _AppCoreStrings$settings$about$en._(_root);
}

// Path: settings.language
class _AppCoreStrings$settings$language$en extends AppCoreStrings$settings$language$ja {
	_AppCoreStrings$settings$language$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Language';
	@override String get system => 'Follow the system';
	@override String get ja => '日本語';
	@override String get en => 'English';
}

// Path: settings.layout
class _AppCoreStrings$settings$layout$en extends AppCoreStrings$settings$layout$ja {
	_AppCoreStrings$settings$layout$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Screen';
	@override String get sidebarIconOnly => 'Show only icons in the sidebar';
}

// Path: settings.user
class _AppCoreStrings$settings$user$en extends AppCoreStrings$settings$user$ja {
	_AppCoreStrings$settings$user$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Signed-in user';
	@override String get note => 'The user name and role shown on screen. Not saved; reverts to the standard values on every start.';
	@override String get name => 'User name';
	@override String get role => 'Role / department';
	@override String get apply => 'Apply';
	@override String get reset => 'Reset to standard';
}

// Path: settings.about
class _AppCoreStrings$settings$about$en extends AppCoreStrings$settings$about$ja {
	_AppCoreStrings$settings$about$en._(AppCoreStringsEn root) : this._root = root, super.internal(root);

	final AppCoreStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'About';
	@override String get version => 'Application version';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AppCoreStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => 'Production management',
			'shell.dashboard' => 'Dashboard',
			'shell.openMenu' => 'Open menu',
			'shell.userMenu' => 'User menu',
			'shell.settings' => 'Settings',
			'shell.logout' => 'Sign out',
			'dashboard.title' => 'Dashboard',
			'dashboard.edit' => 'Edit layout',
			'dashboard.done' => 'Done',
			'boot.loading' => 'Loading...',
			'logout.title' => 'Signed out',
			'logout.message' => 'You have been signed out.',
			'logout.signIn' => 'Sign in (temporary)',
			'error.title' => 'Error',
			'error.message' => 'An error occurred in the application',
			'error.back' => 'Back',
			'settings.title' => 'Settings',
			'settings.note' => 'These settings affect only the user who is signed in, not all users.',
			'settings.language.title' => 'Language',
			'settings.language.system' => 'Follow the system',
			'settings.language.ja' => '日本語',
			'settings.language.en' => 'English',
			'settings.layout.title' => 'Screen',
			'settings.layout.sidebarIconOnly' => 'Show only icons in the sidebar',
			'settings.user.title' => 'Signed-in user',
			'settings.user.note' => 'The user name and role shown on screen. Not saved; reverts to the standard values on every start.',
			'settings.user.name' => 'User name',
			'settings.user.role' => 'Role / department',
			'settings.user.apply' => 'Apply',
			'settings.user.reset' => 'Reset to standard',
			'settings.about.title' => 'About',
			'settings.about.version' => 'Application version',
			_ => null,
		};
	}
}
