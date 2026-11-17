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
class OrganizationStringsEn extends OrganizationStrings with BaseTranslations<OrganizationLocale, OrganizationStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [OrganizationLocale.build] is preferred.
	OrganizationStringsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<OrganizationLocale, OrganizationStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: OrganizationLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<OrganizationLocale, OrganizationStrings> _meta;
	@override TranslationMetadata<OrganizationLocale, OrganizationStrings> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final OrganizationStringsEn _root = this; // ignore: unused_field

	@override 
	OrganizationStringsEn $copyWith({TranslationMetadata<OrganizationLocale, OrganizationStrings>? meta}) => OrganizationStringsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _OrganizationStrings$menu$en menu = _OrganizationStrings$menu$en._(_root);
	@override late final _OrganizationStrings$entity$en entity = _OrganizationStrings$entity$en._(_root);
}

// Path: menu
class _OrganizationStrings$menu$en extends OrganizationStrings$menu$ja {
	_OrganizationStrings$menu$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get group => 'Company';
}

// Path: entity
class _OrganizationStrings$entity$en extends OrganizationStrings$entity$ja {
	_OrganizationStrings$entity$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override late final _OrganizationStrings$entity$company$en company = _OrganizationStrings$entity$company$en._(_root);
	@override late final _OrganizationStrings$entity$provision$en provision = _OrganizationStrings$entity$provision$en._(_root);
	@override late final _OrganizationStrings$entity$position$en position = _OrganizationStrings$entity$position$en._(_root);
	@override late final _OrganizationStrings$entity$assignment$en assignment = _OrganizationStrings$entity$assignment$en._(_root);
	@override late final _OrganizationStrings$entity$site$en site = _OrganizationStrings$entity$site$en._(_root);
	@override late final _OrganizationStrings$entity$deptkind$en deptkind = _OrganizationStrings$entity$deptkind$en._(_root);
	@override late final _OrganizationStrings$entity$department$en department = _OrganizationStrings$entity$department$en._(_root);
	@override late final _OrganizationStrings$entity$departmentkind$en departmentkind = _OrganizationStrings$entity$departmentkind$en._(_root);
	@override late final _OrganizationStrings$entity$staff$en staff = _OrganizationStrings$entity$staff$en._(_root);
	@override late final _OrganizationStrings$entity$staffcapability$en staffcapability = _OrganizationStrings$entity$staffcapability$en._(_root);
	@override late final _OrganizationStrings$entity$stafflicense$en stafflicense = _OrganizationStrings$entity$stafflicense$en._(_root);
	@override late final _OrganizationStrings$entity$approvalpattern$en approvalpattern = _OrganizationStrings$entity$approvalpattern$en._(_root);
	@override late final _OrganizationStrings$entity$approver$en approver = _OrganizationStrings$entity$approver$en._(_root);
}

// Path: entity.company
class _OrganizationStrings$entity$company$en extends OrganizationStrings$entity$company$ja {
	_OrganizationStrings$entity$company$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Company information';
	@override late final _OrganizationStrings$entity$company$fields$en fields = _OrganizationStrings$entity$company$fields$en._(_root);
}

// Path: entity.provision
class _OrganizationStrings$entity$provision$en extends OrganizationStrings$entity$provision$ja {
	_OrganizationStrings$entity$provision$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Provisions';
	@override late final _OrganizationStrings$entity$provision$fields$en fields = _OrganizationStrings$entity$provision$fields$en._(_root);
}

// Path: entity.position
class _OrganizationStrings$entity$position$en extends OrganizationStrings$entity$position$ja {
	_OrganizationStrings$entity$position$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roles (positions)';
	@override late final _OrganizationStrings$entity$position$fields$en fields = _OrganizationStrings$entity$position$fields$en._(_root);
}

// Path: entity.assignment
class _OrganizationStrings$entity$assignment$en extends OrganizationStrings$entity$assignment$ja {
	_OrganizationStrings$entity$assignment$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Assignments';
	@override late final _OrganizationStrings$entity$assignment$fields$en fields = _OrganizationStrings$entity$assignment$fields$en._(_root);
}

// Path: entity.site
class _OrganizationStrings$entity$site$en extends OrganizationStrings$entity$site$ja {
	_OrganizationStrings$entity$site$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sites';
	@override late final _OrganizationStrings$entity$site$fields$en fields = _OrganizationStrings$entity$site$fields$en._(_root);
}

// Path: entity.deptkind
class _OrganizationStrings$entity$deptkind$en extends OrganizationStrings$entity$deptkind$ja {
	_OrganizationStrings$entity$deptkind$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Department kinds';
	@override late final _OrganizationStrings$entity$deptkind$fields$en fields = _OrganizationStrings$entity$deptkind$fields$en._(_root);
}

