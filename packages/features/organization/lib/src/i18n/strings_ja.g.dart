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
	late final OrganizationStrings$home$ja home = OrganizationStrings$home$ja.internal(_root);
	late final OrganizationStrings$approvalDefaults$ja approvalDefaults = OrganizationStrings$approvalDefaults$ja.internal(_root);
	late final OrganizationStrings$approvalSteps$ja approvalSteps = OrganizationStrings$approvalSteps$ja.internal(_root);
	late final OrganizationStrings$menu$ja menu = OrganizationStrings$menu$ja.internal(_root);
	late final OrganizationStrings$entity$ja entity = OrganizationStrings$entity$ja.internal(_root);
}

// Path: home
class OrganizationStrings$home$ja {
	OrganizationStrings$home$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '会社情報'
	String get overview => '会社情報';

	/// ja: '編集'
	String get edit => '編集';

	/// ja: '開く'
	String get open => '開く';

	/// ja: '登録がありません'
	String get none => '登録がありません';

	/// ja: '所在地'
	String get address => '所在地';

	/// ja: 'サマリ'
	String get summary => 'サマリ';

	/// ja: '作業者'
	String get staff => '作業者';

	/// ja: '事業所'
	String get sites => '事業所';

	/// ja: '部署'
	String get departments => '部署';

	/// ja: '役職'
	String get positions => '役職';

	/// ja: '名'
	String get unitPerson => '名';

	/// ja: '拠点'
	String get unitSite => '拠点';

	/// ja: '部署'
	String get unitDepartment => '部署';

	/// ja: '件'
	String get unitPosition => '件';

	/// ja: '件'
	String get unitCase => '件';

	/// ja: '${count}拠点'
	String siteCount({required Object count}) => '${count}拠点';

	/// ja: '部署の構成'
	String get departmentStructure => '部署の構成';

	/// ja: '全${count}部署'
	String departmentCount({required Object count}) => '全${count}部署';

	/// ja: '詳細'
	String get detail => '詳細';

	/// ja: '提供サービス・製品'
	String get offerings => '提供サービス・製品';

	/// ja: '承認'
	String get approval => '承認';

	/// ja: 'アクセスパスの承認'
	String get approvalPathApproval => 'アクセスパスの承認';

	/// ja: '配下 ${count}'
	String below({required Object count}) => '配下 ${count}';
}

// Path: approvalDefaults
class OrganizationStrings$approvalDefaults$ja {
	OrganizationStrings$approvalDefaults$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '標準の承認パターン'
	String get title => '標準の承認パターン';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '登録が申請になる対象ごとに、使う承認パターンを選びます。「承認不要」は、その対象の登録で承認を求めません。変更は「保存」で反映されます。承認パターンの登録(承認の段・承認できる人)は、承認パターンの台帳で行います。'
	String get hint => '登録が申請になる対象ごとに、使う承認パターンを選びます。「承認不要」は、その対象の登録で承認を求めません。変更は「保存」で反映されます。承認パターンの登録(承認の段・承認できる人)は、承認パターンの台帳で行います。';

	/// ja: '承認不要(設定しない)'
	String get none => '承認不要(設定しない)';

	/// ja: '(一覧に無いパターン) ${id}'
	String unknown({required Object id}) => '(一覧に無いパターン) ${id}';

	/// ja: '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。'
	String get documentNote => '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。';

	/// ja: '承認パターンが登録されていません。承認パターンの台帳で登録してください。'
	String get empty => '承認パターンが登録されていません。承認パターンの台帳で登録してください。';

	/// ja: '標準の承認パターンを読み込めませんでした。'
	String get loadFailed => '標準の承認パターンを読み込めませんでした。';

	/// ja: '未保存の変更があります。'
	String get unsaved => '未保存の変更があります。';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '保存済みに戻す'
	String get revert => '保存済みに戻す';

	/// ja: '保存しました。'
	String get saved => '保存しました。';

	/// ja: '保存できませんでした。'
	String get saveFailed => '保存できませんでした。';

	/// ja: '標準の承認パターン'
	String get open => '標準の承認パターン';

	/// ja: '文書'
	String get kindDocument => '文書';

	/// ja: '受注'
	String get kindOrder => '受注';

	/// ja: '発注'
	String get kindPurchase => '発注';

	/// ja: '非計上発注'
	String get kindUnrecognized => '非計上発注';

	/// ja: '出荷オーダー'
	String get kindShippingOrder => '出荷オーダー';

