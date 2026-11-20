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
class BarcodeEntryStringsEn extends BarcodeEntryStrings with BaseTranslations<BarcodeEntryLocale, BarcodeEntryStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [BarcodeEntryLocale.build] is preferred.
	BarcodeEntryStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: BarcodeEntryLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings> _meta;
	@override TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final BarcodeEntryStringsEn _root = this; // ignore: unused_field

	@override 
	BarcodeEntryStringsEn $copyWith({TranslationMetadata<BarcodeEntryLocale, BarcodeEntryStrings>? meta}) => BarcodeEntryStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _BarcodeEntryStrings$menu$en menu = _BarcodeEntryStrings$menu$en._(_root);
	@override String get title => 'Barcode';
	@override late final _BarcodeEntryStrings$steps$en steps = _BarcodeEntryStrings$steps$en._(_root);
	@override late final _BarcodeEntryStrings$kinds$en kinds = _BarcodeEntryStrings$kinds$en._(_root);
	@override late final _BarcodeEntryStrings$modes$en modes = _BarcodeEntryStrings$modes$en._(_root);
	@override late final _BarcodeEntryStrings$input$en input = _BarcodeEntryStrings$input$en._(_root);
	@override late final _BarcodeEntryStrings$ngReasons$en ngReasons = _BarcodeEntryStrings$ngReasons$en._(_root);
	@override late final _BarcodeEntryStrings$notice$en notice = _BarcodeEntryStrings$notice$en._(_root);
	@override late final _BarcodeEntryStrings$log$en log = _BarcodeEntryStrings$log$en._(_root);
	@override late final _BarcodeEntryStrings$queue$en queue = _BarcodeEntryStrings$queue$en._(_root);
}

// Path: menu
class _BarcodeEntryStrings$menu$en extends BarcodeEntryStrings$menu$ja {
	_BarcodeEntryStrings$menu$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Work records';
	@override String get item => 'Barcode';
}

// Path: steps
class _BarcodeEntryStrings$steps$en extends BarcodeEntryStrings$steps$ja {
	_BarcodeEntryStrings$steps$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get top => 'Reading top';
	@override String get start => 'Choose whether to start';
	@override String get issueShelf => 'Issue from shelf';
	@override String get qty => 'Enter quantity';
	@override String get eval => 'Evaluation';
	@override String get ng => 'Rejection handling';
	@override String get putShelf => 'Shelf move reading (put away)';
	@override String get stockItem => 'Product / purchased item reading';
	@override String get stockQty => 'Enter quantity';
	@override String get recvQty => 'Receiving inspection (enter quantity)';
	@override String get recvEval => 'Receiving inspection (evaluation)';
	@override String get equipment => 'Equipment inspection';
	@override String get supplyChoice => 'Receive and inspect supplied material';
}

// Path: kinds
class _BarcodeEntryStrings$kinds$en extends BarcodeEntryStrings$kinds$ja {
	_BarcodeEntryStrings$kinds$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get work => 'Work order';
	@override String get shelf => 'Shelf';
	@override String get purchase => 'Purchased item';
	@override String get item => 'Product / purchased item';
	@override String get equipment => 'Equipment';
	@override String get supply => 'Supplied material';
}

// Path: modes
class _BarcodeEntryStrings$modes$en extends BarcodeEntryStrings$modes$ja {
	_BarcodeEntryStrings$modes$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _BarcodeEntryStrings$modes$work$en work = _BarcodeEntryStrings$modes$work$en._(_root);
	@override late final _BarcodeEntryStrings$modes$receive$en receive = _BarcodeEntryStrings$modes$receive$en._(_root);
	@override late final _BarcodeEntryStrings$modes$shelf$en shelf = _BarcodeEntryStrings$modes$shelf$en._(_root);
	@override late final _BarcodeEntryStrings$modes$equipment$en equipment = _BarcodeEntryStrings$modes$equipment$en._(_root);
	@override late final _BarcodeEntryStrings$modes$supply$en supply = _BarcodeEntryStrings$modes$supply$en._(_root);
}