// Path: entity.department
class _OrganizationStrings$entity$department$en extends OrganizationStrings$entity$department$ja {
	_OrganizationStrings$entity$department$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Departments';
	@override late final _OrganizationStrings$entity$department$fields$en fields = _OrganizationStrings$entity$department$fields$en._(_root);
	@override late final _OrganizationStrings$entity$department$reverse$en reverse = _OrganizationStrings$entity$department$reverse$en._(_root);
}

// Path: entity.departmentkind
class _OrganizationStrings$entity$departmentkind$en extends OrganizationStrings$entity$departmentkind$ja {
	_OrganizationStrings$entity$departmentkind$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Department kind assignments';
	@override late final _OrganizationStrings$entity$departmentkind$fields$en fields = _OrganizationStrings$entity$departmentkind$fields$en._(_root);
}

// Path: entity.staff
class _OrganizationStrings$entity$staff$en extends OrganizationStrings$entity$staff$ja {
	_OrganizationStrings$entity$staff$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Workers';
	@override late final _OrganizationStrings$entity$staff$fields$en fields = _OrganizationStrings$entity$staff$fields$en._(_root);
}

// Path: entity.staffcapability
class _OrganizationStrings$entity$staffcapability$en extends OrganizationStrings$entity$staffcapability$ja {
	_OrganizationStrings$entity$staffcapability$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Worker capabilities';
	@override late final _OrganizationStrings$entity$staffcapability$fields$en fields = _OrganizationStrings$entity$staffcapability$fields$en._(_root);
}

// Path: entity.stafflicense
class _OrganizationStrings$entity$stafflicense$en extends OrganizationStrings$entity$stafflicense$ja {
	_OrganizationStrings$entity$stafflicense$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Worker licenses';
	@override late final _OrganizationStrings$entity$stafflicense$fields$en fields = _OrganizationStrings$entity$stafflicense$fields$en._(_root);
}

// Path: entity.approvalpattern
class _OrganizationStrings$entity$approvalpattern$en extends OrganizationStrings$entity$approvalpattern$ja {
	_OrganizationStrings$entity$approvalpattern$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approval patterns';
	@override late final _OrganizationStrings$entity$approvalpattern$fields$en fields = _OrganizationStrings$entity$approvalpattern$fields$en._(_root);
}

// Path: entity.approver
class _OrganizationStrings$entity$approver$en extends OrganizationStrings$entity$approver$ja {
	_OrganizationStrings$entity$approver$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approvers';
	@override late final _OrganizationStrings$entity$approver$fields$en fields = _OrganizationStrings$entity$approver$fields$en._(_root);
}

