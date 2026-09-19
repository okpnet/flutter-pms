// supplier_contact_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/supplier_contact/supplier_contact_read.graphql /
// supplier_contact_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0025_view_graphql_evaluation_log.md / docs/0026_schema_fetch_log.md: 実スキーマの
//   型名は"MstrStakeholderContact"(supplier_contact/customer_contactは同一物理テーブルを共有)。
//   事業所名/部署名/担当者氏名はそれぞれ独立したshared_appellations参照。
//
// 対象画面: source/views.md #supplier_contact (read / edit)
import 'content_variable.dart';

abstract class SupplierContactKeyName {
  /// 窓口ID
  static const ContentVariable mstrStakeholderContactId = ContentVariable(
    'mstrStakeholderContactId',
    GraphQLTypeKind.uuid,
  );

  /// 利害関係者ID
  static const ContentVariable mstrStakeholderId = ContentVariable(
    'mstrStakeholderId',
    GraphQLTypeKind.uuid,
  );

  /// サプライヤー担当者コード(論理名: 利害関係者窓口コード)
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// Eメールアドレス(要件0026でprivate_phone→mailへ物理名変更)
  static const ContentVariable mail = ContentVariable(
    'mail',
    GraphQLTypeKind.string,
  );

  /// 配送区分ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrShippingKindId = ContentVariable(
    'mstrShippingKindId',
    GraphQLTypeKind.uuid,
  );

  /// 備考(mstr_stakeholder_contact)
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

  // --- 事業所名 / 読み / 略称(共通名前仕様) ---------------------------------
  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- 部署名 / 読み / 略称(共通名前仕様) -----------------------------------
  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- 担当者氏名 / 読み / 略称(共通名前仕様) -------------------------------
  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 配送区分名(配送区分マスタ参照) -------------------------------
  static const ContentVariable
  mstrShippingKindByMstrShippingKindId_mstrShippingKindId = ContentVariable(
    'mstrShippingKindByMstrShippingKindId||mstrShippingKindId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
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
