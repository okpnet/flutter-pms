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
class ApprovalStringsEn extends ApprovalStrings with BaseTranslations<ApprovalLocale, ApprovalStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ApprovalLocale.build] is preferred.
	ApprovalStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ApprovalLocale, ApprovalStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ApprovalLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ApprovalLocale, ApprovalStrings> _meta;
	@override TranslationMetadata<ApprovalLocale, ApprovalStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ApprovalStringsEn _root = this; // ignore: unused_field

	@override 
	ApprovalStringsEn $copyWith({TranslationMetadata<ApprovalLocale, ApprovalStrings>? meta}) => ApprovalStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get menuLabel => 'Approvals';
	@override String get title => 'Approvals';
	@override String get loading => 'Loading…';
	@override String get loadFailed => 'Could not load the pending approvals.';
	@override String get empty => 'There are no pending approvals.';
	@override late final _ApprovalStrings$menus$en menus = _ApprovalStrings$menus$en._(_root);
	@override late final _ApprovalStrings$kinds$en kinds = _ApprovalStrings$kinds$en._(_root);
	@override late final _ApprovalStrings$list$en list = _ApprovalStrings$list$en._(_root);
	@override late final _ApprovalStrings$dialog$en dialog = _ApprovalStrings$dialog$en._(_root);
	@override late final _ApprovalStrings$alert$en alert = _ApprovalStrings$alert$en._(_root);
}

// Path: menus
class _ApprovalStrings$menus$en extends ApprovalStrings$menus$ja {
	_ApprovalStrings$menus$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get operations => 'Operations & improvement';
	@override String get sales => 'Sales';
	@override String get purchasing => 'Purchasing';
}

// Path: kinds
class _ApprovalStrings$kinds$en extends ApprovalStrings$kinds$ja {
	_ApprovalStrings$kinds$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get document => 'Documents';
	@override String get order => 'Orders';
	@override String get shipping_order => 'Shipments';
	@override String get purchase => 'Purchase orders';
	@override String get unrecognized => 'Unrecorded purchases';
	@override String get complaint => 'Complaints';
	@override String get disposal => 'Dispositions';
	@override String get recurrence_prevention => 'Recurrence prevention';
}

// Path: list
class _ApprovalStrings$list$en extends ApprovalStrings$list$ja {
	_ApprovalStrings$list$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get searchHint => 'Search subject, detail, applicant';
	@override String get selectAll => 'Select all';
	@override String get clearSelection => 'Clear selection';
	@override String get approve => 'Approve';
	@override String get refer => 'Open';
	@override late final _ApprovalStrings$list$cols$en cols = _ApprovalStrings$list$cols$en._(_root);
	@override String step({required Object n}) => 'Step ${n}';
	@override String tabCount({required Object label, required Object count}) => '${label} (${count})';
	@override String selectedNote({required Object n}) => '${n} selected';
}

// Path: dialog
class _ApprovalStrings$dialog$en extends ApprovalStrings$dialog$ja {
	_ApprovalStrings$dialog$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm approval';
	@override String get note => 'You are about to approve the following. Enter your password.';
	@override String get password => 'Password';
	@override String get passwordWrong => 'The password is incorrect. Nothing was approved.';
	@override String get passwordUnavailable => 'Could not verify the password. Please try again later.';
	@override String get confirm => 'Approve';
	@override String get cancel => 'Cancel';
	@override String get close => 'Close';
	@override String get busy => 'Saving…';
	@override String get resultTitle => 'Approval result';
	@override String resultOk({required Object n}) => '${n} approval(s) saved.';
	@override String resultFailed({required Object n}) => '${n} could not be approved.';
	@override String by({required Object name}) => 'Approver: ${name}';
	@override String at({required Object at}) => 'Approved at: ${at}';
	@override late final _ApprovalStrings$dialog$errors$en errors = _ApprovalStrings$dialog$errors$en._(_root);
}