// Path: input
class _BarcodeEntryStrings$input$en extends BarcodeEntryStrings$input$ja {
	_BarcodeEntryStrings$input$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get topTitle => 'Scan a barcode';
	@override String get topHint => 'Scan with a barcode reader, or type and press Enter. The kind is detected automatically (choose a kind above to accept only that kind).';
	@override String get label => 'Barcode / input';
	@override String get commit => 'Submit';
	@override String get camera => 'Scan with camera';
	@override String get cameraClose => 'Close camera';
	@override String get cameraError => 'The camera is not available. Check the permission, or use the reader or manual input.';
	@override String get cancel => 'Cancel';
	@override String get qtyLabel => 'Quantity';
	@override String get openRegister => 'Open the work register';
	@override String get startQuestion => 'Start this work? (Material is issued from the shelf.)';
	@override String get answerYes => 'Yes';
	@override String get answerNo => 'No';
	@override String get pass => 'Pass';
	@override String get fail => 'Fail';
	@override String get evalQuestion => 'Choose an evaluation.';
	@override String get ngReason => 'Reason for rejection';
	@override String get ngConfirm => 'Continue as rejected';
	@override String issueShelfHint({required Object item}) => 'Scan the shelf to take the material for "${item}" from; it is issued and the work starts.';
	@override String putShelfHint({required Object judge, required Object qty, required Object unit}) => 'Scan the shelf for the ${judge} goods (${qty} ${unit}); they are put away.';
	@override String stockItemHint({required Object shelf}) => 'Scan the product / purchased item to put in "${shelf}".';
	@override String qtyHint({required Object remain, required Object unit}) => 'Remaining ${remain} ${unit} (an integer of 1 or more)';
	@override String get inspectionSave => 'Record inspection results';
	@override late final _BarcodeEntryStrings$input$inspectionResults$en inspectionResults = _BarcodeEntryStrings$input$inspectionResults$en._(_root);
	@override String get judgePass => 'passed';
	@override String get judgeFail => 'rejected';
	@override String supplySummary({required Object item, required Object remain, required Object unit, required Object held}) => '${item}: not yet received ${remain} ${unit}, awaiting inspection (on hold) ${held} ${unit}';
	@override String get supplyChoiceLabel => 'Choose an operation.';
	@override String get supplyReceive => 'Receive (put on hold)';
	@override String get supplyAccept => 'Inspection passed (release the hold)';
	@override String get supplyReject => 'Inspection failed (register a nonconformity; stays on hold)';
	@override String get supplyRegister => 'Register';
}

// Path: ngReasons
class _BarcodeEntryStrings$ngReasons$en extends BarcodeEntryStrings$ngReasons$ja {
	_BarcodeEntryStrings$ngReasons$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get dimension => 'Dimension defect';
	@override String get appearance => 'Appearance defect';
	@override String get material => 'Material defect';
	@override String get shortage => 'Quantity shortage';
	@override String get other => 'Other';
}

