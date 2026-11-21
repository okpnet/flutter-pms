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
class DocumentSettingsStringsEn extends DocumentSettingsStrings with BaseTranslations<DocumentSettingsLocale, DocumentSettingsStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [DocumentSettingsLocale.build] is preferred.
	DocumentSettingsStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: DocumentSettingsLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings> _meta;
	@override TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final DocumentSettingsStringsEn _root = this; // ignore: unused_field

	@override 
	DocumentSettingsStringsEn $copyWith({TranslationMetadata<DocumentSettingsLocale, DocumentSettingsStrings>? meta}) => DocumentSettingsStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get menuGroup => 'Quality documents';
	@override String get menuLabel => 'Approval stamp & PDF settings';
	@override String get title => 'Approval stamp & PDF settings';
	@override String get loading => 'Loading…';
	@override String get adminOnly => 'Only administrators can change these settings.';
	@override String get loadFailed => 'Could not load the settings. Showing the defaults.';
	@override late final _DocumentSettingsStrings$tabs$en tabs = _DocumentSettingsStrings$tabs$en._(_root);
	@override late final _DocumentSettingsStrings$actions$en actions = _DocumentSettingsStrings$actions$en._(_root);
	@override String get saved => 'Saved.';
	@override String get saveFailed => 'Could not save.';
	@override String get unsaved => 'There are unsaved changes.';
	@override String get problemsTitle => 'Items that could not be read (defaults are shown)';
	@override late final _DocumentSettingsStrings$preview$en preview = _DocumentSettingsStrings$preview$en._(_root);
	@override late final _DocumentSettingsStrings$json$en json = _DocumentSettingsStrings$json$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$en stamp = _DocumentSettingsStrings$stamp$en._(_root);
	@override late final _DocumentSettingsStrings$pdf$en pdf = _DocumentSettingsStrings$pdf$en._(_root);
}

// Path: tabs
class _DocumentSettingsStrings$tabs$en extends DocumentSettingsStrings$tabs$ja {
	_DocumentSettingsStrings$tabs$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get stamp => 'Approval stamp';
	@override String get pdf => 'PDF';
	@override String get json => 'JSON';
}

// Path: actions
class _DocumentSettingsStrings$actions$en extends DocumentSettingsStrings$actions$ja {
	_DocumentSettingsStrings$actions$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get save => 'Save';
	@override String get revert => 'Revert';
	@override String get resetDefaults => 'Reset to defaults';
	@override String get apply => 'Apply';
}

// Path: preview
class _DocumentSettingsStrings$preview$en extends DocumentSettingsStrings$preview$ja {
	_DocumentSettingsStrings$preview$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preview';
	@override String get page => 'Page';
	@override String get sampleNote => 'A sample document (two approval steps: approved and pending).';
	@override String get pageFirst => 'Page 1';
	@override String get pageSecond => 'Page 2';
}

// Path: json
class _DocumentSettingsStrings$json$en extends DocumentSettingsStrings$json$ja {
	_DocumentSettingsStrings$json$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get hint => 'The settings JSON (info_app.settings). Edit it and press Apply to update the form and the preview.';
	@override String get invalid => 'Not valid JSON.';
}

