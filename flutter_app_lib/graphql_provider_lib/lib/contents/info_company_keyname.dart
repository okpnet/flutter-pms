// info_company_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// 要件0018(GraphQL変換ルール) read/edit 共通:
// 「平坦化したときのキーはコード補完できるようにする」に対応する定数クラス。
// - lib/graphql/info_company/info_company_read.graphql / info_company_edit.graphql の
//   結果(モデルのtoJson())を nested_map_flattener.dart の flatten()/flattenForColumns()
//   で平坦化したときのキー文字列を、コード補完可能な定数として提供する。
// - 定数の「値」は実際のフラットキー(kFlatKeySeparator = `||` 区切り)そのもの。
// - 定数の「名前」(Dart識別子)は`||`が使えないため、要件0018に従い`_`に置き換えた
//   キャメルケースの連結にしている。
//
// 対象画面: source/views.md #info_company (read / edit)

/// info_company画面の平坦化キー定数。
///
/// read(`info_company_read.graphql`)・edit(`info_company_edit.graphql`)の
/// 両方の結果モデルに共通するキーをまとめている。edit専用のキー(建物/電話番号/FAX番号)は
/// 末尾に分けて定義した。
abstract class InfoCompanyKeyName {
  // --- info_company本体 --------------------------------------------------
  /// 会社ID
  static const String infoCompanyId = 'infoCompanyId';

  /// ホームページ
  static const String webPage = 'webPage';

  /// 代表
  static const String ceo = 'ceo';

  /// 備考(info_company)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 会社名 / 読み(共通名前仕様) -----------------------------------------
  /// 呼称セットID
  static const String sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      'sharedAppellationBySharedAppellationsId||sharedAppellationsId';

  /// 会社名(辞書ID)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  /// 会社名(ja)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  /// 会社名(en)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  /// 読み(辞書ID)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  /// 読み(ja)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  /// 読み(en)
  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  // --- 郵便番号 / 住所1~2 --------------------------------------------------
  // ⚠ docs/0019_view_graphql_log.md #1: address3相当の列が存在しないため定数化していない。
  /// 住所ID
  static const String infoAddressByInfoAddressId_infoAddressId =
      'infoAddressByInfoAddressId||infoAddressId';

  /// 郵便番号
  static const String infoAddressByInfoAddressId_zipCode =
      'infoAddressByInfoAddressId||zipCode';

  /// 住所1
  static const String infoAddressByInfoAddressId_address1 =
      'infoAddressByInfoAddressId||address1';

  /// 住所2
  static const String infoAddressByInfoAddressId_address2 =
      'infoAddressByInfoAddressId||address2';

  // --- read専用: 所属するスタッフ数 / 事業所のリスト -------------------------
  /// 所属するスタッフ数(Connectionのtotal件数)
  static const String infoStaffsByInfoCompanyId_totalCount =
      'infoStaffsByInfoCompanyId||totalCount';

  /// 事業所のリスト(Relay Connection形状のため、これ以上は平坦化しない)
  static const String infoOfficesByInfoCompanyId = 'infoOfficesByInfoCompanyId';

  // --- 共通項: 更新者名(共通名前仕様)の呼称セットID ---------------------------
  // ⚠ docs/0019_view_graphql_log.md #2: この先(shared_appellations以降)は
  //    InfoCompanyReadUpdaterAppellationクエリの結果側で解決するため、ここでは
  //    呼称セットIDまでを定数化している。
  /// 更新履歴ID
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  /// 更新者(スタッフID)
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  /// 更新者の呼称セットID
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';

  // --- edit専用: 建物 / 電話番号 / FAX番号 ----------------------------------
  /// 建物
  static const String infoAddressByInfoAddressId_bill =
      'infoAddressByInfoAddressId||bill';

  /// 電話番号
  static const String infoAddressByInfoAddressId_phone =
      'infoAddressByInfoAddressId||phone';

  /// FAX番号
  static const String infoAddressByInfoAddressId_faxNumber =
      'infoAddressByInfoAddressId||faxNumber';
}
