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
class ProductionPlanStringsEn extends ProductionPlanStrings with BaseTranslations<ProductionPlanLocale, ProductionPlanStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ProductionPlanLocale.build] is preferred.
	ProductionPlanStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ProductionPlanLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings> _meta;
	@override TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ProductionPlanStringsEn _root = this; // ignore: unused_field

	@override 
	ProductionPlanStringsEn $copyWith({TranslationMetadata<ProductionPlanLocale, ProductionPlanStrings>? meta}) => ProductionPlanStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _ProductionPlanStrings$mrp$en mrp = _ProductionPlanStrings$mrp$en._(_root);
}

// Path: mrp
class _ProductionPlanStrings$mrp$en extends ProductionPlanStrings$mrp$ja {
	_ProductionPlanStrings$mrp$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Material requirements planning';
	@override String get menu => 'Material requirements planning';
	@override String get controlTitle => 'Material requirements planning (MRP)';
	@override String get redoLabel => 'Run as a re-MRP';
	@override String get redoNote => 'Unchecked: calculates only the orders not yet planned (order MRP). Checked: rebuilds all demand after the orders were reviewed (re-MRP).';
	@override late final _ProductionPlanStrings$mrp$redo$en redo = _ProductionPlanStrings$mrp$redo$en._(_root);
	@override String get run => 'Run MRP';
	@override String get running => 'Calculating';
	@override String get elapsed => 'Elapsed';
	@override late final _ProductionPlanStrings$mrp$empty$en empty = _ProductionPlanStrings$mrp$empty$en._(_root);
	@override late final _ProductionPlanStrings$mrp$confirm$en confirm = _ProductionPlanStrings$mrp$confirm$en._(_root);
	@override late final _ProductionPlanStrings$mrp$success$en success = _ProductionPlanStrings$mrp$success$en._(_root);
	@override late final _ProductionPlanStrings$mrp$mode$en mode = _ProductionPlanStrings$mrp$mode$en._(_root);
	@override late final _ProductionPlanStrings$mrp$failure$en failure = _ProductionPlanStrings$mrp$failure$en._(_root);
	@override late final _ProductionPlanStrings$mrp$result$en result = _ProductionPlanStrings$mrp$result$en._(_root);
	@override late final _ProductionPlanStrings$mrp$columns$en columns = _ProductionPlanStrings$mrp$columns$en._(_root);
	@override late final _ProductionPlanStrings$mrp$check$en check = _ProductionPlanStrings$mrp$check$en._(_root);
	@override late final _ProductionPlanStrings$mrp$step$en step = _ProductionPlanStrings$mrp$step$en._(_root);
	@override late final _ProductionPlanStrings$mrp$state$en state = _ProductionPlanStrings$mrp$state$en._(_root);
	@override late final _ProductionPlanStrings$mrp$decision$en decision = _ProductionPlanStrings$mrp$decision$en._(_root);
}

// Path: mrp.redo
class _ProductionPlanStrings$mrp$redo$en extends ProductionPlanStrings$mrp$redo$ja {
	_ProductionPlanStrings$mrp$redo$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get targetsTitle => 'Order lines to rebuild';
	@override String get targetsNote => 'When you choose order lines, only those lines and the material plans below them are rebuilt. When none are chosen, all demand is the target.';
	@override String get targetsAll => 'None chosen (all demand)';
	@override String get pick => 'Choose order lines';
}

// Path: mrp.empty
class _ProductionPlanStrings$mrp$empty$en extends ProductionPlanStrings$mrp$empty$ja {
	_ProductionPlanStrings$mrp$empty$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Not run yet';
	@override String get message => 'The result appears here after you press "Run MRP".';
}

// Path: mrp.confirm
class _ProductionPlanStrings$mrp$confirm$en extends ProductionPlanStrings$mrp$confirm$ja {
	_ProductionPlanStrings$mrp$confirm$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get titleOrder => 'Run MRP?';
	@override String get titleRedo => 'Run re-MRP?';
	@override String get warnHeavy => 'This is heavy and takes time.';
	@override String get warnWide => 'It affects a wide range, including other users\' work.';
	@override String get warnRedo => 'Re-MRP rebuilds all demand, so the impact is even larger than a normal MRP.';
	@override String warnScoped({required Object count}) => 'Only the ${count} chosen order lines and the material plans below them are rebuilt.';
	@override String get warnLock => 'You cannot operate or interrupt while it runs.';
	@override String get cancel => 'Cancel';
	@override String get go => 'Run';
}