// Path: entity.company.fields
class _OrganizationStrings$entity$company$fields$en extends OrganizationStrings$entity$company$fields$ja {
	_OrganizationStrings$entity$company$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Company name';
	@override String get f_pronunciation => 'Company name reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_ceo => 'Representative';
	@override String get f_web_page => 'Website';
	@override String get f_country_code_2 => 'Country';
	@override String get f_zip_code => 'Postal code';
	@override String get f_address1 => 'Address 1';
	@override String get f_address2 => 'Address 2';
	@override String get f_building => 'Building';
	@override String get f_phone => 'Phone';
	@override String get f_fax_number => 'Fax';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.provision.fields
class _OrganizationStrings$entity$provision$fields$en extends OrganizationStrings$entity$provision$fields$ja {
	_OrganizationStrings$entity$provision$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_kind => 'Kind';
	@override String get f_code => 'Provision code';
	@override String get f_name => 'Name';
	@override String get f_detail => 'Details';
}

// Path: entity.position.fields
class _OrganizationStrings$entity$position$fields$en extends OrganizationStrings$entity$position$fields$ja {
	_OrganizationStrings$entity$position$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Role name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_priority => 'Rank';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.assignment.fields
class _OrganizationStrings$entity$assignment$fields$en extends OrganizationStrings$entity$assignment$fields$ja {
	_OrganizationStrings$entity$assignment$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_staff => 'Staff';
	@override String get f_enable => 'Enabled';
	@override String get f_priority => 'Priority';
	@override String get f_office => 'Site';
	@override String get f_department => 'Department';
}

// Path: entity.site.fields
class _OrganizationStrings$entity$site$fields$en extends OrganizationStrings$entity$site$fields$ja {
	_OrganizationStrings$entity$site$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Site code';
	@override String get f_name => 'Site name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_country_code_2 => 'Country';
	@override String get f_zip_code => 'Postal code';
	@override String get f_address1 => 'Address 1';
	@override String get f_address2 => 'Address 2';
	@override String get f_building => 'Building';
	@override String get f_phone => 'Phone';
	@override String get f_fax_number => 'Fax';
}

// Path: entity.deptkind.fields
class _OrganizationStrings$entity$deptkind$fields$en extends OrganizationStrings$entity$deptkind$fields$ja {
	_OrganizationStrings$entity$deptkind$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Kind name';
	@override String get f_detail => 'Kind details';
}

// Path: entity.department.fields
class _OrganizationStrings$entity$department$fields$en extends OrganizationStrings$entity$department$fields$ja {
	_OrganizationStrings$entity$department$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_code => 'Organization code';
	@override String get f_name => 'Organization name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_site => 'Site';
}

// Path: entity.department.reverse
class _OrganizationStrings$entity$department$reverse$en extends OrganizationStrings$entity$department$reverse$ja {
	_OrganizationStrings$entity$department$reverse$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get assignment => 'Assignments';
	@override String get approver => 'Approvers';
	@override String get taskres => 'Task locations';
	@override String get preventiondetail => 'Preventive actions';
	@override String get audit => 'Audits';
}

// Path: entity.departmentkind.fields
class _OrganizationStrings$entity$departmentkind$fields$en extends OrganizationStrings$entity$departmentkind$fields$ja {
	_OrganizationStrings$entity$departmentkind$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_kind => 'Department kind';
}

// Path: entity.staff.fields
class _OrganizationStrings$entity$staff$fields$en extends OrganizationStrings$entity$staff$fields$ja {
	_OrganizationStrings$entity$staff$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_no => 'Staff code';
	@override String get f_name => 'Name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_sex => 'Sex';
	@override String get f_phone => 'Phone';
	@override String get f_private_phone => 'Emergency phone';
	@override String get f_symbol => 'Symbol';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.staffcapability.fields
class _OrganizationStrings$entity$staffcapability$fields$en extends OrganizationStrings$entity$staffcapability$fields$ja {
	_OrganizationStrings$entity$staffcapability$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_capability => 'Capability';
	@override String get f_value => 'Value';
	@override String get f_stop => 'Stopped';
}

// Path: entity.stafflicense.fields
class _OrganizationStrings$entity$stafflicense$fields$en extends OrganizationStrings$entity$stafflicense$fields$ja {
	_OrganizationStrings$entity$stafflicense$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_license => 'License';
	@override String get f_number => 'License number';
	@override String get f_acquired => 'Effective from';
	@override String get f_expires => 'Effective until';
	@override String get f_abeyance => 'On hold';
	@override String get f_abeyance_at => 'Held on';
	@override String get f_revocation => 'Revoked';
	@override String get f_revocation_at => 'Revoked on';
}

// Path: entity.approvalpattern.fields
class _OrganizationStrings$entity$approvalpattern$fields$en extends OrganizationStrings$entity$approvalpattern$fields$ja {
	_OrganizationStrings$entity$approvalpattern$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Pattern name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_remarks => 'Remarks';
}

// Path: entity.approver.fields
class _OrganizationStrings$entity$approver$fields$en extends OrganizationStrings$entity$approver$fields$ja {
	_OrganizationStrings$entity$approver$fields$en._(OrganizationStringsEn root) : this._root = root, super.internal(root);

	final OrganizationStringsEn _root; // ignore: unused_field