	/// ja: '異常'
	String get kindComplaint => '異常';

	/// ja: '処置'
	String get kindDisposal => '処置';

	/// ja: '再発防止'
	String get kindRecurrencePrevention => '再発防止';
}

// Path: approvalSteps
class OrganizationStrings$approvalSteps$ja {
	OrganizationStrings$approvalSteps$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認の段'
	String get title => '承認の段';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '承認パターン: ${name}'
	String pattern({required Object name}) => '承認パターン: ${name}';

	/// ja: '承認は、上の段から順に行います。行をドラッグして並べ替えると、順位が付け替わります。行をダブルクリックすると、部署・役職を変えたり、段を削除したりできます。'
	String get hint => '承認は、上の段から順に行います。行をドラッグして並べ替えると、順位が付け替わります。行をダブルクリックすると、部署・役職を変えたり、段を削除したりできます。';

	/// ja: '承認の段がありません。「段を追加」で登録します(段が無いパターンは、承認不要として扱われます)。'
	String get empty => '承認の段がありません。「段を追加」で登録します(段が無いパターンは、承認不要として扱われます)。';

	/// ja: '承認の段を読み込めませんでした。'
	String get loadFailed => '承認の段を読み込めませんでした。';

	/// ja: '保存できませんでした。もう一度お試しください。'
	String get actionFailed => '保存できませんでした。もう一度お試しください。';

	/// ja: '段を追加'
	String get add => '段を追加';

	/// ja: '段階'
	String get colStep => '段階';

	/// ja: '部署'
	String get colDepartment => '部署';

	/// ja: '役職'
	String get colPosition => '役職';

	/// ja: '第${n}段階'
	String stepLabel({required Object n}) => '第${n}段階';

	/// ja: '(指定なし)'
	String get anyDepartment => '(指定なし)';

	/// ja: '承認の段の追加'
	String get addTitle => '承認の段の追加';

	/// ja: '承認の段の編集'
	String get editTitle => '承認の段の編集';

	/// ja: '部署'
	String get department => '部署';

	/// ja: '役職'
	String get position => '役職';

	/// ja: '役職を選んでください。'
	String get positionRequired => '役職を選んでください。';

	/// ja: '保存'
	String get save => '保存';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: 'この承認の段を削除しますか。'
	String get deleteConfirm => 'この承認の段を削除しますか。';
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
	late final OrganizationStrings$entity$stafficon$ja stafficon = OrganizationStrings$entity$stafficon$ja.internal(_root);
	late final OrganizationStrings$entity$staffcapability$ja staffcapability = OrganizationStrings$entity$staffcapability$ja.internal(_root);
	late final OrganizationStrings$entity$stafflicense$ja stafflicense = OrganizationStrings$entity$stafflicense$ja.internal(_root);
	late final OrganizationStrings$entity$approvalpattern$ja approvalpattern = OrganizationStrings$entity$approvalpattern$ja.internal(_root);
	late final OrganizationStrings$entity$accesspathapproval$ja accesspathapproval = OrganizationStrings$entity$accesspathapproval$ja.internal(_root);
	late final OrganizationStrings$entity$approvalscope$ja approvalscope = OrganizationStrings$entity$approvalscope$ja.internal(_root);
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
	late final OrganizationStrings$entity$department$reverse$ja reverse = OrganizationStrings$entity$department$reverse$ja.internal(_root);
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

// Path: entity.stafficon
class OrganizationStrings$entity$stafficon$ja {
	OrganizationStrings$entity$stafficon$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '担当者のアイコン'
	String get title => '担当者のアイコン';

	late final OrganizationStrings$entity$stafficon$fields$ja fields = OrganizationStrings$entity$stafficon$fields$ja.internal(_root);
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

// Path: entity.accesspathapproval
class OrganizationStrings$entity$accesspathapproval$ja {
	OrganizationStrings$entity$accesspathapproval$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アクセスパスの承認'
	String get title => 'アクセスパスの承認';

	late final OrganizationStrings$entity$accesspathapproval$fields$ja fields = OrganizationStrings$entity$accesspathapproval$fields$ja.internal(_root);
}

// Path: entity.approvalscope
class OrganizationStrings$entity$approvalscope$ja {
	OrganizationStrings$entity$approvalscope$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '承認の範囲'
	String get title => '承認の範囲';

	late final OrganizationStrings$entity$approvalscope$fields$ja fields = OrganizationStrings$entity$approvalscope$fields$ja.internal(_root);
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

