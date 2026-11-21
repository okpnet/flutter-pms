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
class ManualStringsEn extends ManualStrings with BaseTranslations<ManualLocale, ManualStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ManualLocale.build] is preferred.
	ManualStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ManualLocale, ManualStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ManualLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ManualLocale, ManualStrings> _meta;
	@override TranslationMetadata<ManualLocale, ManualStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ManualStringsEn _root = this; // ignore: unused_field

	@override 
	ManualStringsEn $copyWith({TranslationMetadata<ManualLocale, ManualStrings>? meta}) => ManualStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get menuGroup => 'Quality documents';
	@override String get menuManual => 'Manual';
	@override String get title => 'Manual';
	@override String get loading => 'Loading…';
	@override String get empty => 'There are no pages.';
	@override late final _ManualStrings$view$en view = _ManualStrings$view$en._(_root);
	@override late final _ManualStrings$create$en create = _ManualStrings$create$en._(_root);
	@override late final _ManualStrings$edit$en edit = _ManualStrings$edit$en._(_root);
	@override late final _ManualStrings$linkDialog$en linkDialog = _ManualStrings$linkDialog$en._(_root);
	@override late final _ManualStrings$history$en history = _ManualStrings$history$en._(_root);
	@override late final _ManualStrings$export$en export = _ManualStrings$export$en._(_root);
	@override late final _ManualStrings$pdf$en pdf = _ManualStrings$pdf$en._(_root);
	@override late final _ManualStrings$approval$en approval = _ManualStrings$approval$en._(_root);
	@override late final _ManualStrings$errors$en errors = _ManualStrings$errors$en._(_root);
}

// Path: view
class _ManualStrings$view$en extends ManualStrings$view$ja {
	_ManualStrings$view$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get readOnly => 'Read only';
	@override String get tocTitle => 'Contents';
	@override String get tocFold => 'Contents / search';
	@override String get searchHint => 'Search titles and text';
	@override String get searchNone => 'Nothing found.';
	@override String get edit => 'Edit';
	@override String get addChild => 'Add child page';
	@override String get addRoot => 'Add root';
	@override String get history => 'History';
	@override String get markdown => 'Markdown';
	@override String get pdf => 'PDF';
	@override String get breadcrumbHome => 'Manual';
	@override String get pageToc => 'On this page';
	@override String get children => 'Under this page';
	@override String get backlinks => 'Pages linking here';
	@override String get noBody => 'There is no text yet.';
	@override String meta({required Object by, required Object at, required Object rev}) => 'Updated by ${by} · ${at} · rev ${rev}';
	@override String missingLink({required Object title}) => 'The page "${title}" does not exist yet.';
	@override String missingLinkAdmin({required Object title}) => '"${title}" does not exist yet. Tap to create it.';
	@override String get rootBadge => 'Root';
	@override String get selectPage => 'Choose a page from the contents.';
}

// Path: create
class _ManualStrings$create$en extends ManualStrings$create$ja {
	_ManualStrings$create$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get titleChild => 'Add child page';
	@override String get titleRoot => 'Add root';
	@override String get titleMissing => 'Create page';
	@override String get nameLabel => 'Page name';
	@override String get nameHint => 'Name of the new page';
	@override String get controlNumberLabel => 'Control number';
	@override String get controlNumberHint => 'Document control number (decided by the user)';
	@override String get create => 'Create';
	@override String get cancel => 'Cancel';
}

// Path: edit
class _ManualStrings$edit$en extends ManualStrings$edit$ja {
	_ManualStrings$edit$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Edit page';
	@override String get rootNoBody => 'A root (document) has no body. Write the body in a child page.';
	@override String get nameLabel => 'Page name';
	@override String get required => 'Required';
	@override String get bodyLabel => 'Text';
	@override String get modeVisual => 'Visual';
	@override String get modeMarkdown => 'Markdown';
	@override String get save => 'Save';
	@override String get cancel => 'Cancel';
	@override String get preview => 'Preview';
	@override String saved({required Object rev}) => 'Saved (rev ${rev}).';
	@override String get nothingChanged => 'Nothing changed.';
	@override String get discardTitle => 'Discard changes?';
	@override String get discardMessage => 'There are unsaved changes. Discard them and go back?';
	@override String get discard => 'Discard';
	@override String get keepEditing => 'Keep editing';
	@override late final _ManualStrings$edit$toolbar$en toolbar = _ManualStrings$edit$toolbar$en._(_root);
}

