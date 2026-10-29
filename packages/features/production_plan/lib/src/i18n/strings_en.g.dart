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
	@override late final _ProductionPlanStrings$mrp$kind$en kind = _ProductionPlanStrings$mrp$kind$en._(_root);
	@override late final _ProductionPlanStrings$mrp$decision$en decision = _ProductionPlanStrings$mrp$decision$en._(_root);
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
	@override String get kind => 'Suggestion';
	@override String get itemCode => 'Item code';
	@override String get itemName => 'Item name';
	@override String get quantity => 'Quantity';
	@override String get allocation => 'Stock allocation';
	@override String get needDate => 'Need date';
	@override String get releaseDate => 'Release date';
	@override String get dueDate => 'Due date';
	@override String get late => 'Late';
	@override String get decision => 'Decision';
	@override String get message => 'Message';
}

// Path: mrp.kind
class _ProductionPlanStrings$mrp$kind$en extends ProductionPlanStrings$mrp$kind$ja {
	_ProductionPlanStrings$mrp$kind$en._(ProductionPlanStringsEn root) : this._root = root, super.internal(root);

	final ProductionPlanStringsEn _root; // ignore: unused_field

	// Translations
	@override String get purchaseNew => 'Purchase (new)';
	@override String get productionNew => 'Production (new)';
	@override String get purchaseReschedule => 'Purchase reschedule';
	@override String get productionReschedule => 'Production reschedule';
	@override String get purchaseCancel => 'Purchase cancel';
	@override String get productionCancel => 'Production cancel';
	@override String get outsourceOption => 'Switch to outsourcing';
	@override String get excOverload => 'Equipment overload';
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
			'mrp.failure.code' => 'Error code',
			'mrp.result.title' => 'MRP result (suggestions)',
			'mrp.result.search' => 'Search',
			'mrp.result.decisionFilter' => 'Decision',
			'mrp.result.all' => 'All',
			'mrp.result.noRows' => 'No matching suggestions',
			'mrp.result.lateYes' => 'Late',
			'mrp.result.lateNo' => '',
			'mrp.columns.kind' => 'Suggestion',
			'mrp.columns.itemCode' => 'Item code',
			'mrp.columns.itemName' => 'Item name',
			'mrp.columns.quantity' => 'Quantity',
			'mrp.columns.allocation' => 'Stock allocation',
			'mrp.columns.needDate' => 'Need date',
			'mrp.columns.releaseDate' => 'Release date',
			'mrp.columns.dueDate' => 'Due date',
			'mrp.columns.late' => 'Late',
			'mrp.columns.decision' => 'Decision',
			'mrp.columns.message' => 'Message',
			'mrp.kind.purchaseNew' => 'Purchase (new)',
			'mrp.kind.productionNew' => 'Production (new)',
			'mrp.kind.purchaseReschedule' => 'Purchase reschedule',
			'mrp.kind.productionReschedule' => 'Production reschedule',
			'mrp.kind.purchaseCancel' => 'Purchase cancel',
			'mrp.kind.productionCancel' => 'Production cancel',
			'mrp.kind.outsourceOption' => 'Switch to outsourcing',
			'mrp.kind.excOverload' => 'Equipment overload',
			'mrp.decision.pending' => 'Needs decision',
			'mrp.decision.adopted' => 'Adopted',
			'mrp.decision.rejected' => 'Rejected',
			'mrp.decision.info' => 'Info',
			_ => null,
		};
	}
}