	/// ja: '国'
	String get f_country_code_2 => '国';

	/// ja: '郵便番号'
	String get f_zip_code => '郵便番号';

	/// ja: '住所1'
	String get f_address1 => '住所1';

	/// ja: '住所2'
	String get f_address2 => '住所2';

	/// ja: '建物'
	String get f_building => '建物';

	/// ja: '電話番号'
	String get f_phone => '電話番号';

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

	/// ja: '国'
	String get f_country_code_2 => '国';

	/// ja: '郵便番号'
	String get f_zip_code => '郵便番号';

	/// ja: '住所1'
	String get f_address1 => '住所1';

	/// ja: '住所2'
	String get f_address2 => '住所2';

	/// ja: '建物'
	String get f_building => '建物';

	/// ja: '電話番号'
	String get f_phone => '電話番号';

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

// Path: entity.department.reverse
class OrganizationStrings$entity$department$reverse$ja {
	OrganizationStrings$entity$department$reverse$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '割当'
	String get assignment => '割当';

	/// ja: '工程場所'
	String get taskres => '工程場所';

	/// ja: '未然防止処置'
	String get preventiondetail => '未然防止処置';

	/// ja: '監査'
	String get audit => '監査';
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

// Path: entity.stafficon.fields
class OrganizationStrings$entity$stafficon$fields$ja {
	OrganizationStrings$entity$stafficon$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '名称'
	String get f_name => '名称';

	/// ja: 'アイコン'
	String get f_file => 'アイコン';

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

	/// ja: '承認の段'
	String get f_steps => '承認の段';
}

// Path: entity.accesspathapproval.fields
class OrganizationStrings$entity$accesspathapproval$fields$ja {
	OrganizationStrings$entity$accesspathapproval$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: '名称'
	String get f_name => '名称';

	/// ja: 'アクセスパス'
	String get f_access_path => 'アクセスパス';

	/// ja: '備考'
	String get f_remarks => '備考';
}

// Path: entity.approvalscope.fields
class OrganizationStrings$entity$approvalscope$fields$ja {
	OrganizationStrings$entity$approvalscope$fields$ja.internal(this._root);

	final OrganizationStrings _root; // ignore: unused_field

	// Translations