// Path: linkDialog
class _ManualStrings$linkDialog$en extends ManualStrings$linkDialog$ja {
	_ManualStrings$linkDialog$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insert link';
	@override String get searchHint => 'Search a page, or type a new page name';
	@override String get existing => 'Existing pages';
	@override String createNew({required Object title}) => 'Create page "${title}" and link';
	@override String get none => 'No matching page.';
	@override String get cancel => 'Cancel';
}

// Path: history
class _ManualStrings$history$en extends ManualStrings$history$ja {
	_ManualStrings$history$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'History';
	@override String get empty => 'There is no history.';
	@override String get restore => 'Restore this version';
	@override String get restoreTitle => 'Restore this version?';
	@override String restoreMessage({required Object rev}) => 'Restore the content of rev ${rev}. The current version is kept in the history.';
	@override String get current => 'Current version';
	@override String versionMeta({required Object rev, required Object by, required Object at}) => 'Rev ${rev} · ${by} · ${at}';
	@override String get close => 'Close';
}

// Path: export
class _ManualStrings$export$en extends ManualStrings$export$ja {
	_ManualStrings$export$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Export Markdown';
	@override String get scope => 'Scope';
	@override String get scopePage => 'This page';
	@override String get scopeAll => 'Whole manual';
	@override String get copy => 'Copy';
	@override String get copied => 'Copied.';
	@override String get close => 'Close';
}

// Path: pdf
class _ManualStrings$pdf$en extends ManualStrings$pdf$ja {
	_ManualStrings$pdf$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Export PDF';
	@override String get scope => 'Scope';
	@override String get scopePage => 'This page';
	@override String get scopeAll => 'Whole document';
	@override String get note => 'The approval stamp, header, footer and theme follow the app settings.';
	@override String get save => 'Save';
	@override String get saved => 'Saved.';
	@override String get canceled => 'Save canceled.';
	@override String get building => 'Creating the PDF…';
	@override String get failed => 'Could not create the PDF.';
	@override String get close => 'Close';
}

// Path: approval
class _ManualStrings$approval$en extends ManualStrings$approval$ja {
	_ManualStrings$approval$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get pending => 'Pending approval';
	@override String get pendingNote => 'This document is pending approval. Only approvers and administrators can read it until it is approved.';
	@override String get unreadable => 'This document is pending approval and is not published.';
	@override String get stamps => 'Approval';
	@override String get rootOnly => 'Approval is recorded on the root document.';
}

// Path: errors
class _ManualStrings$errors$en extends ManualStrings$errors$ja {
	_ManualStrings$errors$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get titleRequired => 'Enter a page name.';
	@override String get titleDuplicate => 'A page with the same name exists.';
	@override String get notFound => 'Page not found.';
	@override String get notAdmin => 'Only administrators can edit.';
	@override String get controlNumberRequired => 'Enter a control number.';
}

// Path: edit.toolbar
class _ManualStrings$edit$toolbar$en extends ManualStrings$edit$toolbar$ja {
	_ManualStrings$edit$toolbar$en._(ManualStringsEn root) : this._root = root, super.internal(root);

	final ManualStringsEn _root; // ignore: unused_field