// Path: stamp
class _DocumentSettingsStrings$stamp$en extends DocumentSettingsStrings$stamp$ja {
	_DocumentSettingsStrings$stamp$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get position => 'Position';
	@override String get anchor => 'Anchor';
	@override String get offsetX => 'Horizontal offset (mm)';
	@override String get offsetY => 'Vertical offset (mm)';
	@override String get pages => 'Pages';
	@override String get look => 'Appearance';
	@override String get layer => 'Layering';
	@override String get opacity => 'Opacity';
	@override String get shape => 'Shape';
	@override String get width => 'Width (mm)';
	@override String get height => 'Height (mm)';
	@override String get rotation => 'Rotation (deg)';
	@override String get colors => 'Colors (#RRGGBB or a variable reference)';
	@override String get colorText => 'Text';
	@override String get colorFrame => 'Frame';
	@override String get colorFill => 'Fill (empty = none)';
	@override String get content => 'Content';
	@override String get labelLanguage => 'Label language';
	@override String get stages => 'Approval steps';
	@override String get items => 'Items';
	@override String get itemField => 'Item';
	@override String get itemFormat => 'Format';
	@override String get itemSize => 'Size';
	@override String get itemLine => 'Line';
	@override String get addItem => 'Add item';
	@override String get pending => 'Pending appearance';
	@override String get pendingDashed => 'Dashed frame';
	@override String get pendingColor => 'Color';
	@override late final _DocumentSettingsStrings$stamp$anchors$en anchors = _DocumentSettingsStrings$stamp$anchors$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$pagesValues$en pagesValues = _DocumentSettingsStrings$stamp$pagesValues$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$layers$en layers = _DocumentSettingsStrings$stamp$layers$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$shapes$en shapes = _DocumentSettingsStrings$stamp$shapes$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$stagesValues$en stagesValues = _DocumentSettingsStrings$stamp$stagesValues$en._(_root);
	@override late final _DocumentSettingsStrings$stamp$fields$en fields = _DocumentSettingsStrings$stamp$fields$en._(_root);
}

// Path: pdf
class _DocumentSettingsStrings$pdf$en extends DocumentSettingsStrings$pdf$ja {
	_DocumentSettingsStrings$pdf$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get page => 'Paper';
	@override String get size => 'Paper size';
	@override String get orientation => 'Orientation';
	@override String get portrait => 'Portrait';
	@override String get landscape => 'Landscape';
	@override String get margins => 'Margins (mm)';
	@override String get marginTop => 'Top';
	@override String get marginRight => 'Right';
	@override String get marginBottom => 'Bottom';
	@override String get marginLeft => 'Left';
	@override String get theme => 'Theme';
	@override String get vars => 'Variables (color reference targets)';
	@override String get fonts => 'Text';
	@override String get fontFamily => 'Body font name';
	@override String get baseSize => 'Body size (pt)';
	@override String get lineHeight => 'Line height (x)';
	@override String get colors => 'Colors (#RRGGBB or a variable reference)';
	@override String get colorText => 'Text';
	@override String get colorHeading => 'Headings';
	@override String get colorLink => 'Links';
	@override String get colorQuote => 'Quotes';
	@override String get colorCodeBackground => 'Code background';
	@override String get colorTableBorder => 'Table border';
	@override String get colorTableHeader => 'Table header background';
	@override String get headings => 'Headings';
	@override String get headingSize => 'Size (pt)';
	@override String get headingBreak => 'Page break per chapter';
	@override String get header => 'Header';
	@override String get footer => 'Footer';
	@override String get bandEnabled => 'Show';
	@override String get bandHeight => 'Height (mm)';
	@override String get bandSize => 'Text size (pt)';
	@override String get bandColor => 'Text color';
	@override String get bandBorder => 'Line next to the body';
	@override String get bandFirstPage => 'First page';
	@override String get firstSame => 'Same as other pages';
	@override String get firstNone => 'Hide';
	@override String get bandLeft => 'Left';
	@override String get bandCenter => 'Center';
	@override String get bandRight => 'Right';
	@override String get variablesTitle => 'Variables (tap to insert into the focused field)';
	@override String get variablesHint => '{variable} or {variable:format}. Date formats: yyyy/MM/dd, HH:mm, G E (Japanese era). Use {{ and }} for braces.';
	@override String get custom => 'Custom variables (use as {var.name})';
	@override String get customName => 'Name';
	@override String get customValue => 'Value';
	@override String get addCustom => 'Add variable';
	@override String get remove => 'Remove';
}

// Path: stamp.anchors
class _DocumentSettingsStrings$stamp$anchors$en extends DocumentSettingsStrings$stamp$anchors$ja {
	_DocumentSettingsStrings$stamp$anchors$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get topLeft => 'Top left';
	@override String get topRight => 'Top right';
	@override String get bottomLeft => 'Bottom left';
	@override String get bottomRight => 'Bottom right';
	@override String get center => 'Center';
}

// Path: stamp.pagesValues
class _DocumentSettingsStrings$stamp$pagesValues$en extends DocumentSettingsStrings$stamp$pagesValues$ja {
	_DocumentSettingsStrings$stamp$pagesValues$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get first => 'First page only';
	@override String get all => 'All pages';
}