	/// ja: 'アクセスパスの承認'
	String get f_access_path_approval => 'アクセスパスの承認';

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
			'home.overview' => '会社情報',
			'home.edit' => '編集',
			'home.open' => '開く',
			'home.none' => '登録がありません',
			'home.address' => '所在地',
			'home.summary' => 'サマリ',
			'home.staff' => '作業者',
			'home.sites' => '事業所',
			'home.departments' => '部署',
			'home.positions' => '役職',
			'home.unitPerson' => '名',
			'home.unitSite' => '拠点',
			'home.unitDepartment' => '部署',
			'home.unitPosition' => '件',
			'home.unitCase' => '件',
			'home.siteCount' => ({required Object count}) => '${count}拠点',
			'home.departmentStructure' => '部署の構成',
			'home.departmentCount' => ({required Object count}) => '全${count}部署',
			'home.detail' => '詳細',
			'home.offerings' => '提供サービス・製品',
			'home.approval' => '承認',
			'home.approvalPathApproval' => 'アクセスパスの承認',
			'home.below' => ({required Object count}) => '配下 ${count}',
			'approvalDefaults.title' => '標準の承認パターン',
			'approvalDefaults.back' => '戻る',
			'approvalDefaults.hint' => '登録が申請になる対象ごとに、使う承認パターンを選びます。「承認不要」は、その対象の登録で承認を求めません。変更は「保存」で反映されます。承認パターンの登録(承認の段・承認できる人)は、承認パターンの台帳で行います。',
			'approvalDefaults.none' => '承認不要(設定しない)',
			'approvalDefaults.unknown' => ({required Object id}) => '(一覧に無いパターン) ${id}',
			'approvalDefaults.documentNote' => '文書(マニュアルなど)は、承認パターンが無いと登録できません。承認が要らないときは、承認の段が無いパターンを選びます。',
			'approvalDefaults.empty' => '承認パターンが登録されていません。承認パターンの台帳で登録してください。',
			'approvalDefaults.loadFailed' => '標準の承認パターンを読み込めませんでした。',
			'approvalDefaults.unsaved' => '未保存の変更があります。',
			'approvalDefaults.save' => '保存',
			'approvalDefaults.revert' => '保存済みに戻す',
			'approvalDefaults.saved' => '保存しました。',
			'approvalDefaults.saveFailed' => '保存できませんでした。',
			'approvalDefaults.open' => '標準の承認パターン',
			'approvalDefaults.kindDocument' => '文書',
			'approvalDefaults.kindOrder' => '受注',
			'approvalDefaults.kindPurchase' => '発注',
			'approvalDefaults.kindUnrecognized' => '非計上発注',
			'approvalDefaults.kindShippingOrder' => '出荷オーダー',
			'approvalDefaults.kindComplaint' => '異常',
			'approvalDefaults.kindDisposal' => '処置',
			'approvalDefaults.kindRecurrencePrevention' => '再発防止',
			'approvalSteps.title' => '承認の段',
			'approvalSteps.back' => '戻る',
			'approvalSteps.pattern' => ({required Object name}) => '承認パターン: ${name}',
			'approvalSteps.hint' => '承認は、上の段から順に行います。行をドラッグして並べ替えると、順位が付け替わります。行をダブルクリックすると、部署・役職を変えたり、段を削除したりできます。',
			'approvalSteps.empty' => '承認の段がありません。「段を追加」で登録します(段が無いパターンは、承認不要として扱われます)。',
			'approvalSteps.loadFailed' => '承認の段を読み込めませんでした。',
			'approvalSteps.actionFailed' => '保存できませんでした。もう一度お試しください。',
			'approvalSteps.add' => '段を追加',
			'approvalSteps.colStep' => '段階',
			'approvalSteps.colDepartment' => '部署',
			'approvalSteps.colPosition' => '役職',
			'approvalSteps.stepLabel' => ({required Object n}) => '第${n}段階',
			'approvalSteps.anyDepartment' => '(指定なし)',
			'approvalSteps.addTitle' => '承認の段の追加',
			'approvalSteps.editTitle' => '承認の段の編集',
			'approvalSteps.department' => '部署',
			'approvalSteps.position' => '役職',
			'approvalSteps.positionRequired' => '役職を選んでください。',
			'approvalSteps.save' => '保存',
			'approvalSteps.cancel' => 'キャンセル',
			'approvalSteps.delete' => '削除',
			'approvalSteps.deleteConfirm' => 'この承認の段を削除しますか。',
			'menu.group' => '会社情報',
			'entity.company.title' => '会社情報',
			'entity.company.fields.f_name' => '会社名',
			'entity.company.fields.f_pronunciation' => '会社名の読み',
			'entity.company.fields.f_nickname' => '略称',
			'entity.company.fields.f_ceo' => '代表者名',
			'entity.company.fields.f_web_page' => 'ホームページ',
			'entity.company.fields.f_country_code_2' => '国',
			'entity.company.fields.f_zip_code' => '郵便番号',
			'entity.company.fields.f_address1' => '住所1',
			'entity.company.fields.f_address2' => '住所2',
			'entity.company.fields.f_building' => '建物',
			'entity.company.fields.f_phone' => '電話番号',
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
			'entity.site.fields.f_country_code_2' => '国',
			'entity.site.fields.f_zip_code' => '郵便番号',
			'entity.site.fields.f_address1' => '住所1',
			'entity.site.fields.f_address2' => '住所2',
			'entity.site.fields.f_building' => '建物',
			'entity.site.fields.f_phone' => '電話番号',
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
			'entity.department.reverse.assignment' => '割当',
			'entity.department.reverse.taskres' => '工程場所',
			'entity.department.reverse.preventiondetail' => '未然防止処置',
			'entity.department.reverse.audit' => '監査',
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
			'entity.stafficon.title' => '担当者のアイコン',
			'entity.stafficon.fields.f_name' => '名称',
			'entity.stafficon.fields.f_file' => 'アイコン',
			'entity.stafficon.fields.f_remarks' => '備考',
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
			'entity.approvalpattern.fields.f_steps' => '承認の段',
			'entity.accesspathapproval.title' => 'アクセスパスの承認',
			'entity.accesspathapproval.fields.f_name' => '名称',
			'entity.accesspathapproval.fields.f_access_path' => 'アクセスパス',
			'entity.accesspathapproval.fields.f_remarks' => '備考',
			'entity.approvalscope.title' => '承認の範囲',
			'entity.approvalscope.fields.f_access_path_approval' => 'アクセスパスの承認',
			'entity.approvalscope.fields.f_remarks' => '備考',
			_ => null,
		};
	}
}