	// Translations
	@override String get f_name => 'Name';
	@override String get f_pronunciation => 'Reading';
	@override String get f_nickname => 'Abbreviation';
	@override String get f_department => 'Department';
	@override String get f_position => 'Position';
	@override String get f_priority => 'Priority';
	@override String get f_remarks => 'Remarks';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on OrganizationStringsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => 'Company',
			'entity.company.title' => 'Company information',
			'entity.company.fields.f_name' => 'Company name',
			'entity.company.fields.f_pronunciation' => 'Company name reading',
			'entity.company.fields.f_nickname' => 'Abbreviation',
			'entity.company.fields.f_ceo' => 'Representative',
			'entity.company.fields.f_web_page' => 'Website',
			'entity.company.fields.f_country_code_2' => 'Country',
			'entity.company.fields.f_zip_code' => 'Postal code',
			'entity.company.fields.f_address1' => 'Address 1',
			'entity.company.fields.f_address2' => 'Address 2',
			'entity.company.fields.f_building' => 'Building',
			'entity.company.fields.f_phone' => 'Phone',
			'entity.company.fields.f_fax_number' => 'Fax',
			'entity.company.fields.f_remarks' => 'Remarks',
			'entity.provision.title' => 'Provisions',
			'entity.provision.fields.f_kind' => 'Kind',
			'entity.provision.fields.f_code' => 'Provision code',
			'entity.provision.fields.f_name' => 'Name',
			'entity.provision.fields.f_detail' => 'Details',
			'entity.position.title' => 'Roles (positions)',
			'entity.position.fields.f_name' => 'Role name',
			'entity.position.fields.f_pronunciation' => 'Reading',
			'entity.position.fields.f_priority' => 'Rank',
			'entity.position.fields.f_remarks' => 'Remarks',
			'entity.assignment.title' => 'Assignments',
			'entity.assignment.fields.f_staff' => 'Staff',
			'entity.assignment.fields.f_enable' => 'Enabled',
			'entity.assignment.fields.f_priority' => 'Priority',
			'entity.assignment.fields.f_office' => 'Site',
			'entity.assignment.fields.f_department' => 'Department',
			'entity.site.title' => 'Sites',
			'entity.site.fields.f_code' => 'Site code',
			'entity.site.fields.f_name' => 'Site name',
			'entity.site.fields.f_pronunciation' => 'Reading',
			'entity.site.fields.f_nickname' => 'Abbreviation',
			'entity.site.fields.f_country_code_2' => 'Country',
			'entity.site.fields.f_zip_code' => 'Postal code',
			'entity.site.fields.f_address1' => 'Address 1',
			'entity.site.fields.f_address2' => 'Address 2',
			'entity.site.fields.f_building' => 'Building',
			'entity.site.fields.f_phone' => 'Phone',
			'entity.site.fields.f_fax_number' => 'Fax',
			'entity.deptkind.title' => 'Department kinds',
			'entity.deptkind.fields.f_name' => 'Kind name',
			'entity.deptkind.fields.f_detail' => 'Kind details',
			'entity.department.title' => 'Departments',
			'entity.department.fields.f_code' => 'Organization code',
			'entity.department.fields.f_name' => 'Organization name',
			'entity.department.fields.f_pronunciation' => 'Reading',
			'entity.department.fields.f_nickname' => 'Abbreviation',
			'entity.department.fields.f_site' => 'Site',
			'entity.department.reverse.assignment' => 'Assignments',
			'entity.department.reverse.approver' => 'Approvers',
			'entity.department.reverse.taskres' => 'Task locations',
			'entity.department.reverse.preventiondetail' => 'Preventive actions',
			'entity.department.reverse.audit' => 'Audits',
			'entity.departmentkind.title' => 'Department kind assignments',
			'entity.departmentkind.fields.f_kind' => 'Department kind',
			'entity.staff.title' => 'Workers',
			'entity.staff.fields.f_no' => 'Staff code',
			'entity.staff.fields.f_name' => 'Name',
			'entity.staff.fields.f_pronunciation' => 'Reading',
			'entity.staff.fields.f_sex' => 'Sex',
			'entity.staff.fields.f_phone' => 'Phone',
			'entity.staff.fields.f_private_phone' => 'Emergency phone',
			'entity.staff.fields.f_symbol' => 'Symbol',
			'entity.staff.fields.f_remarks' => 'Remarks',
			'entity.staffcapability.title' => 'Worker capabilities',
			'entity.staffcapability.fields.f_capability' => 'Capability',
			'entity.staffcapability.fields.f_value' => 'Value',
			'entity.staffcapability.fields.f_stop' => 'Stopped',
			'entity.stafflicense.title' => 'Worker licenses',
			'entity.stafflicense.fields.f_license' => 'License',
			'entity.stafflicense.fields.f_number' => 'License number',
			'entity.stafflicense.fields.f_acquired' => 'Effective from',
			'entity.stafflicense.fields.f_expires' => 'Effective until',
			'entity.stafflicense.fields.f_abeyance' => 'On hold',
			'entity.stafflicense.fields.f_abeyance_at' => 'Held on',
			'entity.stafflicense.fields.f_revocation' => 'Revoked',
			'entity.stafflicense.fields.f_revocation_at' => 'Revoked on',
			'entity.approvalpattern.title' => 'Approval patterns',
			'entity.approvalpattern.fields.f_name' => 'Pattern name',
			'entity.approvalpattern.fields.f_pronunciation' => 'Reading',
			'entity.approvalpattern.fields.f_remarks' => 'Remarks',
			'entity.approver.title' => 'Approvers',
			'entity.approver.fields.f_name' => 'Name',
			'entity.approver.fields.f_pronunciation' => 'Reading',
			'entity.approver.fields.f_nickname' => 'Abbreviation',
			'entity.approver.fields.f_department' => 'Department',
			'entity.approver.fields.f_position' => 'Position',
			'entity.approver.fields.f_priority' => 'Priority',
			'entity.approver.fields.f_remarks' => 'Remarks',
			_ => null,
		};
	}
}
