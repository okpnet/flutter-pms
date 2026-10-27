///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef OrganizationStringsJa = OrganizationStrings; // ignore: unused_element
class OrganizationStrings with BaseTranslations<OrganizationLocale, OrganizationStrings> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [OrganizationLocale.build] is preferred.
	OrganizationStrings({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<OrganizationLocale, OrganizationStrings>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: OrganizationLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	final TranslationMetadata<OrganizationLocale, OrganizationStrings> _meta;
	@override TranslationMetadata<OrganizationLocale, OrganizationStrings> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final OrganizationStrings _root = this; // ignore: unused_field

	OrganizationStrings $copyWith({TranslationMetadata<OrganizationLocale, OrganizationStrings>? meta}) => OrganizationStrings(meta: meta ?? this.$meta);

	// Translations
	late final OrganizationStrings$menu$ja menu = OrganizationStrings$menu$ja.internal(_root);
	late final OrganizationStrings$entity$ja entity = OrganizationStrings$entity$ja.internal(_root);
}

// Path: menu
class OrganizationStrings$menu$ja {
	OrganizationStrings$menu$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '会社情報'
	String get group => '会社情報';
}

// Path: entity
class OrganizationStrings$entity$ja {
	OrganizationStrings$entity$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations
	late final OrganizationStrings$entity$company$ja company = OrganizationStrings$entity$company$ja.internal(_root);
	late final OrganizationStrings$entity$provision$ja provision = OrganizationStrings$entity$provision$ja.internal(_root);
	late final OrganizationStrings$entity$position$ja position = OrganizationStrings$entity$position$ja.internal(_root);
	late final OrganizationStrings$entity$assignment$ja assignment = OrganizationStrings$entity$assignment$ja.internal(_root);
	late final OrganizationStrings$entity$site$ja site = OrganizationStrings$entity$site$ja.internal(_root);
	late final OrganizationStrings$entity$deptkind$ja deptkind = OrganizationStrings$entity$deptkind$ja.internal(_root);
	late final OrganizationStrings$entity$department$ja department = OrganizationStrings$entity$department$ja.internal(_root);
	late final OrganizationStrings$entity$departmentkind$ja departmentkind = OrganizationStrings$entity$departmentkind$ja.internal(_root);
	late final OrganizationStrings$entity$staff$ja staff = OrganizationStrings$entity$staff$ja.internal(_root);
	late final OrganizationStrings$entity$staffcapability$ja staffcapability = OrganizationStrings$entity$staffcapability$ja.internal(_root);
	late final OrganizationStrings$entity$stafflicense$ja stafflicense = OrganizationStrings$entity$stafflicense$ja.internal(_root);
	late final OrganizationStrings$entity$approvalpattern$ja approvalpattern = OrganizationStrings$entity$approvalpattern$ja.internal(_root);
	late final OrganizationStrings$entity$approver$ja approver = OrganizationStrings$entity$approver$ja.internal(_root);
}

// Path: entity.company
class OrganizationStrings$entity$company$ja {
	OrganizationStrings$entity$company$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '会社情報'
	String get title => '会社情報';

	late final OrganizationStrings$entity$company$fields$ja fields = OrganizationStrings$entity$company$fields$ja.internal(_root);
}

// Path: entity.provision
class OrganizationStrings$entity$provision$ja {
	OrganizationStrings$entity$provision$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '提供'
	String get title => '提供';

	late final OrganizationStrings$entity$provision$fields$ja fields = OrganizationStrings$entity$provision$fields$ja.internal(_root);
}

// Path: entity.position
class OrganizationStrings$entity$position$ja {
	OrganizationStrings$entity$position$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '役割(役職)'
	String get title => '役割(役職)';

	late final OrganizationStrings$entity$position$fields$ja fields = OrganizationStrings$entity$position$fields$ja.internal(_root);
}

// Path: entity.assignment
class OrganizationStrings$entity$assignment$ja {
	OrganizationStrings$entity$assignment$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '割当'
	String get title => '割当';

	late final OrganizationStrings$entity$assignment$fields$ja fields = OrganizationStrings$entity$assignment$fields$ja.internal(_root);
}

// Path: entity.site
class OrganizationStrings$entity$site$ja {
	OrganizationStrings$entity$site$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '事業所'
	String get title => '事業所';

	late final OrganizationStrings$entity$site$fields$ja fields = OrganizationStrings$entity$site$fields$ja.internal(_root);
}

// Path: entity.deptkind
class OrganizationStrings$entity$deptkind$ja {
	OrganizationStrings$entity$deptkind$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署区分'
	String get title => '部署区分';

	late final OrganizationStrings$entity$deptkind$fields$ja fields = OrganizationStrings$entity$deptkind$fields$ja.internal(_root);
}

// Path: entity.department
class OrganizationStrings$entity$department$ja {
	OrganizationStrings$entity$department$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署'
	String get title => '部署';

	late final OrganizationStrings$entity$department$fields$ja fields = OrganizationStrings$entity$department$fields$ja.internal(_root);
}

// Path: entity.departmentkind
class OrganizationStrings$entity$departmentkind$ja {
	OrganizationStrings$entity$departmentkind$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署区分の割当'
	String get title => '部署区分の割当';

	late final OrganizationStrings$entity$departmentkind$fields$ja fields = OrganizationStrings$entity$departmentkind$fields$ja.internal(_root);
}

// Path: entity.staff
class OrganizationStrings$entity$staff$ja {
	OrganizationStrings$entity$staff$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業者'
	String get title => '作業者';

	late final OrganizationStrings$entity$staff$fields$ja fields = OrganizationStrings$entity$staff$fields$ja.internal(_root);
}

// Path: entity.staffcapability
class OrganizationStrings$entity$staffcapability$ja {
	OrganizationStrings$entity$staffcapability$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業者の力量'
	String get title => '作業者の力量';

	late final OrganizationStrings$entity$staffcapability$fields$ja fields = OrganizationStrings$entity$staffcapability$fields$ja.internal(_root);
}

// Path: entity.stafflicense
class OrganizationStrings$entity$stafflicense$ja {
	OrganizationStrings$entity$stafflicense$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '作業者の資格'
	String get title => '作業者の資格';

	late final OrganizationStrings$entity$stafflicense$fields$ja fields = OrganizationStrings$entity$stafflicense$fields$ja.internal(_root);
}

// Path: entity.approvalpattern
class OrganizationStrings$entity$approvalpattern$ja {
	OrganizationStrings$entity$approvalpattern$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認パターン'
	String get title => '承認パターン';

	late final OrganizationStrings$entity$approvalpattern$fields$ja fields = OrganizationStrings$entity$approvalpattern$fields$ja.internal(_root);
}

// Path: entity.approver
class OrganizationStrings$entity$approver$ja {
	OrganizationStrings$entity$approver$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認できる人'
	String get title => '承認できる人';

	late final OrganizationStrings$entity$approver$fields$ja fields = OrganizationStrings$entity$approver$fields$ja.internal(_root);
}

// Path: entity.company.fields
class OrganizationStrings$entity$company$fields$ja {
	OrganizationStrings$entity$company$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '会社名'
	String get f_name => '会社名';

	/// ja: '会社名の読み'
	String get f_pronunciation => '会社名の読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '代表者名'
	String get f_ceo => '代表者名';

	/// ja: 'ホームページ'
	String get f_web_page => 'ホームページ';

	/// ja: '国コード(ISO 3166-1 alpha-2)'
	String get f_country_code_2 => '国コード(ISO 3166-1 alpha-2)';

	/// ja: '郵便番号'
	String get f_zip_code => '郵便番号';

	/// ja: '都道府県'
	String get f_prefecture => '都道府県';

	/// ja: '市町村番地'
	String get f_city => '市町村番地';

	/// ja: '建物'
	String get f_building => '建物';

	/// ja: '電話'
	String get f_phone => '電話';

	/// ja: 'FAX'
	String get f_fax_number => 'FAX';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.provision.fields
class OrganizationStrings$entity$provision$fields$ja {
	OrganizationStrings$entity$provision$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '種別'
	String get f_kind => '種別';

	/// ja: '提供コード'
	String get f_code => '提供コード';

	/// ja: '名称'
	String get f_name => '名称';

	/// ja: '詳細'
	String get f_detail => '詳細';
}

// Path: entity.position.fields
class OrganizationStrings$entity$position$fields$ja {
	OrganizationStrings$entity$position$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '役割名称'
	String get f_name => '役割名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '順位'
	String get f_priority => '順位';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.assignment.fields
class OrganizationStrings$entity$assignment$fields$ja {
	OrganizationStrings$entity$assignment$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者'
	String get f_staff => '担当者';

	/// ja: '有効'
	String get f_enable => '有効';

	/// ja: '優先順位'
	String get f_priority => '優先順位';

	/// ja: '事業所'
	String get f_office => '事業所';

	/// ja: '部署'
	String get f_department => '部署';
}

// Path: entity.site.fields
class OrganizationStrings$entity$site$fields$ja {
	OrganizationStrings$entity$site$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '事業所コード'
	String get f_code => '事業所コード';

	/// ja: '事業所名称'
	String get f_name => '事業所名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '国コード(ISO 3166-1 alpha-2)'
	String get f_country_code_2 => '国コード(ISO 3166-1 alpha-2)';

	/// ja: '郵便番号'
	String get f_zip_code => '郵便番号';

	/// ja: '都道府県'
	String get f_prefecture => '都道府県';

	/// ja: '市町村番地'
	String get f_city => '市町村番地';

	/// ja: '建物'
	String get f_building => '建物';

	/// ja: '電話'
	String get f_phone => '電話';

	/// ja: 'FAX'
	String get f_fax_number => 'FAX';
}

// Path: entity.deptkind.fields
class OrganizationStrings$entity$deptkind$fields$ja {
	OrganizationStrings$entity$deptkind$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '区分名'
	String get f_name => '区分名';

	/// ja: '区分詳細'
	String get f_detail => '区分詳細';
}

// Path: entity.department.fields
class OrganizationStrings$entity$department$fields$ja {
	OrganizationStrings$entity$department$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '組織コード'
	String get f_code => '組織コード';

	/// ja: '組織名称'
	String get f_name => '組織名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '事業所'
	String get f_site => '事業所';
}

// Path: entity.departmentkind.fields
class OrganizationStrings$entity$departmentkind$fields$ja {
	OrganizationStrings$entity$departmentkind$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '部署区分'
	String get f_kind => '部署区分';
}

// Path: entity.staff.fields
class OrganizationStrings$entity$staff$fields$ja {
	OrganizationStrings$entity$staff$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者コード'
	String get f_no => '担当者コード';

	/// ja: '名前'
	String get f_name => '名前';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '性別'
	String get f_sex => '性別';

	/// ja: '電話'
	String get f_phone => '電話';

	/// ja: '緊急電話'
	String get f_private_phone => '緊急電話';

	/// ja: '記号'
	String get f_symbol => '記号';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.staffcapability.fields
class OrganizationStrings$entity$staffcapability$fields$ja {
	OrganizationStrings$entity$staffcapability$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '力量'
	String get f_capability => '力量';

	/// ja: '値'
	String get f_value => '値';

	/// ja: '停止'
	String get f_stop => '停止';
}

// Path: entity.stafflicense.fields
class OrganizationStrings$entity$stafflicense$fields$ja {
	OrganizationStrings$entity$stafflicense$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '資格'
	String get f_license => '資格';

	/// ja: '資格番号'
	String get f_number => '資格番号';

	/// ja: '適用開始'
	String get f_acquired => '適用開始';

	/// ja: '適用終了'
	String get f_expires => '適用終了';

	/// ja: '保留(停止)'
	String get f_abeyance => '保留(停止)';

	/// ja: '保留日'
	String get f_abeyance_at => '保留日';

	/// ja: '取り消し'
	String get f_revocation => '取り消し';

	/// ja: '取り消し日'
	String get f_revocation_at => '取り消し日';
}

// Path: entity.approvalpattern.fields
class OrganizationStrings$entity$approvalpattern$fields$ja {
	OrganizationStrings$entity$approvalpattern$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'パターン名称'
	String get f_name => 'パターン名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.approver.fields
class OrganizationStrings$entity$approver$fields$ja {
	OrganizationStrings$entity$approver$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '名称'
	String get f_name => '名称';

	/// ja: '読み'
	String get f_pronunciation => '読み';

	/// ja: '略称'
	String get f_nickname => '略称';

	/// ja: '部署'
	String get f_department => '部署';

	/// ja: '役職'
	String get f_position => '役職';

	/// ja: '優先順位'
	String get f_priority => '優先順位';

	/// ja: '備考'
	String get f_remarks => '備考';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on OrganizationStrings {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'menu.group' => '会社情報',
			'entity.company.title' => '会社情報',
			'entity.company.fields.f_name' => '会社名',
			'entity.company.fields.f_pronunciation' => '会社名の読み',
			'entity.company.fields.f_nickname' => '略称',
			'entity.company.fields.f_ceo' => '代表者名',
			'entity.company.fields.f_web_page' => 'ホームページ',
			'entity.company.fields.f_country_code_2' => '国コード(ISO 3166-1 alpha-2)',
			'entity.company.fields.f_zip_code' => '郵便番号',
			'entity.company.fields.f_prefecture' => '都道府県',
			'entity.company.fields.f_city' => '市町村番地',
			'entity.company.fields.f_building' => '建物',
			'entity.company.fields.f_phone' => '電話',
			'entity.company.fields.f_fax_number' => 'FAX',
			'entity.company.fields.f_remarks' => '備考',
			'entity.provision.title' => '提供',
			'entity.provision.fields.f_kind' => '種別',
			'entity.provision.fields.f_code' => '提供コード',
			'entity.provision.fields.f_name' => '名称',
			'entity.provision.fields.f_detail' => '詳細',
			'entity.position.title' => '役割(役職)',
			'entity.position.fields.f_name' => '役割名称',
			'entity.position.fields.f_pronunciation' => '読み',
			'entity.position.fields.f_priority' => '順位',
			'entity.position.fields.f_remarks' => '備考',
			'entity.assignment.title' => '割当',
			'entity.assignment.fields.f_staff' => '担当者',
			'entity.assignment.fields.f_enable' => '有効',
			'entity.assignment.fields.f_priority' => '優先順位',
			'entity.assignment.fields.f_office' => '事業所',
			'entity.assignment.fields.f_department' => '部署',
			'entity.site.title' => '事業所',
			'entity.site.fields.f_code' => '事業所コード',
			'entity.site.fields.f_name' => '事業所名称',
			'entity.site.fields.f_pronunciation' => '読み',
			'entity.site.fields.f_nickname' => '略称',
			'entity.site.fields.f_country_code_2' => '国コード(ISO 3166-1 alpha-2)',
			'entity.site.fields.f_zip_code' => '郵便番号',
			'entity.site.fields.f_prefecture' => '都道府県',
			'entity.site.fields.f_city' => '市町村番地',
			'entity.site.fields.f_building' => '建物',
			'entity.site.fields.f_phone' => '電話',
			'entity.site.fields.f_fax_number' => 'FAX',
			'entity.deptkind.title' => '部署区分',
			'entity.deptkind.fields.f_name' => '区分名',
			'entity.deptkind.fields.f_detail' => '区分詳細',
			'entity.department.title' => '部署',
			'entity.department.fields.f_code' => '組織コード',
			'entity.department.fields.f_name' => '組織名称',
			'entity.department.fields.f_pronunciation' => '読み',
			'entity.department.fields.f_nickname' => '略称',
			'entity.department.fields.f_site' => '事業所',
			'entity.departmentkind.title' => '部署区分の割当',
			'entity.departmentkind.fields.f_kind' => '部署区分',
			'entity.staff.title' => '作業者',
			'entity.staff.fields.f_no' => '担当者コード',
			'entity.staff.fields.f_name' => '名前',
			'entity.staff.fields.f_pronunciation' => '読み',
			'entity.staff.fields.f_sex' => '性別',
			'entity.staff.fields.f_phone' => '電話',
			'entity.staff.fields.f_private_phone' => '緊急電話',
			'entity.staff.fields.f_symbol' => '記号',
			'entity.staff.fields.f_remarks' => '備考',
			'entity.staffcapability.title' => '作業者の力量',
			'entity.staffcapability.fields.f_capability' => '力量',
			'entity.staffcapability.fields.f_value' => '値',
			'entity.staffcapability.fields.f_stop' => '停止',
			'entity.stafflicense.title' => '作業者の資格',
			'entity.stafflicense.fields.f_license' => '資格',
			'entity.stafflicense.fields.f_number' => '資格番号',
			'entity.stafflicense.fields.f_acquired' => '適用開始',
			'entity.stafflicense.fields.f_expires' => '適用終了',
			'entity.stafflicense.fields.f_abeyance' => '保留(停止)',
			'entity.stafflicense.fields.f_abeyance_at' => '保留日',
			'entity.stafflicense.fields.f_revocation' => '取り消し',
			'entity.stafflicense.fields.f_revocation_at' => '取り消し日',
			'entity.approvalpattern.title' => '承認パターン',
			'entity.approvalpattern.fields.f_name' => 'パターン名称',
			'entity.approvalpattern.fields.f_pronunciation' => '読み',
			'entity.approvalpattern.fields.f_remarks' => '備考',
			'entity.approver.title' => '承認できる人',
			'entity.approver.fields.f_name' => '名称',
			'entity.approver.fields.f_pronunciation' => '読み',
			'entity.approver.fields.f_nickname' => '略称',
			'entity.approver.fields.f_department' => '部署',
			'entity.approver.fields.f_position' => '役職',
			'entity.approver.fields.f_priority' => '優先順位',
			'entity.approver.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