// Path: mrp.success
class _ProductionPlanStrings$mrp$success$en extends ProductionPlanStrings$mrp$success$ja {
	_ProductionPlanStrings$mrp$success$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'MRP succeeded';
	@override String get at => 'Run at';
	@override String get mode => 'Mode';
	@override String get count => 'Suggestions';
	@override String get pending => 'Needs decision';
	@override String get late => 'Late';
	@override String get unit => '';
}

// Path: mrp.mode
class _ProductionPlanStrings$mrp$mode$en extends ProductionPlanStrings$mrp$mode$ja {
	_ProductionPlanStrings$mrp$mode$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get order => 'Order MRP';
	@override String get redo => 'Re-MRP';
}

// Path: mrp.failure
class _ProductionPlanStrings$mrp$failure$en extends ProductionPlanStrings$mrp$failure$ja {
	_ProductionPlanStrings$mrp$failure$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'The calculation could not be completed';
	@override String get message => 'Please wait a while and run it again.';
	@override String get pendingRemains => 'Suggestions that need a decision remain. Adopt or reject them, then commit.';
	@override String get cannotCommit => 'This result cannot be committed because data changed after the calculation, or a newer calculation exists. Please calculate again.';
	@override String get code => 'Error code';
}

// Path: mrp.result
class _ProductionPlanStrings$mrp$result$en extends ProductionPlanStrings$mrp$result$ja {
	_ProductionPlanStrings$mrp$result$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'MRP result (suggestions)';
	@override String get search => 'Search';
	@override String get decisionFilter => 'Decision';
	@override String get all => 'All';
	@override String get noRows => 'No matching suggestions';
	@override String get lateYes => 'Late';
	@override String get lateNo => '';
}

// Path: mrp.columns
class _ProductionPlanStrings$mrp$columns$en extends ProductionPlanStrings$mrp$columns$ja {
	_ProductionPlanStrings$mrp$columns$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get itemCode => 'Item code';
	@override String get itemName => 'Item name';
	@override String get symbol => 'Symbol';
	@override String get quantity => 'Quantity';
	@override String get allocation => 'Stock allocation';
	@override String get needDate => 'Need date';
	@override String get releaseDate => 'Release date';
	@override String get dueDate => 'Due date';
	@override String get late => 'Late';
	@override String get needUser => 'Needs decision (flag)';
	@override String get message => 'Message';
	@override String get purchase => 'Purchase';
	@override String get production => 'Production';
	@override String get outsource => 'Outsource';
	@override String get plan => 'Material plan';
	@override String get exception => 'Exception';
	@override String get supplyRequest => 'Supply request';
	@override String get isNew => 'New';
	@override String get isChange => 'Change';
	@override String get isCancel => 'Cancel';
	@override String get isKeep => 'Keep';
	@override String get isOption => 'Switch option';
	@override String get subjectEquipment => 'Equipment (overload)';
	@override String get subjectStock => 'Stock (excess)';
	@override String get subjectMaster => 'Master data (issue)';
}

// Path: mrp.check
class _ProductionPlanStrings$mrp$check$en extends ProductionPlanStrings$mrp$check$ja {
	_ProductionPlanStrings$mrp$check$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Check (master data problems)';
	@override String get note => 'Before MRP, checks item master problems (routings, suppliers, calendars, and so on). It only reads and changes nothing. MRP can still run with problems, and they appear as "master problem" suggestions in the result.';
	@override String get run => 'Check for problems';
	@override String get running => 'Checking';
	@override String get none => 'No problems were found.';
	@override String get count => 'Problems';
	@override String get more => 'Showing up to 30, most serious first.';
}

