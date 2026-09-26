// company_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021・0033により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/company_page/company_page_read.graphql /
// company_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #CompanyPage / #CompanyPageEdit / #CompanyPageRFE
// (要件0033で試作、要件0035で本実装・命名規則どおり`company_page`へリネーム)。
//
// 要件0026(2026-09-25)のスキーマ変更により、`ceo`・`address1`/`address2`/`bill`は
// 単純な文字列列から`shared_appellations`経由(呼称セット、name/pronunciation/nickname)
// のFKへ変更された。会社名(`sharedAppellationBySharedAppellationsId`)と同型の
// キー構成を4系統(ceo・address1・address2・bill)追加している。
import 'content_variable.dart';

// 要件0036(2026-09-26): company_page_read.graphql / company_page_rfe.graphqlの
// 「$ja: Boolean!/$en: Boolean!」による毎回ja/en両方取得する形をやめ、readは
// 1回の呼び出しで言語1つのみ(エイリアス`value`)を取得する形に変更した。このため
// 辞書値のキーは、read用の`_value_dictionaryValue`(新規)と、
// edit/RFEの戻り値用(ja/en常時取得を維持)の`_ja_dictionaryValue`/`_en_dictionaryValue`
// (既存)の両方を持つ。

abstract class CompanyPageKeyName {
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

  /// リニアシンボル
  static const ContentVariable symbol = ContentVariable(
    'symbol',
    GraphQLTypeKind.string,
  );

  /// 共通項: 備考
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

  // --- 会社名(共通名前仕様、shared_appellations経由) -------------------------
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
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 代表(ceo、要件0026でshared_appellations経由のFKに変更) ------------------
  static const ContentVariable ceo_sharedAppellationsId = ContentVariable(
    'ceo||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryPronunciationId_ja_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryPronunciationId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryPronunciationId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNicknameId_ja_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNicknameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNicknameId_en_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNicknameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  ceo_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'ceo||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 住所: 共通項 -----------------------------------------------------------
  static const ContentVariable infoAddressByInfoAddressId_infoAddressId =
      ContentVariable(
        'infoAddressByInfoAddressId||infoAddressId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable infoAddressByInfoAddressId_iso31663 =
      ContentVariable(
        'infoAddressByInfoAddressId||iso31663',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_zipCode =
      ContentVariable(
        'infoAddressByInfoAddressId||zipCode',
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

  static const ContentVariable infoAddressByInfoAddressId_remarks =
      ContentVariable(
        'infoAddressByInfoAddressId||remarks',
        GraphQLTypeKind.string,
      );

  static const ContentVariable infoAddressByInfoAddressId_updateAt =
      ContentVariable(
        'infoAddressByInfoAddressId||updateAt',
        GraphQLTypeKind.datetime,
      );

  static const ContentVariable infoAddressByInfoAddressId_remove =
      ContentVariable(
        'infoAddressByInfoAddressId||remove',
        GraphQLTypeKind.boolean,
      );

  // --- 住所1(address1、要件0026でshared_appellations経由のFKに変更) -------------
  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedAppellationsId = ContentVariable(
    'infoAddressByInfoAddressId||address1||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryPronunciationId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryPronunciationId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryPronunciationId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNicknameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNicknameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNicknameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNicknameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 住所2(address2、要件0026でshared_appellations経由のFKに変更) -------------
  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedAppellationsId = ContentVariable(
    'infoAddressByInfoAddressId||address2||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryPronunciationId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryPronunciationId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryPronunciationId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNicknameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNicknameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNicknameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNicknameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_address2_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||address2||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 建物名(bill、出力名はview.yamlの`as: bill_name`によりbillName) -----------
  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedAppellationsId = ContentVariable(
    'infoAddressByInfoAddressId||billName||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryPronunciationId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryPronunciationId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryPronunciationId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNicknameId_ja_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNicknameId||ja||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNicknameId_en_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNicknameId||en||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- read専用: 共通項: 更新者(共通名前仕様の呼称セットID解決に必要なidのみ) ------
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
