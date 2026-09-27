// office_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/office_page/office_page_read.graphql / office_page_edit.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #OfficePage / #OfficePageEdit
import 'content_variable.dart';

abstract class OfficePageKeyName {
  static const ContentVariable infoOfficeId = ContentVariable(
    'infoOfficeId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoCompanyId = ContentVariable(
    'infoCompanyId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable symbol = ContentVariable(
    'symbol',
    GraphQLTypeKind.string,
  );

  static const ContentVariable remarks = ContentVariable(
    'remarks',
    GraphQLTypeKind.string,
  );

  static const ContentVariable updateAt = ContentVariable(
    'updateAt',
    GraphQLTypeKind.datetime,
  );

  static const ContentVariable remove = ContentVariable(
    'remove',
    GraphQLTypeKind.boolean,
  );

  // --- 事業所名(共通名前仕様、shared_appellations経由) -----------------------
  static const ContentVariable labels_sharedAppellationsId = ContentVariable(
    'labels||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 住所: 共通項 -----------------------------------------------------------
  static const ContentVariable address_infoAddressId = ContentVariable(
    'address||infoAddressId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable address_iso31663 = ContentVariable(
    'address||iso31663',
    GraphQLTypeKind.string,
  );

  static const ContentVariable address_zipCode = ContentVariable(
    'address||zipCode',
    GraphQLTypeKind.string,
  );

  static const ContentVariable address_phone = ContentVariable(
    'address||phone',
    GraphQLTypeKind.string,
  );

  static const ContentVariable address_faxNumber = ContentVariable(
    'address||faxNumber',
    GraphQLTypeKind.string,
  );

  // --- 住所1(address1、shared_appellations経由) ------------------------------
  static const ContentVariable address_address1_sharedAppellationsId =
      ContentVariable(
        'address||address1||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'address||address1||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 住所2(address2、shared_appellations経由) ------------------------------
  static const ContentVariable address_address2_sharedAppellationsId =
      ContentVariable(
        'address||address2||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  address_address2_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'address||address2||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 建物名(bill、出力名はbillName) -----------------------------------------
  static const ContentVariable address_billName_sharedAppellationsId =
      ContentVariable(
        'address||billName||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  address_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'address||billName||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  update_user_name_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );
}