// Path: mrp.step
class _ProductionPlanStrings$mrp$step$en extends ProductionPlanStrings$mrp$step$ja {
	_ProductionPlanStrings$mrp$step$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get calc => 'Calculate and review';
	@override String get calcNote => '"Run MRP" commits straight away when nothing needs a decision. "Calculate and review" only calculates; you review and decide, then commit or discard.';
	@override String get ok => 'Run';
	@override String get awaitingTitle => 'Waiting to be committed';
	@override String get awaitingNote => 'Decide to adopt or reject the suggestions that need a decision, then commit. Planning data does not change until you commit. Calculating again without committing invalidates this result.';
	@override String get resumed => 'Picked up the previous calculation that was waiting to be committed.';
	@override String get pendingLeft => 'Suggestions still waiting for a decision';
	@override String get adoptShown => 'Adopt the shown suggestions';
	@override String get rejectShown => 'Reject the shown suggestions';
	@override String get commit => 'Commit';
	@override String get commitTitle => 'Commit this result?';
	@override String get commitNote => 'Adopted suggestions are applied to material plans, purchase orders, production plans, and allocation reservations.';
	@override String get commitForce => 'Reject pending and commit';
	@override String get commitForceTitle => 'Reject the pending suggestions and commit?';
	@override String get commitForceNote => 'Every suggestion still waiting for a decision is committed as rejected, and the check for data updated after the calculation is skipped.';
	@override String get discard => 'Discard';
	@override String get discardTitle => 'Discard this result?';
	@override String get discardNote => 'Planning data does not change.';
}

// Path: mrp.state
class _ProductionPlanStrings$mrp$state$en extends ProductionPlanStrings$mrp$state$ja {
	_ProductionPlanStrings$mrp$state$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Status';
	@override String get committed => 'Committed';
	@override String get awaiting => 'Waiting to be committed';
}

