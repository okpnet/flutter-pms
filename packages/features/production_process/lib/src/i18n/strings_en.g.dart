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
class ProductionProcessStringsEn extends ProductionProcessStrings with BaseTranslations<ProductionProcessLocale, ProductionProcessStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [ProductionProcessLocale.build] is preferred.
	ProductionProcessStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: ProductionProcessLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings> _meta;
	@override TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final ProductionProcessStringsEn _root = this; // ignore: unused_field

	@override 
	ProductionProcessStringsEn $copyWith({TranslationMetadata<ProductionProcessLocale, ProductionProcessStrings>? meta}) => ProductionProcessStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _ProductionProcessStrings$menu$en menu = _ProductionProcessStrings$menu$en._(_root);
	@override late final _ProductionProcessStrings$entity$en entity = _ProductionProcessStrings$entity$en._(_root);
}

// Path: menu
class _ProductionProcessStrings$menu$en extends ProductionProcessStrings$menu$ja {
	_ProductionProcessStrings$menu$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Process';
}

// Path: entity
class _ProductionProcessStrings$entity$en extends ProductionProcessStrings$entity$ja {
	_ProductionProcessStrings$entity$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _ProductionProcessStrings$entity$taskgroup$en taskgroup = _ProductionProcessStrings$entity$taskgroup$en._(_root);
	@override late final _ProductionProcessStrings$entity$task$en task = _ProductionProcessStrings$entity$task$en._(_root);
	@override late final _ProductionProcessStrings$entity$taskres$en taskres = _ProductionProcessStrings$entity$taskres$en._(_root);
	@override late final _ProductionProcessStrings$entity$operation$en operation = _ProductionProcessStrings$entity$operation$en._(_root);
	@override late final _ProductionProcessStrings$entity$optask$en optask = _ProductionProcessStrings$entity$optask$en._(_root);
	@override late final _ProductionProcessStrings$entity$opapply$en opapply = _ProductionProcessStrings$entity$opapply$en._(_root);
	@override late final _ProductionProcessStrings$entity$taskavailable$en taskavailable = _ProductionProcessStrings$entity$taskavailable$en._(_root);
	@override late final _ProductionProcessStrings$entity$taskoutsource$en taskoutsource = _ProductionProcessStrings$entity$taskoutsource$en._(_root);
}

// Path: entity.taskgroup
class _ProductionProcessStrings$entity$taskgroup$en extends ProductionProcessStrings$entity$taskgroup$ja {
	_ProductionProcessStrings$entity$taskgroup$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Task groups';
	@override late final _ProductionProcessStrings$entity$taskgroup$fields$en fields = _ProductionProcessStrings$entity$taskgroup$fields$en._(_root);
}

// Path: entity.task
class _ProductionProcessStrings$entity$task$en extends ProductionProcessStrings$entity$task$ja {
	_ProductionProcessStrings$entity$task$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tasks';
	@override late final _ProductionProcessStrings$entity$task$fields$en fields = _ProductionProcessStrings$entity$task$fields$en._(_root);
	@override late final _ProductionProcessStrings$entity$task$reverse$en reverse = _ProductionProcessStrings$entity$task$reverse$en._(_root);
}

// Path: entity.taskres
class _ProductionProcessStrings$entity$taskres$en extends ProductionProcessStrings$entity$taskres$ja {
	_ProductionProcessStrings$entity$taskres$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Task locations';
	@override late final _ProductionProcessStrings$entity$taskres$fields$en fields = _ProductionProcessStrings$entity$taskres$fields$en._(_root);
}

// Path: entity.operation
class _ProductionProcessStrings$entity$operation$en extends ProductionProcessStrings$entity$operation$ja {
	_ProductionProcessStrings$entity$operation$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Process operations';
	@override late final _ProductionProcessStrings$entity$operation$fields$en fields = _ProductionProcessStrings$entity$operation$fields$en._(_root);
}

// Path: entity.optask
class _ProductionProcessStrings$entity$optask$en extends ProductionProcessStrings$entity$optask$ja {
	_ProductionProcessStrings$entity$optask$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selected tasks';
	@override late final _ProductionProcessStrings$entity$optask$fields$en fields = _ProductionProcessStrings$entity$optask$fields$en._(_root);
}

// Path: entity.opapply
class _ProductionProcessStrings$entity$opapply$en extends ProductionProcessStrings$entity$opapply$ja {
	_ProductionProcessStrings$entity$opapply$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Process plans applied to items';
	@override late final _ProductionProcessStrings$entity$opapply$fields$en fields = _ProductionProcessStrings$entity$opapply$fields$en._(_root);
}

// Path: entity.taskavailable
class _ProductionProcessStrings$entity$taskavailable$en extends ProductionProcessStrings$entity$taskavailable$ja {
	_ProductionProcessStrings$entity$taskavailable$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Available equipment';
	@override late final _ProductionProcessStrings$entity$taskavailable$fields$en fields = _ProductionProcessStrings$entity$taskavailable$fields$en._(_root);
}

// Path: entity.taskoutsource
class _ProductionProcessStrings$entity$taskoutsource$en extends ProductionProcessStrings$entity$taskoutsource$ja {
	_ProductionProcessStrings$entity$taskoutsource$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Available outsourcing';
	@override late final _ProductionProcessStrings$entity$taskoutsource$fields$en fields = _ProductionProcessStrings$entity$taskoutsource$fields$en._(_root);
}

