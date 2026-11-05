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
class AuthFilesStringsEn extends AuthFilesStrings with BaseTranslations<AuthFilesLocale, AuthFilesStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AuthFilesLocale.build] is preferred.
	AuthFilesStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AuthFilesLocale, AuthFilesStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AuthFilesLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AuthFilesLocale, AuthFilesStrings> _meta;
	@override TranslationMetadata<AuthFilesLocale, AuthFilesStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final AuthFilesStringsEn _root = this; // ignore: unused_field

	@override 
	AuthFilesStringsEn $copyWith({TranslationMetadata<AuthFilesLocale, AuthFilesStrings>? meta}) => AuthFilesStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _AuthFilesStrings$common$en common = _AuthFilesStrings$common$en._(_root);
	@override late final _AuthFilesStrings$errors$en errors = _AuthFilesStrings$errors$en._(_root);
	@override late final _AuthFilesStrings$rules$en rules = _AuthFilesStrings$rules$en._(_root);
	@override late final _AuthFilesStrings$login$en login = _AuthFilesStrings$login$en._(_root);
	@override late final _AuthFilesStrings$logout$en logout = _AuthFilesStrings$logout$en._(_root);
	@override late final _AuthFilesStrings$register$en register = _AuthFilesStrings$register$en._(_root);
	@override late final _AuthFilesStrings$forgot$en forgot = _AuthFilesStrings$forgot$en._(_root);
	@override late final _AuthFilesStrings$code$en code = _AuthFilesStrings$code$en._(_root);
	@override late final _AuthFilesStrings$newPassword$en newPassword = _AuthFilesStrings$newPassword$en._(_root);
	@override late final _AuthFilesStrings$files$en files = _AuthFilesStrings$files$en._(_root);
	@override late final _AuthFilesStrings$admin$en admin = _AuthFilesStrings$admin$en._(_root);
}

// Path: common
class _AuthFilesStrings$common$en extends AuthFilesStrings$common$ja {
	_AuthFilesStrings$common$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get back => 'Back';
	@override String get loading => 'Working...';
	@override String get cancel => 'Cancel';
	@override String get required => 'Required';
	@override String get backToLogin => 'Back to sign in';
}

// Path: errors
class _AuthFilesStrings$errors$en extends AuthFilesStrings$errors$ja {
	_AuthFilesStrings$errors$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get validation => 'Please check your input.';
	@override String get invalidCredentials => 'The user ID or password is incorrect.';
	@override String get codeInvalid => 'The user ID or code is incorrect, or the code has expired.';
	@override String get unauthorized => 'Sign-in is required. Please sign in again.';
	@override String get forbidden => 'You do not have permission for this operation.';
	@override String get notFound => 'The target was not found.';
	@override String get rateLimited => 'Too many attempts. Please try again later.';
	@override String get unavailable => 'Not accepting requests right now. Please try again later.';
	@override String get server => 'A server error occurred.';
	@override String get network => 'Cannot connect. Please check your connection.';
	@override String get unknown => 'An unexpected error occurred.';
	@override String get fileUnsupported => 'Files cannot be picked or saved in this environment.';
	@override String get fileTooLarge => 'The file is too large. Choose a file of 100 MB or less.';
}

// Path: rules
class _AuthFilesStrings$rules$en extends AuthFilesStrings$rules$ja {
	_AuthFilesStrings$rules$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get required => 'This field is required.';
	@override String get userId => 'The user ID must be 4 to 32 characters of letters, digits, . _ or -.';
	@override String get email => 'The email address format is not valid. (e.g. name@example.com)';
	@override String get kana => 'Enter the reading in hiragana or katakana. For a name in English, enter how it is read.';
	@override String get code => 'Enter the 12-character code. (No hyphens or spaces needed.)';
	@override String password({required Object n}) => 'The password must be at least ${n} characters.';
	@override String get passwordConfirm => 'Enter the same value as the new password.';
}

// Path: login
class _AuthFilesStrings$login$en extends AuthFilesStrings$login$ja {
	_AuthFilesStrings$login$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String heading({required Object app}) => 'Sign in to ${app}';
	@override String get identity => 'User ID or email';
	@override String get password => 'Password';
	@override String get submit => 'Sign in';
	@override String get forgot => 'Forgot your password';
	@override String get register => 'Register';
	@override String get haveCode => 'I have a code';
	@override String get sending => 'Signing in...';
	@override String get provisionalNotice => 'Not connected to an authentication server (development). Credentials are not checked; you sign in as the standard user.';
	@override String get provisionalSubmit => 'Sign in as the standard user';
}