	// Translations
	@override String get h2 => 'Heading 2';
	@override String get h3 => 'Heading 3';
	@override String get bold => 'Bold';
	@override String get italic => 'Italic';
	@override String get bullets => 'Bullets';
	@override String get numbered => 'Numbered';
	@override String get quote => 'Quote';
	@override String get code => 'Code';
	@override String get table => 'Table';
	@override String get rule => 'Divider';
	@override String get link => 'Link';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ManualStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuGroup' => 'Quality documents',
			'menuManual' => 'Manual',
			'title' => 'Manual',
			'loading' => 'Loading…',
			'empty' => 'There are no pages.',
			'view.readOnly' => 'Read only',
			'view.tocTitle' => 'Contents',
			'view.tocFold' => 'Contents / search',
			'view.searchHint' => 'Search titles and text',
			'view.searchNone' => 'Nothing found.',
			'view.edit' => 'Edit',
			'view.addChild' => 'Add child page',
			'view.addRoot' => 'Add root',
			'view.history' => 'History',
			'view.markdown' => 'Markdown',
			'view.pdf' => 'PDF',
			'view.breadcrumbHome' => 'Manual',
			'view.pageToc' => 'On this page',
			'view.children' => 'Under this page',
			'view.backlinks' => 'Pages linking here',
			'view.noBody' => 'There is no text yet.',
			'view.meta' => ({required Object by, required Object at, required Object rev}) => 'Updated by ${by} · ${at} · rev ${rev}',
			'view.missingLink' => ({required Object title}) => 'The page "${title}" does not exist yet.',
			'view.missingLinkAdmin' => ({required Object title}) => '"${title}" does not exist yet. Tap to create it.',
			'view.rootBadge' => 'Root',
			'view.selectPage' => 'Choose a page from the contents.',
			'create.titleChild' => 'Add child page',
			'create.titleRoot' => 'Add root',
			'create.titleMissing' => 'Create page',
			'create.nameLabel' => 'Page name',
			'create.nameHint' => 'Name of the new page',
			'create.controlNumberLabel' => 'Control number',
			'create.controlNumberHint' => 'Document control number (decided by the user)',
			'create.create' => 'Create',
			'create.cancel' => 'Cancel',
			'edit.heading' => 'Edit page',
			'edit.rootNoBody' => 'A root (document) has no body. Write the body in a child page.',
			'edit.nameLabel' => 'Page name',
			'edit.required' => 'Required',
			'edit.bodyLabel' => 'Text',
			'edit.modeVisual' => 'Visual',
			'edit.modeMarkdown' => 'Markdown',
			'edit.save' => 'Save',
			'edit.cancel' => 'Cancel',
			'edit.preview' => 'Preview',
			'edit.saved' => ({required Object rev}) => 'Saved (rev ${rev}).',
			'edit.nothingChanged' => 'Nothing changed.',
			'edit.discardTitle' => 'Discard changes?',
			'edit.discardMessage' => 'There are unsaved changes. Discard them and go back?',
			'edit.discard' => 'Discard',
			'edit.keepEditing' => 'Keep editing',
			'edit.toolbar.h2' => 'Heading 2',
			'edit.toolbar.h3' => 'Heading 3',
			'edit.toolbar.bold' => 'Bold',
			'edit.toolbar.italic' => 'Italic',
			'edit.toolbar.bullets' => 'Bullets',
			'edit.toolbar.numbered' => 'Numbered',
			'edit.toolbar.quote' => 'Quote',
			'edit.toolbar.code' => 'Code',
			'edit.toolbar.table' => 'Table',
			'edit.toolbar.rule' => 'Divider',
			'edit.toolbar.link' => 'Link',
			'linkDialog.title' => 'Insert link',
			'linkDialog.searchHint' => 'Search a page, or type a new page name',
			'linkDialog.existing' => 'Existing pages',
			'linkDialog.createNew' => ({required Object title}) => 'Create page "${title}" and link',
			'linkDialog.none' => 'No matching page.',
			'linkDialog.cancel' => 'Cancel',
			'history.title' => 'History',
			'history.empty' => 'There is no history.',
			'history.restore' => 'Restore this version',
			'history.restoreTitle' => 'Restore this version?',
			'history.restoreMessage' => ({required Object rev}) => 'Restore the content of rev ${rev}. The current version is kept in the history.',
			'history.current' => 'Current version',
			'history.versionMeta' => ({required Object rev, required Object by, required Object at}) => 'Rev ${rev} · ${by} · ${at}',
			'history.close' => 'Close',
			'export.title' => 'Export Markdown',
			'export.scope' => 'Scope',
			'export.scopePage' => 'This page',
			'export.scopeAll' => 'Whole manual',
			'export.copy' => 'Copy',
			'export.copied' => 'Copied.',
			'export.close' => 'Close',
			'pdf.title' => 'Export PDF',
			'pdf.scope' => 'Scope',
			'pdf.scopePage' => 'This page',
			'pdf.scopeAll' => 'Whole document',
			'pdf.note' => 'The approval stamp, header, footer and theme follow the app settings.',
			'pdf.save' => 'Save',
			'pdf.saved' => 'Saved.',
			'pdf.canceled' => 'Save canceled.',
			'pdf.building' => 'Creating the PDF…',
			'pdf.failed' => 'Could not create the PDF.',
			'pdf.close' => 'Close',
			'approval.pending' => 'Pending approval',
			'approval.pendingNote' => 'This document is pending approval. Only approvers and administrators can read it until it is approved.',
			'approval.unreadable' => 'This document is pending approval and is not published.',
			'approval.stamps' => 'Approval',
			'approval.rootOnly' => 'Approval is recorded on the root document.',
			'errors.titleRequired' => 'Enter a page name.',
			'errors.titleDuplicate' => 'A page with the same name exists.',
			'errors.notFound' => 'Page not found.',
			'errors.notAdmin' => 'Only administrators can edit.',
			'errors.controlNumberRequired' => 'Enter a control number.',
			_ => null,
		};
	}
}
