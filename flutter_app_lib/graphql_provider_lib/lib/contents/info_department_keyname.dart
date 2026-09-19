// info_department_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/info_department/info_department_read.graphql / info_department_edit.graphql の
// 結果を nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/views.md #info_department (read / edit)
import 'content_variable.dart';

abstract class InfoDepartmentKeyName {
  /// 組織情報ID
  static const ContentVariable infoDepartmentId = ContentVariable(
    'infoDepartmentId',
    GraphQLTypeKind.uuid,
  );

  /// 会社ID
  static const ContentVariable infoCompanyId = ContentVariable(
    'infoCompanyId',
    GraphQLTypeKind.uuid,
  );

  /// 組織コード
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// 備考(info_department)
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

  // --- 組織名 / 読み / 略称(共通名前仕様) -----------------------------------
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- 郵便番号 / 住所1~2 / 建物 / 電話番号 / FAX番号 -------------------------
  // ⚠ docs/0021_view_graphql_log.md #1: address3相当の列が存在しないため定数化していない。
  static const ContentVariable infoAddressByInfoAddressId_infoAddressId =
      ContentVariable(
        'infoAddressByInfoAddressId||infoAddressId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable infoAddressByInfoAddressId_zipCode =
      ContentVariable(
        'infoAddressByInfoAddressId||zipCode',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_address1 =
      ContentVariable(
        'infoAddressByInfoAddressId||address1',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_address2 =
      ContentVariable(
        'infoAddressByInfoAddressId||address2',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_bill =
      ContentVariable(
        'infoAddressByInfoAddressId||bill',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_phone =
      ContentVariable(
        'infoAddressByInfoAddressId||phone',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_faxNumber =
      ContentVariable(
        'infoAddressByInfoAddressId||faxNumber',
        GraphQLTypeKind.string,
      );

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  // ⚠ docs/0021_view_graphql_log.md #4: 「子の数（info_department_tree）」は
  //   派生集計値のため、このread/editクエリでは取得しておらず、定数も未定義。
}