// Path: logout
class _AuthFilesStrings$logout$en extends AuthFilesStrings$logout$ja {
	_AuthFilesStrings$logout$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get confirmHeading => 'Sign out?';
	@override String confirmMessage({required Object name}) => 'You are signed in as ${name}. Unsaved input will be lost.';
	@override String get confirmCancel => 'Cancel';
	@override String get confirmSubmit => 'Sign out';
	@override String get workingHeading => 'Signing out…';
	@override String get workingMessage => 'Ending the session. Please wait.';
	@override String get doneHeading => 'You have signed out';
	@override String get doneMessage => 'Please sign in again when you use the app next time.';
	@override String get expiredHeading => 'Your session expired';
	@override String get expiredMessage => 'You were signed out because your sign-in expired. Please sign in again.';
	@override String countdown({required Object n}) => 'Moving to the sign-in screen in ${n} seconds.';
	@override String get toLogin => 'Go to sign in now';
	@override String get note => 'This screen is also shown when the session expires.';
}

// Path: register
class _AuthFilesStrings$register$en extends AuthFilesStrings$register$ja {
	_AuthFilesStrings$register$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Register';
	@override String get userId => 'User ID';
	@override String get email => 'Email address';
	@override String get name => 'Name';
	@override String get ruby => 'Reading (for an English name, how it is read)';
	@override String get submit => 'Send';
	@override String get note => 'Your request is sent to an administrator. If approved, you will receive a code.';
	@override String get acceptedHeading => 'Request received';
	@override String get accepted => 'Please wait for approval. If approved, a code is sent by email or handed over by an administrator.';
	@override String get toCode => 'Enter the code';
}

// Path: forgot
class _AuthFilesStrings$forgot$en extends AuthFilesStrings$forgot$ja {
	_AuthFilesStrings$forgot$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Forgot your password';
	@override String get description => 'Enter your user ID or email address. If an email is registered, a code is sent by email. Otherwise, ask an administrator for a code.';
	@override String get who => 'User ID or email address';
	@override String get submit => 'Send';
}

// Path: code
class _AuthFilesStrings$code$en extends AuthFilesStrings$code$ja {
	_AuthFilesStrings$code$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Enter code';
	@override String get description => 'Enter the code you received by email or from an administrator.';
	@override String get accepted => 'Received. Please get the code by email or from an administrator.';
	@override String get username => 'User ID';
	@override String get code => 'Code (12 characters)';
	@override String get submit => 'Confirm';
	@override String get back => 'Back to previous';
}

// Path: newPassword
class _AuthFilesStrings$newPassword$en extends AuthFilesStrings$newPassword$ja {
	_AuthFilesStrings$newPassword$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get heading => 'New password';
	@override String get password => 'New password';
	@override String get passwordConfirm => 'New password (confirm)';
	@override String get note => 'Enter at least 8 characters. Both entries must be the same.';
	@override String get submit => 'Reset password';
	@override String get done => 'Your password was reset. Please sign in with the new password.';
}

// Path: files
class _AuthFilesStrings$files$en extends AuthFilesStrings$files$ja {
	_AuthFilesStrings$files$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shared files';
	@override String get description => 'Uploading with the same ID creates a new revision; older revisions are kept.';
	@override String get fileId => 'File ID';
	@override String get fileIdHint => 'Letters, digits, _ and -, up to 64 characters';
	@override String get comment => 'Comment (optional)';
	@override String get search => 'Show history';
	@override String get upload => 'Upload';
	@override String uploaded({required Object revision}) => 'Uploaded (revision ${revision}).';
	@override String get download => 'Download';
	@override String get downloaded => 'Saved.';
	@override String get empty => 'There is no file with this ID.';
	@override String get revision => 'Revision';
	@override String get name => 'File name';
	@override String get size => 'Size';
	@override String get invalidId => 'The file ID may contain only letters, digits, _ and -, up to 64 characters.';
}

