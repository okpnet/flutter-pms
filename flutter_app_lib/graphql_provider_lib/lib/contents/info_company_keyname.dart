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

import 'content_variable.dart';

/// info_company画面の平坦化キー定数。
///
/// read(`info_company_read.graphql`)・edit(`info_company_edit.graphql`)の
/// 両方の結果モデルに共通するキーをまとめている。edit専用のキー(建物/電話番号/FAX番号)は
/// 末尾に分けて定義した。
abstract class InfoCompanyKeyName {
  // --- info_company本体 --------------------------------------------------
  /// 会社ID
  static const ContentVariable infoCompanyId = ContentVariable(
    'infoCompanyId',
    GraphQLTypeKind.uuid,
  );

  /// ホームページ
  static const ContentVariable webPage = ContentVariable(
    'webPage',
    GraphQLTypeKind.string,
  );

  /// 代表
  static const ContentVariable ceo = ContentVariable(
    'ceo',
    GraphQLTypeKind.string,
  );

  /// 備考(info_company)
  static const ContentVariable remarks = ContentVariable(
    'remarks',
    GraphQLTypeKind.string,
  );

  /// 共通項: 更新日時
  static const ContentVariable updateAt = ContentVariable(
    'updateAt',
    GraphQLTypeKind.datetime,
  );

  /// 共通項: 削除
  static const ContentVariable remove = ContentVariable(
    'remove',
    GraphQLTypeKind.boolean,
  );

  // --- 会社名 / 読み(共通名前仕様) -----------------------------------------
  /// 呼称セットID
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  /// 会社名(辞書ID)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  /// 会社名(ja)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  /// 会社名(en)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  /// 読み(辞書ID)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  /// 読み(ja)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  /// 読み(en)
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  // --- 郵便番号 / 住所1~2 --------------------------------------------------
  // ⚠ docs/0019_view_graphql_log.md #1: address3相当の列が存在しないため定数化していない。
  /// 住所ID
  static const ContentVariable infoAddressByInfoAddressId_infoAddressId =
      ContentVariable(
        'infoAddressByInfoAddressId||infoAddressId',
        GraphQLTypeKind.uuid,
      );

  /// 郵便番号
  static const ContentVariable infoAddressByInfoAddressId_zipCode =
      ContentVariable(
        'infoAddressByInfoAddressId||zipCode',
        GraphQLTypeKind.string,
      );

  /// 住所1
  static const ContentVariable infoAddressByInfoAddressId_address1 =
      ContentVariable(
        'infoAddressByInfoAddressId||address1',
        GraphQLTypeKind.string,
      );

  /// 住所2
  static const ContentVariable infoAddressByInfoAddressId_address2 =
      ContentVariable(
        'infoAddressByInfoAddressId||address2',
        GraphQLTypeKind.string,
      );

  // --- read専用: 所属するスタッフ数 / 事業所のリスト -------------------------
  /// 所属するスタッフ数(Connectionのtotal件数)
  static const ContentVariable infoStaffsByInfoCompanyId_totalCount =
      ContentVariable(
        'infoStaffsByInfoCompanyId||totalCount',
        GraphQLTypeKind.int,
      );

  /// 事業所のリスト(Relay Connection形状のため、これ以上は平坦化しない)
  static const ContentVariable infoOfficesByInfoCompanyId = ContentVariable(
    'infoOfficesByInfoCompanyId',
    GraphQLTypeKind.connection,
  );

  // --- 共通項: 更新者名(共通名前仕様)の呼称セットID ---------------------------
  // ⚠ docs/0019_view_graphql_log.md #2: この先(shared_appellations以降)は
  //    InfoCompanyReadUpdaterAppellationクエリの結果側で解決するため、ここでは
  //    呼称セットIDまでを定数化している。
  /// 更新履歴ID
  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId',
        GraphQLTypeKind.uuid,
      );

  /// 更新者(スタッフID)
  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId',
        GraphQLTypeKind.uuid,
      );

  /// 更新者の呼称セットID
  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  // --- edit専用: 建物 / 電話番号 / FAX番号 ----------------------------------
  /// 建物
  static const ContentVariable infoAddressByInfoAddressId_bill =
      ContentVariable(
        'infoAddressByInfoAddressId||bill',
        GraphQLTypeKind.string,
      );

  /// 電話番号
  static const ContentVariable infoAddressByInfoAddressId_phone =
      ContentVariable(
        'infoAddressByInfoAddressId||phone',
        GraphQLTypeKind.string,
      );

  /// FAX番号
  static const ContentVariable infoAddressByInfoAddressId_faxNumber =
      ContentVariable(
        'infoAddressByInfoAddressId||faxNumber',
        GraphQLTypeKind.string,
      );
}