// Path: alert
class _ApprovalStrings$alert$en extends ApprovalStrings$alert$ja {
	_ApprovalStrings$alert$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String summary({required Object n}) => '${n} approval(s) pending';
	@override String link({required Object menu, required Object detail}) => '${menu} approvals (${detail})';
}

// Path: list.cols
class _ApprovalStrings$list$cols$en extends ApprovalStrings$list$cols$ja {
	_ApprovalStrings$list$cols$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get subject => 'Subject';
	@override String get detail => 'Detail';
	@override String get applicant => 'Applicant';
	@override String get appliedAt => 'Applied on';
	@override String get step => 'Approval step';
}

// Path: dialog.errors
class _ApprovalStrings$dialog$errors$en extends ApprovalStrings$dialog$errors$ja {
	_ApprovalStrings$dialog$errors$en._(ApprovalStringsEn root) : this._root = root, super.internal(root);

	final ApprovalStringsEn _root; // ignore: unused_field

	// Translations
	@override String get notApprover => 'You are not an approver for this step.';
	@override String get notYet => 'The previous step has not been approved.';
	@override String get already => 'Already approved.';
	@override String get notFound => 'The approval was not found.';
	@override String get other => 'Could not approve.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ApprovalStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuLabel' => 'Approvals',
			'title' => 'Approvals',
			'loading' => 'Loading…',
			'loadFailed' => 'Could not load the pending approvals.',
			'empty' => 'There are no pending approvals.',
			'menus.operations' => 'Operations & improvement',
			'menus.sales' => 'Sales',
			'menus.purchasing' => 'Purchasing',
			'kinds.document' => 'Documents',
			'kinds.order' => 'Orders',
			'kinds.shipping_order' => 'Shipments',
			'kinds.purchase' => 'Purchase orders',
			'kinds.unrecognized' => 'Unrecorded purchases',
			'kinds.complaint' => 'Complaints',
			'kinds.disposal' => 'Dispositions',
			'kinds.recurrence_prevention' => 'Recurrence prevention',
			'list.searchHint' => 'Search subject, detail, applicant',
			'list.selectAll' => 'Select all',
			'list.clearSelection' => 'Clear selection',
			'list.approve' => 'Approve',
			'list.refer' => 'Open',
			'list.cols.subject' => 'Subject',
			'list.cols.detail' => 'Detail',
			'list.cols.applicant' => 'Applicant',
			'list.cols.appliedAt' => 'Applied on',
			'list.cols.step' => 'Approval step',
			'list.step' => ({required Object n}) => 'Step ${n}',
			'list.tabCount' => ({required Object label, required Object count}) => '${label} (${count})',
			'list.selectedNote' => ({required Object n}) => '${n} selected',
			'dialog.title' => 'Confirm approval',
			'dialog.note' => 'You are about to approve the following. Enter your password.',
			'dialog.password' => 'Password',
			'dialog.passwordWrong' => 'The password is incorrect. Nothing was approved.',
			'dialog.passwordUnavailable' => 'Could not verify the password. Please try again later.',
			'dialog.confirm' => 'Approve',
			'dialog.cancel' => 'Cancel',
			'dialog.close' => 'Close',
			'dialog.busy' => 'Saving…',
			'dialog.resultTitle' => 'Approval result',
			'dialog.resultOk' => ({required Object n}) => '${n} approval(s) saved.',
			'dialog.resultFailed' => ({required Object n}) => '${n} could not be approved.',
			'dialog.by' => ({required Object name}) => 'Approver: ${name}',
			'dialog.at' => ({required Object at}) => 'Approved at: ${at}',
			'dialog.errors.notApprover' => 'You are not an approver for this step.',
			'dialog.errors.notYet' => 'The previous step has not been approved.',
			'dialog.errors.already' => 'Already approved.',
			'dialog.errors.notFound' => 'The approval was not found.',
			'dialog.errors.other' => 'Could not approve.',
			'alert.summary' => ({required Object n}) => '${n} approval(s) pending',
			'alert.link' => ({required Object menu, required Object detail}) => '${menu} approvals (${detail})',
			_ => null,
		};
	}
}