// Path: stamp.layers
class _DocumentSettingsStrings$stamp$layers$en extends DocumentSettingsStrings$stamp$layers$ja {
	_DocumentSettingsStrings$stamp$layers$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get background => 'Watermark (behind the text)';
	@override String get foreground => 'In front of the text';
}

// Path: stamp.shapes
class _DocumentSettingsStrings$stamp$shapes$en extends DocumentSettingsStrings$stamp$shapes$ja {
	_DocumentSettingsStrings$stamp$shapes$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get circle => 'Circle';
	@override String get roundRect => 'Rounded rectangle';
	@override String get doubleFrame => 'Double frame';
	@override String get dateStamp => 'Date stamp';
}

// Path: stamp.stagesValues
class _DocumentSettingsStrings$stamp$stagesValues$en extends DocumentSettingsStrings$stamp$stagesValues$ja {
	_DocumentSettingsStrings$stamp$stagesValues$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get all => 'One per step';
	@override String get last => 'Last approval only';
}

// Path: stamp.fields
class _DocumentSettingsStrings$stamp$fields$en extends DocumentSettingsStrings$stamp$fields$ja {
	_DocumentSettingsStrings$stamp$fields$en._(DocumentSettingsStringsEn root) : this._root = root, super.internal(root);

	final DocumentSettingsStringsEn _root; // ignore: unused_field

