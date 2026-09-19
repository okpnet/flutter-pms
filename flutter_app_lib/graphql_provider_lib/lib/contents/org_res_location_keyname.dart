// org_res_location_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/org_res_location/org_res_location_read.graphql /
// org_res_location_edit.graphql の結果を nested_map_flattener.dart で平坦化した
// ときのキー文字列の定数クラス。
// ⚠ docs/0021_view_graphql_log.md #7: 実スキーマの型名は"MstrLocation"。
//
// 対象画面: source/views.md #org_res_location (read / edit)
import 'content_variable.dart';

abstract class OrgResLocationKeyName {
  /// 場所ID
  static const ContentVariable mstrLocationId = ContentVariable(
    'mstrLocationId',
    GraphQLTypeKind.uuid,
  );

  /// 場所コード
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// 管理コード
  static const ContentVariable controlCode = ContentVariable(
    'controlCode',
    GraphQLTypeKind.string,
  );

  /// 備考(mstr_location)
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

  // --- read専用: 組織名(参照のみ、⚠ #8) -------------------------------------
  static const ContentVariable
  infoDepartmentByInfoDepartmentId_infoDepartmentId = ContentVariable(
    'infoDepartmentByInfoDepartmentId||infoDepartmentId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  infoDepartmentByInfoDepartmentId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'infoDepartmentByInfoDepartmentId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoDepartmentByInfoDepartmentId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'infoDepartmentByInfoDepartmentId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  // --- 場所名 / 読み / 略称(共通名前仕様) -----------------------------------
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
}