// Path: admin
class _AuthFilesStrings$admin$en extends AuthFilesStrings$admin$ja {
	_AuthFilesStrings$admin$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _AuthFilesStrings$admin$signups$en signups = _AuthFilesStrings$admin$signups$en._(_root);
	@override late final _AuthFilesStrings$admin$resets$en resets = _AuthFilesStrings$admin$resets$en._(_root);
	@override late final _AuthFilesStrings$admin$issuedCode$en issuedCode = _AuthFilesStrings$admin$issuedCode$en._(_root);
}

// Path: admin.signups
class _AuthFilesStrings$admin$signups$en extends AuthFilesStrings$admin$signups$ja {
	_AuthFilesStrings$admin$signups$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sign-up requests';
	@override String get empty => 'There are no pending requests.';
	@override String get userId => 'Preferred ID';
	@override String get email => 'Email';
	@override String get created => 'Requested at';
	@override String get approve => 'Approve';
	@override String get reject => 'Reject';
	@override String get appUserId => 'Staff ID (already registered in the App DB)';
	@override String get approved => 'Approved. Hand the code to the person.';
	@override String get rejected => 'Rejected.';
	@override String get confirmReject => 'Reject this request?';
}

// Path: admin.resets
class _AuthFilesStrings$admin$resets$en extends AuthFilesStrings$admin$resets$ja {
	_AuthFilesStrings$admin$resets$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reset requests';
	@override String get empty => 'There are no pending requests.';
	@override String get issue => 'Issue code';
	@override String get issued => 'Code issued. Verify the person and hand it over.';
	@override String get created => 'Requested at';
}

// Path: admin.issuedCode
class _AuthFilesStrings$admin$issuedCode$en extends AuthFilesStrings$admin$issuedCode$ja {
	_AuthFilesStrings$admin$issuedCode$en._(AuthFilesStringsEn root) : this._root = root, super.internal(root);