// Path: notice
class _BarcodeEntryStrings$notice$en extends BarcodeEntryStrings$notice$ja {
	_BarcodeEntryStrings$notice$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Scan a barcode or type a value.';
	@override String unknown({required Object value}) => '"${value}" is not a registered barcode. Scan again.';
	@override String wrongKind({required Object mode, required Object expected, required Object actual}) => 'In "${mode}", scan a ${expected} barcode. You scanned a ${actual}.';
	@override String get needShelfFirst => 'Scan a shelf barcode first for products / purchased items (shelf move).';
	@override String expectShelf({required Object actual}) => 'This is a ${actual} barcode. Scan a shelf barcode.';
	@override String expectItem({required Object actual}) => 'This is a ${actual} barcode. Scan a product / purchased item barcode.';
	@override String get qtyInvalid => 'Enter a quantity of 1 or more as an integer.';
	@override String qtyOverWork({required Object remain, required Object unit}) => 'The remaining ordered quantity is ${remain} ${unit}. Enter that or less.';
	@override String qtyOverPurchase({required Object remain, required Object unit}) => 'The remaining ordered quantity is ${remain} ${unit}. Enter that or less.';
	@override String get workDone => 'This work order is complete up to the ordered quantity. Scan the next barcode.';
	@override String get purchaseDone => 'This item has been received up to the ordered quantity. Scan the next barcode.';
	@override String get workStopped => 'This work order is stopped. Resume it before registering. Scan the next barcode.';
	@override String get workClosed => 'This work order is closed by discontinuation or order cancellation and cannot be registered. Scan the next barcode.';
	@override String get purchaseStopped => 'This purchase order line is stopped. Resume it before registering. Scan the next barcode.';
	@override String get purchaseClosed => 'This purchase order line is fully canceled and cannot be registered. Scan the next barcode.';
	@override String get canceled => 'Canceled. Start scanning again.';
	@override String get notStarted => 'Not started. Scan the next barcode.';
	@override String started({required Object shelf}) => 'Issued from ${shelf} and started the work. Scan the next barcode.';
	@override String stored({required Object shelf}) => 'Put away in ${shelf}. Scan the next barcode.';
	@override String get inspected => 'Inspection results recorded. Scan the next barcode.';
	@override String get supplied => 'Supplied material registered. Scan the next barcode.';
	@override String qtyOverSupply({required Object remain, required Object unit}) => 'You can register up to ${remain} ${unit}. Enter that or less.';
	@override String queued({required Object count}) => 'Added to the queue (${count}). Scan the next barcode.';
	@override String queueFailed({required Object done, required Object total}) => 'Registered ${done} of ${total}, then failed. The queue was cleared. Start scanning again.';
	@override String get failed => 'Could not register. Check the connection and try again.';
}