	// Translations
	@override String get stamp_label => 'Approval label';
	@override String get approved_at => 'Approved at';
	@override String get approved_staff => 'Approver';
	@override String get approval_name => 'Step name';
	@override String get version_code => 'Version code';
	@override String get control_number => 'Control number';
	@override String get document_revision => 'Revision';
	@override String get approved_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on DocumentSettingsStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menuGroup' => 'Quality documents',
			'menuLabel' => 'Approval stamp & PDF settings',
			'title' => 'Approval stamp & PDF settings',
			'loading' => 'Loading…',
			'adminOnly' => 'Only administrators can change these settings.',
			'loadFailed' => 'Could not load the settings. Showing the defaults.',
			'tabs.stamp' => 'Approval stamp',
			'tabs.pdf' => 'PDF',
			'tabs.json' => 'JSON',
			'actions.save' => 'Save',
			'actions.revert' => 'Revert',
			'actions.resetDefaults' => 'Reset to defaults',
			'actions.apply' => 'Apply',
			'saved' => 'Saved.',
			'saveFailed' => 'Could not save.',
			'unsaved' => 'There are unsaved changes.',
			'problemsTitle' => 'Items that could not be read (defaults are shown)',
			'preview.title' => 'Preview',
			'preview.page' => 'Page',
			'preview.sampleNote' => 'A sample document (two approval steps: approved and pending).',
			'preview.pageFirst' => 'Page 1',
			'preview.pageSecond' => 'Page 2',
			'json.hint' => 'The settings JSON (info_app.settings). Edit it and press Apply to update the form and the preview.',
			'json.invalid' => 'Not valid JSON.',
			'stamp.position' => 'Position',
			'stamp.anchor' => 'Anchor',
			'stamp.offsetX' => 'Horizontal offset (mm)',
			'stamp.offsetY' => 'Vertical offset (mm)',
			'stamp.pages' => 'Pages',
			'stamp.look' => 'Appearance',
			'stamp.layer' => 'Layering',
			'stamp.opacity' => 'Opacity',
			'stamp.shape' => 'Shape',
			'stamp.width' => 'Width (mm)',
			'stamp.height' => 'Height (mm)',
			'stamp.rotation' => 'Rotation (deg)',
			'stamp.colors' => 'Colors (#RRGGBB or a variable reference)',
			'stamp.colorText' => 'Text',
			'stamp.colorFrame' => 'Frame',
			'stamp.colorFill' => 'Fill (empty = none)',
			'stamp.content' => 'Content',
			'stamp.labelLanguage' => 'Label language',
			'stamp.stages' => 'Approval steps',
			'stamp.items' => 'Items',
			'stamp.itemField' => 'Item',
			'stamp.itemFormat' => 'Format',
			'stamp.itemSize' => 'Size',
			'stamp.itemLine' => 'Line',
			'stamp.addItem' => 'Add item',
			'stamp.pending' => 'Pending appearance',
			'stamp.pendingDashed' => 'Dashed frame',
			'stamp.pendingColor' => 'Color',
			'stamp.anchors.topLeft' => 'Top left',
			'stamp.anchors.topRight' => 'Top right',
			'stamp.anchors.bottomLeft' => 'Bottom left',
			'stamp.anchors.bottomRight' => 'Bottom right',
			'stamp.anchors.center' => 'Center',
			'stamp.pagesValues.first' => 'First page only',
			'stamp.pagesValues.all' => 'All pages',
			'stamp.layers.background' => 'Watermark (behind the text)',
			'stamp.layers.foreground' => 'In front of the text',
			'stamp.shapes.circle' => 'Circle',
			'stamp.shapes.roundRect' => 'Rounded rectangle',
			'stamp.shapes.doubleFrame' => 'Double frame',
			'stamp.shapes.dateStamp' => 'Date stamp',
			'stamp.stagesValues.all' => 'One per step',
			'stamp.stagesValues.last' => 'Last approval only',
			'stamp.fields.stamp_label' => 'Approval label',
			'stamp.fields.approved_at' => 'Approved at',
			'stamp.fields.approved_staff' => 'Approver',
			'stamp.fields.approval_name' => 'Step name',
			'stamp.fields.version_code' => 'Version code',
			'stamp.fields.control_number' => 'Control number',
			'stamp.fields.document_revision' => 'Revision',
			'stamp.fields.approved_remarks' => 'Remarks',
			'pdf.page' => 'Paper',
			'pdf.size' => 'Paper size',
			'pdf.orientation' => 'Orientation',
			'pdf.portrait' => 'Portrait',
			'pdf.landscape' => 'Landscape',
			'pdf.margins' => 'Margins (mm)',
			'pdf.marginTop' => 'Top',
			'pdf.marginRight' => 'Right',
			'pdf.marginBottom' => 'Bottom',
			'pdf.marginLeft' => 'Left',
			'pdf.theme' => 'Theme',
			'pdf.vars' => 'Variables (color reference targets)',
			'pdf.fonts' => 'Text',
			'pdf.fontFamily' => 'Body font name',
			'pdf.baseSize' => 'Body size (pt)',
			'pdf.lineHeight' => 'Line height (x)',
			'pdf.colors' => 'Colors (#RRGGBB or a variable reference)',
			'pdf.colorText' => 'Text',
			'pdf.colorHeading' => 'Headings',
			'pdf.colorLink' => 'Links',
			'pdf.colorQuote' => 'Quotes',
			'pdf.colorCodeBackground' => 'Code background',
			'pdf.colorTableBorder' => 'Table border',
			'pdf.colorTableHeader' => 'Table header background',
			'pdf.headings' => 'Headings',
			'pdf.headingSize' => 'Size (pt)',
			'pdf.headingBreak' => 'Page break per chapter',
			'pdf.header' => 'Header',
			'pdf.footer' => 'Footer',
			'pdf.bandEnabled' => 'Show',
			'pdf.bandHeight' => 'Height (mm)',
			'pdf.bandSize' => 'Text size (pt)',
			'pdf.bandColor' => 'Text color',
			'pdf.bandBorder' => 'Line next to the body',
			'pdf.bandFirstPage' => 'First page',
			'pdf.firstSame' => 'Same as other pages',
			'pdf.firstNone' => 'Hide',
			'pdf.bandLeft' => 'Left',
			'pdf.bandCenter' => 'Center',
			'pdf.bandRight' => 'Right',
			'pdf.variablesTitle' => 'Variables (tap to insert into the focused field)',
			'pdf.variablesHint' => '{variable} or {variable:format}. Date formats: yyyy/MM/dd, HH:mm, G E (Japanese era). Use {{ and }} for braces.',
			'pdf.custom' => 'Custom variables (use as {var.name})',
			'pdf.customName' => 'Name',
			'pdf.customValue' => 'Value',
			'pdf.addCustom' => 'Add variable',
			'pdf.remove' => 'Remove',
			_ => null,
		};
	}
}