	final AuthFilesStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Issued code';
	@override String get code => 'Code';
	@override String get expires => 'Expires';
	@override String get mailed => 'Sent by email';
	@override String get handOver => 'Hand this to the person. It cannot be shown again after closing.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on AuthFilesStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.back' => 'Back',
			'common.loading' => 'Working...',
			'common.cancel' => 'Cancel',
			'common.required' => 'Required',
			'common.backToLogin' => 'Back to sign in',
			'errors.validation' => 'Please check your input.',
			'errors.invalidCredentials' => 'The user ID or password is incorrect.',
			'errors.codeInvalid' => 'The user ID or code is incorrect, or the code has expired.',
			'errors.unauthorized' => 'Sign-in is required. Please sign in again.',
			'errors.forbidden' => 'You do not have permission for this operation.',
			'errors.notFound' => 'The target was not found.',
			'errors.rateLimited' => 'Too many attempts. Please try again later.',
			'errors.unavailable' => 'Not accepting requests right now. Please try again later.',
			'errors.server' => 'A server error occurred.',
			'errors.network' => 'Cannot connect. Please check your connection.',
			'errors.unknown' => 'An unexpected error occurred.',
			'errors.fileUnsupported' => 'Files cannot be picked or saved in this environment.',
			'errors.fileTooLarge' => 'The file is too large. Choose a file of 100 MB or less.',
			'rules.required' => 'This field is required.',
			'rules.userId' => 'The user ID must be 4 to 32 characters of letters, digits, . _ or -.',
			'rules.email' => 'The email address format is not valid. (e.g. name@example.com)',
			'rules.kana' => 'Enter the reading in hiragana or katakana. For a name in English, enter how it is read.',
			'rules.code' => 'Enter the 12-character code. (No hyphens or spaces needed.)',
			'rules.password' => ({required Object n}) => 'The password must be at least ${n} characters.',
			'rules.passwordConfirm' => 'Enter the same value as the new password.',
			'login.heading' => ({required Object app}) => 'Sign in to ${app}',
			'login.identity' => 'User ID or email',
			'login.password' => 'Password',
			'login.submit' => 'Sign in',
			'login.forgot' => 'Forgot your password',
			'login.register' => 'Register',
			'login.haveCode' => 'I have a code',
			'login.sending' => 'Signing in...',
			'login.provisionalNotice' => 'Not connected to an authentication server (development). Credentials are not checked; you sign in as the standard user.',
			'login.provisionalSubmit' => 'Sign in as the standard user',
			'logout.confirmHeading' => 'Sign out?',
			'logout.confirmMessage' => ({required Object name}) => 'You are signed in as ${name}. Unsaved input will be lost.',
			'logout.confirmCancel' => 'Cancel',
			'logout.confirmSubmit' => 'Sign out',
			'logout.workingHeading' => 'Signing out…',
			'logout.workingMessage' => 'Ending the session. Please wait.',
			'logout.doneHeading' => 'You have signed out',
			'logout.doneMessage' => 'Please sign in again when you use the app next time.',
			'logout.expiredHeading' => 'Your session expired',
			'logout.expiredMessage' => 'You were signed out because your sign-in expired. Please sign in again.',
			'logout.countdown' => ({required Object n}) => 'Moving to the sign-in screen in ${n} seconds.',
			'logout.toLogin' => 'Go to sign in now',
			'logout.note' => 'This screen is also shown when the session expires.',
			'register.heading' => 'Register',
			'register.userId' => 'User ID',
			'register.email' => 'Email address',
			'register.name' => 'Name',
			'register.ruby' => 'Reading (for an English name, how it is read)',
			'register.submit' => 'Send',
			'register.note' => 'Your request is sent to an administrator. If approved, you will receive a code.',
			'register.acceptedHeading' => 'Request received',
			'register.accepted' => 'Please wait for approval. If approved, a code is sent by email or handed over by an administrator.',
			'register.toCode' => 'Enter the code',
			'forgot.heading' => 'Forgot your password',
			'forgot.description' => 'Enter your user ID or email address. If an email is registered, a code is sent by email. Otherwise, ask an administrator for a code.',
			'forgot.who' => 'User ID or email address',
			'forgot.submit' => 'Send',
			'code.heading' => 'Enter code',
			'code.description' => 'Enter the code you received by email or from an administrator.',
			'code.accepted' => 'Received. Please get the code by email or from an administrator.',
			'code.username' => 'User ID',
			'code.code' => 'Code (12 characters)',
			'code.submit' => 'Confirm',
			'code.back' => 'Back to previous',
			'newPassword.heading' => 'New password',
			'newPassword.password' => 'New password',
			'newPassword.passwordConfirm' => 'New password (confirm)',
			'newPassword.note' => 'Enter at least 8 characters. Both entries must be the same.',
			'newPassword.submit' => 'Reset password',
			'newPassword.done' => 'Your password was reset. Please sign in with the new password.',
			'files.title' => 'Shared files',
			'files.description' => 'Uploading with the same ID creates a new revision; older revisions are kept.',
			'files.fileId' => 'File ID',
			'files.fileIdHint' => 'Letters, digits, _ and -, up to 64 characters',
			'files.comment' => 'Comment (optional)',
			'files.search' => 'Show history',
			'files.upload' => 'Upload',
			'files.uploaded' => ({required Object revision}) => 'Uploaded (revision ${revision}).',
			'files.download' => 'Download',
			'files.downloaded' => 'Saved.',
			'files.empty' => 'There is no file with this ID.',
			'files.revision' => 'Revision',
			'files.name' => 'File name',
			'files.size' => 'Size',
			'files.invalidId' => 'The file ID may contain only letters, digits, _ and -, up to 64 characters.',
			'admin.signups.title' => 'Sign-up requests',
			'admin.signups.empty' => 'There are no pending requests.',
			'admin.signups.userId' => 'Preferred ID',
			'admin.signups.email' => 'Email',
			'admin.signups.created' => 'Requested at',
			'admin.signups.approve' => 'Approve',
			'admin.signups.reject' => 'Reject',
			'admin.signups.appUserId' => 'Staff ID (already registered in the App DB)',
			'admin.signups.approved' => 'Approved. Hand the code to the person.',
			'admin.signups.rejected' => 'Rejected.',
			'admin.signups.confirmReject' => 'Reject this request?',
			'admin.resets.title' => 'Reset requests',
			'admin.resets.empty' => 'There are no pending requests.',
			'admin.resets.issue' => 'Issue code',
			'admin.resets.issued' => 'Code issued. Verify the person and hand it over.',
			'admin.resets.created' => 'Requested at',
			'admin.issuedCode.title' => 'Issued code',
			'admin.issuedCode.code' => 'Code',
			'admin.issuedCode.expires' => 'Expires',
			'admin.issuedCode.mailed' => 'Sent by email',
			'admin.issuedCode.handOver' => 'Hand this to the person. It cannot be shown again after closing.',
			_ => null,
		};
	}
}