// Path: mrp.decision
class _ProductionPlanStrings$mrp$decision$en extends ProductionPlanStrings$mrp$decision$ja {
	_ProductionPlanStrings$mrp$decision$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get pending => 'Needs decision';
	@override String get adopted => 'Adopted';
	@override String get rejected => 'Rejected';
	@override String get info => 'Info';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ProductionPlanStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mrp.title' => 'Material requirements planning',
			'mrp.menu' => 'Material requirements planning',
			'mrp.controlTitle' => 'Material requirements planning (MRP)',
			'mrp.redoLabel' => 'Run as a re-MRP',
			'mrp.redoNote' => 'Unchecked: calculates only the orders not yet planned (order MRP). Checked: rebuilds all demand after the orders were reviewed (re-MRP).',
			'mrp.redo.targetsTitle' => 'Order lines to rebuild',
			'mrp.redo.targetsNote' => 'When you choose order lines, only those lines and the material plans below them are rebuilt. When none are chosen, all demand is the target.',
			'mrp.redo.targetsAll' => 'None chosen (all demand)',
			'mrp.redo.pick' => 'Choose order lines',
			'mrp.run' => 'Run MRP',
			'mrp.running' => 'Calculating',
			'mrp.elapsed' => 'Elapsed',
			'mrp.empty.title' => 'Not run yet',
			'mrp.empty.message' => 'The result appears here after you press "Run MRP".',
			'mrp.confirm.titleOrder' => 'Run MRP?',
			'mrp.confirm.titleRedo' => 'Run re-MRP?',
			'mrp.confirm.warnHeavy' => 'This is heavy and takes time.',
			'mrp.confirm.warnWide' => 'It affects a wide range, including other users\' work.',
			'mrp.confirm.warnRedo' => 'Re-MRP rebuilds all demand, so the impact is even larger than a normal MRP.',
			'mrp.confirm.warnScoped' => ({required Object count}) => 'Only the ${count} chosen order lines and the material plans below them are rebuilt.',
			'mrp.confirm.warnLock' => 'You cannot operate or interrupt while it runs.',
			'mrp.confirm.cancel' => 'Cancel',
			'mrp.confirm.go' => 'Run',
			'mrp.success.title' => 'MRP succeeded',
			'mrp.success.at' => 'Run at',
			'mrp.success.mode' => 'Mode',
			'mrp.success.count' => 'Suggestions',
			'mrp.success.pending' => 'Needs decision',
			'mrp.success.late' => 'Late',
			'mrp.success.unit' => '',
			'mrp.mode.order' => 'Order MRP',
			'mrp.mode.redo' => 'Re-MRP',
			'mrp.failure.title' => 'The calculation could not be completed',
			'mrp.failure.message' => 'Please wait a while and run it again.',
			'mrp.failure.pendingRemains' => 'Suggestions that need a decision remain. Adopt or reject them, then commit.',
			'mrp.failure.cannotCommit' => 'This result cannot be committed because data changed after the calculation, or a newer calculation exists. Please calculate again.',
			'mrp.failure.code' => 'Error code',
			'mrp.result.title' => 'MRP result (suggestions)',
			'mrp.result.search' => 'Search',
			'mrp.result.decisionFilter' => 'Decision',
			'mrp.result.all' => 'All',
			'mrp.result.noRows' => 'No matching suggestions',
			'mrp.result.lateYes' => 'Late',
			'mrp.result.lateNo' => '',
			'mrp.columns.itemCode' => 'Item code',
			'mrp.columns.itemName' => 'Item name',
			'mrp.columns.symbol' => 'Symbol',
			'mrp.columns.quantity' => 'Quantity',
			'mrp.columns.allocation' => 'Stock allocation',
			'mrp.columns.needDate' => 'Need date',
			'mrp.columns.releaseDate' => 'Release date',
			'mrp.columns.dueDate' => 'Due date',
			'mrp.columns.late' => 'Late',
			'mrp.columns.needUser' => 'Needs decision (flag)',
			'mrp.columns.message' => 'Message',
			'mrp.columns.purchase' => 'Purchase',
			'mrp.columns.production' => 'Production',
			'mrp.columns.outsource' => 'Outsource',
			'mrp.columns.plan' => 'Material plan',
			'mrp.columns.exception' => 'Exception',
			'mrp.columns.supplyRequest' => 'Supply request',
			'mrp.columns.isNew' => 'New',
			'mrp.columns.isChange' => 'Change',
			'mrp.columns.isCancel' => 'Cancel',
			'mrp.columns.isKeep' => 'Keep',
			'mrp.columns.isOption' => 'Switch option',
			'mrp.columns.subjectEquipment' => 'Equipment (overload)',
			'mrp.columns.subjectStock' => 'Stock (excess)',
			'mrp.columns.subjectMaster' => 'Master data (issue)',
			'mrp.check.title' => '1. Check (master data problems)',
			'mrp.check.note' => 'Before MRP, checks item master problems (routings, suppliers, calendars, and so on). It only reads and changes nothing. MRP can still run with problems, and they appear as "master problem" suggestions in the result.',
			'mrp.check.run' => 'Check for problems',
			'mrp.check.running' => 'Checking',
			'mrp.check.none' => 'No problems were found.',
			'mrp.check.count' => 'Problems',
			'mrp.check.more' => 'Showing up to 30, most serious first.',
			'mrp.step.calc' => 'Calculate and review',
			'mrp.step.calcNote' => '"Run MRP" commits straight away when nothing needs a decision. "Calculate and review" only calculates; you review and decide, then commit or discard.',
			'mrp.step.ok' => 'Run',
			'mrp.step.awaitingTitle' => 'Waiting to be committed',
			'mrp.step.awaitingNote' => 'Decide to adopt or reject the suggestions that need a decision, then commit. Planning data does not change until you commit. Calculating again without committing invalidates this result.',
			'mrp.step.resumed' => 'Picked up the previous calculation that was waiting to be committed.',
			'mrp.step.pendingLeft' => 'Suggestions still waiting for a decision',
			'mrp.step.adoptShown' => 'Adopt the shown suggestions',
			'mrp.step.rejectShown' => 'Reject the shown suggestions',
			'mrp.step.commit' => 'Commit',
			'mrp.step.commitTitle' => 'Commit this result?',
			'mrp.step.commitNote' => 'Adopted suggestions are applied to material plans, purchase orders, production plans, and allocation reservations.',
			'mrp.step.commitForce' => 'Reject pending and commit',
			'mrp.step.commitForceTitle' => 'Reject the pending suggestions and commit?',
			'mrp.step.commitForceNote' => 'Every suggestion still waiting for a decision is committed as rejected, and the check for data updated after the calculation is skipped.',
			'mrp.step.discard' => 'Discard',
			'mrp.step.discardTitle' => 'Discard this result?',
			'mrp.step.discardNote' => 'Planning data does not change.',
			'mrp.state.title' => 'Status',
			'mrp.state.committed' => 'Committed',
			'mrp.state.awaiting' => 'Waiting to be committed',
			'mrp.decision.pending' => 'Needs decision',
			'mrp.decision.adopted' => 'Adopted',
			'mrp.decision.rejected' => 'Rejected',
			'mrp.decision.info' => 'Info',
			_ => null,
		};
	}
}