// Path: entity.taskgroup.fields
class _ProductionProcessStrings$entity$taskgroup$fields$en extends ProductionProcessStrings$entity$taskgroup$fields$ja {
	_ProductionProcessStrings$entity$taskgroup$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Group name';
	@override String get f_desc => 'Description';
}

// Path: entity.task.fields
class _ProductionProcessStrings$entity$task$fields$en extends ProductionProcessStrings$entity$task$fields$ja {
	_ProductionProcessStrings$entity$task$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Task code';
	@override String get f_name => 'Task name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_detail => 'Details';
	@override String get f_class => 'Class';
	@override String get f_default_time => 'Standard time';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.task.reverse
class _ProductionProcessStrings$entity$task$reverse$en extends ProductionProcessStrings$entity$task$reverse$ja {
	_ProductionProcessStrings$entity$task$reverse$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get optask => 'Selected tasks';
	@override String get workplan => 'Work plan lines';
	@override String get cproc => 'Process complaints';
	@override String get taskrisk => 'Task risks';
}

// Path: entity.taskres.fields
class _ProductionProcessStrings$entity$taskres$fields$en extends ProductionProcessStrings$entity$taskres$fields$ja {
	_ProductionProcessStrings$entity$taskres$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_info_department_id => 'Organization';
	@override String get f_priority => 'Priority';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.operation.fields
class _ProductionProcessStrings$entity$operation$fields$en extends ProductionProcessStrings$entity$operation$fields$ja {
	_ProductionProcessStrings$entity$operation$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_control_code => 'Control code';
	@override String get f_name => 'Operation name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_detail => 'Details';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.optask.fields
class _ProductionProcessStrings$entity$optask$fields$en extends ProductionProcessStrings$entity$optask$fields$ja {
	_ProductionProcessStrings$entity$optask$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_task => 'Task';
	@override String get f_seq => 'Order';
}

// Path: entity.opapply.fields
class _ProductionProcessStrings$entity$opapply$fields$en extends ProductionProcessStrings$entity$opapply$fields$ja {
	_ProductionProcessStrings$entity$opapply$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_item => 'Item';
}

// Path: entity.taskavailable.fields
class _ProductionProcessStrings$entity$taskavailable$fields$en extends ProductionProcessStrings$entity$taskavailable$fields$ja {
	_ProductionProcessStrings$entity$taskavailable$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_equipment => 'Equipment';
	@override String get f_delivery_interval => 'Delivery interval (hours)';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.taskoutsource.fields
class _ProductionProcessStrings$entity$taskoutsource$fields$en extends ProductionProcessStrings$entity$taskoutsource$fields$ja {
	_ProductionProcessStrings$entity$taskoutsource$fields$en._(ProductionProcessStringsEn root) : this._root = root, super.internal(root);

	final ProductionProcessStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_supplier => 'External supplier';
	@override String get f_delivery_interval => 'Delivery interval (hours)';
	@override String get f_material_supply => 'Material supply';
	@override String get f_paid_supply => 'Paid supply';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on ProductionProcessStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Process',
			'entity.taskgroup.title' => 'Task groups',
			'entity.taskgroup.fields.f_name' => 'Group name',
			'entity.taskgroup.fields.f_desc' => 'Description',
			'entity.task.title' => 'Tasks',
			'entity.task.fields.f_code' => 'Task code',
			'entity.task.fields.f_name' => 'Task name',
			'entity.task.fields.f_pronunciation' => 'Reading',
			'entity.task.fields.f_nickname' => 'Abbreviation',
			'entity.task.fields.f_detail' => 'Details',
			'entity.task.fields.f_class' => 'Class',
			'entity.task.fields.f_default_time' => 'Standard time',
			'entity.task.fields.f_remarks' => 'Remarks',
			'entity.task.reverse.optask' => 'Selected tasks',
			'entity.task.reverse.workplan' => 'Work plan lines',
			'entity.task.reverse.cproc' => 'Process complaints',
			'entity.task.reverse.taskrisk' => 'Task risks',
			'entity.taskres.title' => 'Task locations',
			'entity.taskres.fields.f_info_department_id' => 'Organization',
			'entity.taskres.fields.f_priority' => 'Priority',
			'entity.taskres.fields.f_remarks' => 'Remarks',
			'entity.operation.title' => 'Process operations',
			'entity.operation.fields.f_control_code' => 'Control code',
			'entity.operation.fields.f_name' => 'Operation name',
			'entity.operation.fields.f_pronunciation' => 'Reading',
			'entity.operation.fields.f_nickname' => 'Abbreviation',
			'entity.operation.fields.f_detail' => 'Details',
			'entity.operation.fields.f_remarks' => 'Remarks',
			'entity.optask.title' => 'Selected tasks',
			'entity.optask.fields.f_task' => 'Task',
			'entity.optask.fields.f_seq' => 'Order',
			'entity.opapply.title' => 'Process plans applied to items',
			'entity.opapply.fields.f_item' => 'Item',
			'entity.taskavailable.title' => 'Available equipment',
			'entity.taskavailable.fields.f_equipment' => 'Equipment',
			'entity.taskavailable.fields.f_delivery_interval' => 'Delivery interval (hours)',
			'entity.taskavailable.fields.f_remarks' => 'Remarks',
			'entity.taskoutsource.title' => 'Available outsourcing',
			'entity.taskoutsource.fields.f_supplier' => 'External supplier',
			'entity.taskoutsource.fields.f_delivery_interval' => 'Delivery interval (hours)',
			'entity.taskoutsource.fields.f_material_supply' => 'Material supply',
			'entity.taskoutsource.fields.f_paid_supply' => 'Paid supply',
			'entity.taskoutsource.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