// Path: log
class _BarcodeEntryStrings$log$en extends BarcodeEntryStrings$log$ja {
	_BarcodeEntryStrings$log$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String queueFailed({required Object done, required Object total, required Object sym}) => 'Queue registration failed (${done}/${total}): ${sym}';
	@override String get title => 'History';
	@override String get empty => 'No history yet.';
	@override String unknown({required Object value}) => 'Unreadable barcode: ${value}';
	@override String workDone({required Object sym, required Object item, required Object task}) => '${sym} ${item} / ${task}: ordered quantity is complete';
	@override String purchaseDone({required Object sym, required Object item}) => '${sym} ${item}: receiving is complete';
	@override String workBlocked({required Object sym, required Object item, required Object task}) => '${sym} ${item} / ${task}: cannot register (stopped or closed)';
	@override String purchaseBlocked({required Object sym, required Object item}) => '${sym} ${item}: cannot register (stopped or fully canceled)';
	@override String get canceled => 'Canceled';
	@override String notStarted({required Object sym}) => '${sym}: not started';
	@override String started({required Object sym, required Object item, required Object task, required Object shelf}) => '${sym} ${item} / ${task}: issued material from ${shelf} and started the work';
	@override String storedWork({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item} / ${task}: put ${qty} ${unit} (${judge}) away in ${shelf}';
	@override String storedWorkDone({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item} / ${task}: put ${qty} ${unit} (${judge}) away in ${shelf} (ordered quantity complete)';
	@override String storedPurchase({required Object sym, required Object item, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}: receiving inspection of ${qty} ${unit} (${judge}), put away in ${shelf}';
	@override String storedItem({required Object shelf, required Object item, required Object qty, required Object unit}) => '${shelf}: put away ${item} ${qty} ${unit}';
	@override String inspected({required Object code, required Object name, required Object count}) => 'Equipment inspection ${code} ${name}: recorded ${count} items (all passed)';
	@override String inspectedWithIssue({required Object code, required Object name, required Object count, required Object issues}) => 'Equipment inspection ${code} ${name}: recorded ${count} items (${issues} need attention)';
	@override String supplied({required Object sym, required Object item, required Object qty, required Object unit}) => '${sym} ${item}: registered supplied material ${qty} ${unit}';
	@override String failed({required Object sym}) => 'Registration failed: ${sym}';
}

// Path: queue
class _BarcodeEntryStrings$queue$en extends BarcodeEntryStrings$queue$ja {
	_BarcodeEntryStrings$queue$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Queue';
	@override String register({required Object count}) => 'Register all (${count})';
	@override String get remove => 'Remove';
	@override String item({required Object sym, required Object qty, required Object unit, required Object shelf}) => '${sym} ${qty}${unit} → ${shelf}';
}

// Path: modes.work
class _BarcodeEntryStrings$modes$work$en extends BarcodeEntryStrings$modes$work$ja {
	_BarcodeEntryStrings$modes$work$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Work record';
	@override String get hint => 'Scan the barcode of a work order (manufactured / outsourced item).';
}

// Path: modes.receive
class _BarcodeEntryStrings$modes$receive$en extends BarcodeEntryStrings$modes$receive$ja {
	_BarcodeEntryStrings$modes$receive$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Receiving inspection';
	@override String get hint => 'Scan the barcode of a purchased item (purchase order line).';
}

// Path: modes.shelf
class _BarcodeEntryStrings$modes$shelf$en extends BarcodeEntryStrings$modes$shelf$ja {
	_BarcodeEntryStrings$modes$shelf$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Shelf move';
	@override String get hint => 'Scan a shelf barcode, then scan a product / purchased item.';
}

// Path: modes.equipment
class _BarcodeEntryStrings$modes$equipment$en extends BarcodeEntryStrings$modes$equipment$ja {
	_BarcodeEntryStrings$modes$equipment$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Equipment inspection';
	@override String get hint => 'Scan an equipment barcode.';
}

// Path: modes.supply
class _BarcodeEntryStrings$modes$supply$en extends BarcodeEntryStrings$modes$supply$ja {
	_BarcodeEntryStrings$modes$supply$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get label => 'Supplied material';
	@override String get hint => 'Scan the barcode of a supply line.';
}

// Path: input.inspectionResults
class _BarcodeEntryStrings$input$inspectionResults$en extends BarcodeEntryStrings$input$inspectionResults$ja {
	_BarcodeEntryStrings$input$inspectionResults$en._(BarcodeEntryStringsEn root) : this._root = root, super.internal(root);

	final BarcodeEntryStringsEn _root; // ignore: unused_field

	// Translations
	@override String get pass => 'Pass';
	@override String get fail => 'Fail';
	@override String get recheck => 'Needs recheck';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on BarcodeEntryStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Work records',
			'menu.item' => 'Barcode',
			'title' => 'Barcode',
			'steps.top' => 'Reading top',
			'steps.start' => 'Choose whether to start',
			'steps.issueShelf' => 'Issue from shelf',
			'steps.qty' => 'Enter quantity',
			'steps.eval' => 'Evaluation',
			'steps.ng' => 'Rejection handling',
			'steps.putShelf' => 'Shelf move reading (put away)',
			'steps.stockItem' => 'Product / purchased item reading',
			'steps.stockQty' => 'Enter quantity',
			'steps.recvQty' => 'Receiving inspection (enter quantity)',
			'steps.recvEval' => 'Receiving inspection (evaluation)',
			'steps.equipment' => 'Equipment inspection',
			'steps.supplyChoice' => 'Receive and inspect supplied material',
			'kinds.work' => 'Work order',
			'kinds.shelf' => 'Shelf',
			'kinds.purchase' => 'Purchased item',
			'kinds.item' => 'Product / purchased item',
			'kinds.equipment' => 'Equipment',
			'kinds.supply' => 'Supplied material',
			'modes.work.label' => 'Work record',
			'modes.work.hint' => 'Scan the barcode of a work order (manufactured / outsourced item).',
			'modes.receive.label' => 'Receiving inspection',
			'modes.receive.hint' => 'Scan the barcode of a purchased item (purchase order line).',
			'modes.shelf.label' => 'Shelf move',
			'modes.shelf.hint' => 'Scan a shelf barcode, then scan a product / purchased item.',
			'modes.equipment.label' => 'Equipment inspection',
			'modes.equipment.hint' => 'Scan an equipment barcode.',
			'modes.supply.label' => 'Supplied material',
			'modes.supply.hint' => 'Scan the barcode of a supply line.',
			'input.topTitle' => 'Scan a barcode',
			'input.topHint' => 'Scan with a barcode reader, or type and press Enter. The kind is detected automatically (choose a kind above to accept only that kind).',
			'input.label' => 'Barcode / input',
			'input.commit' => 'Submit',
			'input.camera' => 'Scan with camera',
			'input.cameraClose' => 'Close camera',
			'input.cameraError' => 'The camera is not available. Check the permission, or use the reader or manual input.',
			'input.cancel' => 'Cancel',
			'input.qtyLabel' => 'Quantity',
			'input.openRegister' => 'Open the work register',
			'input.startQuestion' => 'Start this work? (Material is issued from the shelf.)',
			'input.answerYes' => 'Yes',
			'input.answerNo' => 'No',
			'input.pass' => 'Pass',
			'input.fail' => 'Fail',
			'input.evalQuestion' => 'Choose an evaluation.',
			'input.ngReason' => 'Reason for rejection',
			'input.ngConfirm' => 'Continue as rejected',
			'input.issueShelfHint' => ({required Object item}) => 'Scan the shelf to take the material for "${item}" from; it is issued and the work starts.',
			'input.putShelfHint' => ({required Object judge, required Object qty, required Object unit}) => 'Scan the shelf for the ${judge} goods (${qty} ${unit}); they are put away.',
			'input.stockItemHint' => ({required Object shelf}) => 'Scan the product / purchased item to put in "${shelf}".',
			'input.qtyHint' => ({required Object remain, required Object unit}) => 'Remaining ${remain} ${unit} (an integer of 1 or more)',
			'input.inspectionSave' => 'Record inspection results',
			'input.inspectionResults.pass' => 'Pass',
			'input.inspectionResults.fail' => 'Fail',
			'input.inspectionResults.recheck' => 'Needs recheck',
			'input.judgePass' => 'passed',
			'input.judgeFail' => 'rejected',
			'input.supplySummary' => ({required Object item, required Object remain, required Object unit, required Object held}) => '${item}: not yet received ${remain} ${unit}, awaiting inspection (on hold) ${held} ${unit}',
			'input.supplyChoiceLabel' => 'Choose an operation.',
			'input.supplyReceive' => 'Receive (put on hold)',
			'input.supplyAccept' => 'Inspection passed (release the hold)',
			'input.supplyReject' => 'Inspection failed (register a nonconformity; stays on hold)',
			'input.supplyRegister' => 'Register',
			'ngReasons.dimension' => 'Dimension defect',
			'ngReasons.appearance' => 'Appearance defect',
			'ngReasons.material' => 'Material defect',
			'ngReasons.shortage' => 'Quantity shortage',
			'ngReasons.other' => 'Other',
			'notice.empty' => 'Scan a barcode or type a value.',
			'notice.unknown' => ({required Object value}) => '"${value}" is not a registered barcode. Scan again.',
			'notice.wrongKind' => ({required Object mode, required Object expected, required Object actual}) => 'In "${mode}", scan a ${expected} barcode. You scanned a ${actual}.',
			'notice.needShelfFirst' => 'Scan a shelf barcode first for products / purchased items (shelf move).',
			'notice.expectShelf' => ({required Object actual}) => 'This is a ${actual} barcode. Scan a shelf barcode.',
			'notice.expectItem' => ({required Object actual}) => 'This is a ${actual} barcode. Scan a product / purchased item barcode.',
			'notice.qtyInvalid' => 'Enter a quantity of 1 or more as an integer.',
			'notice.qtyOverWork' => ({required Object remain, required Object unit}) => 'The remaining ordered quantity is ${remain} ${unit}. Enter that or less.',
			'notice.qtyOverPurchase' => ({required Object remain, required Object unit}) => 'The remaining ordered quantity is ${remain} ${unit}. Enter that or less.',
			'notice.workDone' => 'This work order is complete up to the ordered quantity. Scan the next barcode.',
			'notice.purchaseDone' => 'This item has been received up to the ordered quantity. Scan the next barcode.',
			'notice.workStopped' => 'This work order is stopped. Resume it before registering. Scan the next barcode.',
			'notice.workClosed' => 'This work order is closed by discontinuation or order cancellation and cannot be registered. Scan the next barcode.',
			'notice.purchaseStopped' => 'This purchase order line is stopped. Resume it before registering. Scan the next barcode.',
			'notice.purchaseClosed' => 'This purchase order line is fully canceled and cannot be registered. Scan the next barcode.',
			'notice.canceled' => 'Canceled. Start scanning again.',
			'notice.notStarted' => 'Not started. Scan the next barcode.',
			'notice.started' => ({required Object shelf}) => 'Issued from ${shelf} and started the work. Scan the next barcode.',
			'notice.stored' => ({required Object shelf}) => 'Put away in ${shelf}. Scan the next barcode.',
			'notice.inspected' => 'Inspection results recorded. Scan the next barcode.',
			'notice.supplied' => 'Supplied material registered. Scan the next barcode.',
			'notice.qtyOverSupply' => ({required Object remain, required Object unit}) => 'You can register up to ${remain} ${unit}. Enter that or less.',
			'notice.queued' => ({required Object count}) => 'Added to the queue (${count}). Scan the next barcode.',
			'notice.queueFailed' => ({required Object done, required Object total}) => 'Registered ${done} of ${total}, then failed. The queue was cleared. Start scanning again.',
			'notice.failed' => 'Could not register. Check the connection and try again.',
			'log.queueFailed' => ({required Object done, required Object total, required Object sym}) => 'Queue registration failed (${done}/${total}): ${sym}',
			'log.title' => 'History',
			'log.empty' => 'No history yet.',
			'log.unknown' => ({required Object value}) => 'Unreadable barcode: ${value}',
			'log.workDone' => ({required Object sym, required Object item, required Object task}) => '${sym} ${item} / ${task}: ordered quantity is complete',
			'log.purchaseDone' => ({required Object sym, required Object item}) => '${sym} ${item}: receiving is complete',
			'log.workBlocked' => ({required Object sym, required Object item, required Object task}) => '${sym} ${item} / ${task}: cannot register (stopped or closed)',
			'log.purchaseBlocked' => ({required Object sym, required Object item}) => '${sym} ${item}: cannot register (stopped or fully canceled)',
			'log.canceled' => 'Canceled',
			'log.notStarted' => ({required Object sym}) => '${sym}: not started',
			'log.started' => ({required Object sym, required Object item, required Object task, required Object shelf}) => '${sym} ${item} / ${task}: issued material from ${shelf} and started the work',
			'log.storedWork' => ({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item} / ${task}: put ${qty} ${unit} (${judge}) away in ${shelf}',
			'log.storedWorkDone' => ({required Object sym, required Object item, required Object task, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item} / ${task}: put ${qty} ${unit} (${judge}) away in ${shelf} (ordered quantity complete)',
			'log.storedPurchase' => ({required Object sym, required Object item, required Object qty, required Object unit, required Object judge, required Object shelf}) => '${sym} ${item}: receiving inspection of ${qty} ${unit} (${judge}), put away in ${shelf}',
			'log.storedItem' => ({required Object shelf, required Object item, required Object qty, required Object unit}) => '${shelf}: put away ${item} ${qty} ${unit}',
			'log.inspected' => ({required Object code, required Object name, required Object count}) => 'Equipment inspection ${code} ${name}: recorded ${count} items (all passed)',
			'log.inspectedWithIssue' => ({required Object code, required Object name, required Object count, required Object issues}) => 'Equipment inspection ${code} ${name}: recorded ${count} items (${issues} need attention)',
			'log.supplied' => ({required Object sym, required Object item, required Object qty, required Object unit}) => '${sym} ${item}: registered supplied material ${qty} ${unit}',
			'log.failed' => ({required Object sym}) => 'Registration failed: ${sym}',
			'queue.title' => 'Queue',
			'queue.register' => ({required Object count}) => 'Register all (${count})',
			'queue.remove' => 'Remove',
			'queue.item' => ({required Object sym, required Object qty, required Object unit, required Object shelf}) => '${sym} ${qty}${unit} → ${shelf}',
			_ => null,
		};
	}
}
