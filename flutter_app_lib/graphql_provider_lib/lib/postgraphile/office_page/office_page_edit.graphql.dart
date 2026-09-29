import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OfficePageEdit {
  factory Variables$Mutation$OfficePageEdit({
    required String infoOfficeId,
    String? remarks,
    required String sharedAppellationsId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
    required String nameSharedDictionaryId,
    required String nameJa,
    required String nameEn,
    required String pronunciationSharedDictionaryId,
    required String pronunciationJa,
    required String pronunciationEn,
    required String nicknameSharedDictionaryId,
    required String nicknameJa,
    required String nicknameEn,
    required String infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    required String address1SharedAppellationsId,
    required String address1NameSharedDictionaryId,
    required String address1NameJa,
    required String address1NameEn,
    required String address1PronunciationSharedDictionaryId,
    required String address1PronunciationJa,
    required String address1PronunciationEn,
    required String address1NicknameSharedDictionaryId,
    required String address1NicknameJa,
    required String address1NicknameEn,
    required String address2SharedAppellationsId,
    required String address2NameSharedDictionaryId,
    required String address2NameJa,
    required String address2NameEn,
    required String address2PronunciationSharedDictionaryId,
    required String address2PronunciationJa,
    required String address2PronunciationEn,
    required String address2NicknameSharedDictionaryId,
    required String address2NicknameJa,
    required String address2NicknameEn,
    required String billSharedAppellationsId,
    required String billNameSharedDictionaryId,
    required String billNameJa,
    required String billNameEn,
    required String billPronunciationSharedDictionaryId,
    required String billPronunciationJa,
    required String billPronunciationEn,
    required String billNicknameSharedDictionaryId,
    required String billNicknameJa,
    required String billNicknameEn,
  }) => Variables$Mutation$OfficePageEdit._({
    r'infoOfficeId': infoOfficeId,
    if (remarks != null) r'remarks': remarks,
    r'sharedAppellationsId': sharedAppellationsId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    r'nameJa': nameJa,
    r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    r'pronunciationJa': pronunciationJa,
    r'pronunciationEn': pronunciationEn,
    r'nicknameSharedDictionaryId': nicknameSharedDictionaryId,
    r'nicknameJa': nicknameJa,
    r'nicknameEn': nicknameEn,
    r'infoAddressId': infoAddressId,
    if (iso31663 != null) r'iso31663': iso31663,
    if (zipCode != null) r'zipCode': zipCode,
    if (phone != null) r'phone': phone,
    if (faxNumber != null) r'faxNumber': faxNumber,
    r'address1SharedAppellationsId': address1SharedAppellationsId,
    r'address1NameSharedDictionaryId': address1NameSharedDictionaryId,
    r'address1NameJa': address1NameJa,
    r'address1NameEn': address1NameEn,
    r'address1PronunciationSharedDictionaryId':
        address1PronunciationSharedDictionaryId,
    r'address1PronunciationJa': address1PronunciationJa,
    r'address1PronunciationEn': address1PronunciationEn,
    r'address1NicknameSharedDictionaryId': address1NicknameSharedDictionaryId,
    r'address1NicknameJa': address1NicknameJa,
    r'address1NicknameEn': address1NicknameEn,
    r'address2SharedAppellationsId': address2SharedAppellationsId,
    r'address2NameSharedDictionaryId': address2NameSharedDictionaryId,
    r'address2NameJa': address2NameJa,
    r'address2NameEn': address2NameEn,
    r'address2PronunciationSharedDictionaryId':
        address2PronunciationSharedDictionaryId,
    r'address2PronunciationJa': address2PronunciationJa,
    r'address2PronunciationEn': address2PronunciationEn,
    r'address2NicknameSharedDictionaryId': address2NicknameSharedDictionaryId,
    r'address2NicknameJa': address2NicknameJa,
    r'address2NicknameEn': address2NicknameEn,
    r'billSharedAppellationsId': billSharedAppellationsId,
    r'billNameSharedDictionaryId': billNameSharedDictionaryId,
    r'billNameJa': billNameJa,
    r'billNameEn': billNameEn,
    r'billPronunciationSharedDictionaryId': billPronunciationSharedDictionaryId,
    r'billPronunciationJa': billPronunciationJa,
    r'billPronunciationEn': billPronunciationEn,
    r'billNicknameSharedDictionaryId': billNicknameSharedDictionaryId,
    r'billNicknameJa': billNicknameJa,
    r'billNicknameEn': billNicknameEn,
  });

  Variables$Mutation$OfficePageEdit._(this._$data);

  factory Variables$Mutation$OfficePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoOfficeId = data['infoOfficeId'];
    result$data['infoOfficeId'] = (l$infoOfficeId as String);
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    final l$nameSharedDictionaryId = data['nameSharedDictionaryId'];
    result$data['nameSharedDictionaryId'] =
        (l$nameSharedDictionaryId as String);
    final l$nameJa = data['nameJa'];
    result$data['nameJa'] = (l$nameJa as String);
    final l$nameEn = data['nameEn'];
    result$data['nameEn'] = (l$nameEn as String);
    final l$pronunciationSharedDictionaryId =
        data['pronunciationSharedDictionaryId'];
    result$data['pronunciationSharedDictionaryId'] =
        (l$pronunciationSharedDictionaryId as String);
    final l$pronunciationJa = data['pronunciationJa'];
    result$data['pronunciationJa'] = (l$pronunciationJa as String);
    final l$pronunciationEn = data['pronunciationEn'];
    result$data['pronunciationEn'] = (l$pronunciationEn as String);
    final l$nicknameSharedDictionaryId = data['nicknameSharedDictionaryId'];
    result$data['nicknameSharedDictionaryId'] =
        (l$nicknameSharedDictionaryId as String);
    final l$nicknameJa = data['nicknameJa'];
    result$data['nicknameJa'] = (l$nicknameJa as String);
    final l$nicknameEn = data['nicknameEn'];
    result$data['nicknameEn'] = (l$nicknameEn as String);
    final l$infoAddressId = data['infoAddressId'];
    result$data['infoAddressId'] = (l$infoAddressId as String);
    if (data.containsKey('iso31663')) {
      final l$iso31663 = data['iso31663'];
      result$data['iso31663'] = (l$iso31663 as String?);
    }
    if (data.containsKey('zipCode')) {
      final l$zipCode = data['zipCode'];
      result$data['zipCode'] = (l$zipCode as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('faxNumber')) {
      final l$faxNumber = data['faxNumber'];
      result$data['faxNumber'] = (l$faxNumber as String?);
    }
    final l$address1SharedAppellationsId = data['address1SharedAppellationsId'];
    result$data['address1SharedAppellationsId'] =
        (l$address1SharedAppellationsId as String);
    final l$address1NameSharedDictionaryId =
        data['address1NameSharedDictionaryId'];
    result$data['address1NameSharedDictionaryId'] =
        (l$address1NameSharedDictionaryId as String);
    final l$address1NameJa = data['address1NameJa'];
    result$data['address1NameJa'] = (l$address1NameJa as String);
    final l$address1NameEn = data['address1NameEn'];
    result$data['address1NameEn'] = (l$address1NameEn as String);
    final l$address1PronunciationSharedDictionaryId =
        data['address1PronunciationSharedDictionaryId'];
    result$data['address1PronunciationSharedDictionaryId'] =
        (l$address1PronunciationSharedDictionaryId as String);
    final l$address1PronunciationJa = data['address1PronunciationJa'];
    result$data['address1PronunciationJa'] =
        (l$address1PronunciationJa as String);
    final l$address1PronunciationEn = data['address1PronunciationEn'];
    result$data['address1PronunciationEn'] =
        (l$address1PronunciationEn as String);
    final l$address1NicknameSharedDictionaryId =
        data['address1NicknameSharedDictionaryId'];
    result$data['address1NicknameSharedDictionaryId'] =
        (l$address1NicknameSharedDictionaryId as String);
    final l$address1NicknameJa = data['address1NicknameJa'];
    result$data['address1NicknameJa'] = (l$address1NicknameJa as String);
    final l$address1NicknameEn = data['address1NicknameEn'];
    result$data['address1NicknameEn'] = (l$address1NicknameEn as String);
    final l$address2SharedAppellationsId = data['address2SharedAppellationsId'];
    result$data['address2SharedAppellationsId'] =
        (l$address2SharedAppellationsId as String);
    final l$address2NameSharedDictionaryId =
        data['address2NameSharedDictionaryId'];
    result$data['address2NameSharedDictionaryId'] =
        (l$address2NameSharedDictionaryId as String);
    final l$address2NameJa = data['address2NameJa'];
    result$data['address2NameJa'] = (l$address2NameJa as String);
    final l$address2NameEn = data['address2NameEn'];
    result$data['address2NameEn'] = (l$address2NameEn as String);
    final l$address2PronunciationSharedDictionaryId =
        data['address2PronunciationSharedDictionaryId'];
    result$data['address2PronunciationSharedDictionaryId'] =
        (l$address2PronunciationSharedDictionaryId as String);
    final l$address2PronunciationJa = data['address2PronunciationJa'];
    result$data['address2PronunciationJa'] =
        (l$address2PronunciationJa as String);
    final l$address2PronunciationEn = data['address2PronunciationEn'];
    result$data['address2PronunciationEn'] =
        (l$address2PronunciationEn as String);
    final l$address2NicknameSharedDictionaryId =
        data['address2NicknameSharedDictionaryId'];
    result$data['address2NicknameSharedDictionaryId'] =
        (l$address2NicknameSharedDictionaryId as String);
    final l$address2NicknameJa = data['address2NicknameJa'];
    result$data['address2NicknameJa'] = (l$address2NicknameJa as String);
    final l$address2NicknameEn = data['address2NicknameEn'];
    result$data['address2NicknameEn'] = (l$address2NicknameEn as String);
    final l$billSharedAppellationsId = data['billSharedAppellationsId'];
    result$data['billSharedAppellationsId'] =
        (l$billSharedAppellationsId as String);
    final l$billNameSharedDictionaryId = data['billNameSharedDictionaryId'];
    result$data['billNameSharedDictionaryId'] =
        (l$billNameSharedDictionaryId as String);
    final l$billNameJa = data['billNameJa'];
    result$data['billNameJa'] = (l$billNameJa as String);
    final l$billNameEn = data['billNameEn'];
    result$data['billNameEn'] = (l$billNameEn as String);
    final l$billPronunciationSharedDictionaryId =
        data['billPronunciationSharedDictionaryId'];
    result$data['billPronunciationSharedDictionaryId'] =
        (l$billPronunciationSharedDictionaryId as String);
    final l$billPronunciationJa = data['billPronunciationJa'];
    result$data['billPronunciationJa'] = (l$billPronunciationJa as String);
    final l$billPronunciationEn = data['billPronunciationEn'];
    result$data['billPronunciationEn'] = (l$billPronunciationEn as String);
    final l$billNicknameSharedDictionaryId =
        data['billNicknameSharedDictionaryId'];
    result$data['billNicknameSharedDictionaryId'] =
        (l$billNicknameSharedDictionaryId as String);
    final l$billNicknameJa = data['billNicknameJa'];
    result$data['billNicknameJa'] = (l$billNicknameJa as String);
    final l$billNicknameEn = data['billNicknameEn'];
    result$data['billNicknameEn'] = (l$billNicknameEn as String);
    return Variables$Mutation$OfficePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoOfficeId => (_$data['infoOfficeId'] as String);

  String? get remarks => (_$data['remarks'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  String get nameSharedDictionaryId =>
      (_$data['nameSharedDictionaryId'] as String);

  String get nameJa => (_$data['nameJa'] as String);

  String get nameEn => (_$data['nameEn'] as String);

  String get pronunciationSharedDictionaryId =>
      (_$data['pronunciationSharedDictionaryId'] as String);

  String get pronunciationJa => (_$data['pronunciationJa'] as String);

  String get pronunciationEn => (_$data['pronunciationEn'] as String);

  String get nicknameSharedDictionaryId =>
      (_$data['nicknameSharedDictionaryId'] as String);

  String get nicknameJa => (_$data['nicknameJa'] as String);

  String get nicknameEn => (_$data['nicknameEn'] as String);

  String get infoAddressId => (_$data['infoAddressId'] as String);

  String? get iso31663 => (_$data['iso31663'] as String?);

  String? get zipCode => (_$data['zipCode'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get faxNumber => (_$data['faxNumber'] as String?);

  String get address1SharedAppellationsId =>
      (_$data['address1SharedAppellationsId'] as String);

  String get address1NameSharedDictionaryId =>
      (_$data['address1NameSharedDictionaryId'] as String);

  String get address1NameJa => (_$data['address1NameJa'] as String);

  String get address1NameEn => (_$data['address1NameEn'] as String);

  String get address1PronunciationSharedDictionaryId =>
      (_$data['address1PronunciationSharedDictionaryId'] as String);

  String get address1PronunciationJa =>
      (_$data['address1PronunciationJa'] as String);

  String get address1PronunciationEn =>
      (_$data['address1PronunciationEn'] as String);

  String get address1NicknameSharedDictionaryId =>
      (_$data['address1NicknameSharedDictionaryId'] as String);

  String get address1NicknameJa => (_$data['address1NicknameJa'] as String);

  String get address1NicknameEn => (_$data['address1NicknameEn'] as String);

  String get address2SharedAppellationsId =>
      (_$data['address2SharedAppellationsId'] as String);

  String get address2NameSharedDictionaryId =>
      (_$data['address2NameSharedDictionaryId'] as String);

  String get address2NameJa => (_$data['address2NameJa'] as String);

  String get address2NameEn => (_$data['address2NameEn'] as String);

  String get address2PronunciationSharedDictionaryId =>
      (_$data['address2PronunciationSharedDictionaryId'] as String);

  String get address2PronunciationJa =>
      (_$data['address2PronunciationJa'] as String);

  String get address2PronunciationEn =>
      (_$data['address2PronunciationEn'] as String);

  String get address2NicknameSharedDictionaryId =>
      (_$data['address2NicknameSharedDictionaryId'] as String);

  String get address2NicknameJa => (_$data['address2NicknameJa'] as String);

  String get address2NicknameEn => (_$data['address2NicknameEn'] as String);

  String get billSharedAppellationsId =>
      (_$data['billSharedAppellationsId'] as String);

  String get billNameSharedDictionaryId =>
      (_$data['billNameSharedDictionaryId'] as String);

  String get billNameJa => (_$data['billNameJa'] as String);

  String get billNameEn => (_$data['billNameEn'] as String);

  String get billPronunciationSharedDictionaryId =>
      (_$data['billPronunciationSharedDictionaryId'] as String);

  String get billPronunciationJa => (_$data['billPronunciationJa'] as String);

  String get billPronunciationEn => (_$data['billPronunciationEn'] as String);

  String get billNicknameSharedDictionaryId =>
      (_$data['billNicknameSharedDictionaryId'] as String);

  String get billNicknameJa => (_$data['billNicknameJa'] as String);

  String get billNicknameEn => (_$data['billNicknameEn'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    result$data['infoOfficeId'] = l$infoOfficeId;
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    result$data['nameSharedDictionaryId'] = l$nameSharedDictionaryId;
    final l$nameJa = nameJa;
    result$data['nameJa'] = l$nameJa;
    final l$nameEn = nameEn;
    result$data['nameEn'] = l$nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    result$data['pronunciationSharedDictionaryId'] =
        l$pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    result$data['pronunciationJa'] = l$pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    result$data['pronunciationEn'] = l$pronunciationEn;
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    result$data['nicknameSharedDictionaryId'] = l$nicknameSharedDictionaryId;
    final l$nicknameJa = nicknameJa;
    result$data['nicknameJa'] = l$nicknameJa;
    final l$nicknameEn = nicknameEn;
    result$data['nicknameEn'] = l$nicknameEn;
    final l$infoAddressId = infoAddressId;
    result$data['infoAddressId'] = l$infoAddressId;
    if (_$data.containsKey('iso31663')) {
      final l$iso31663 = iso31663;
      result$data['iso31663'] = l$iso31663;
    }
    if (_$data.containsKey('zipCode')) {
      final l$zipCode = zipCode;
      result$data['zipCode'] = l$zipCode;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('faxNumber')) {
      final l$faxNumber = faxNumber;
      result$data['faxNumber'] = l$faxNumber;
    }
    final l$address1SharedAppellationsId = address1SharedAppellationsId;
    result$data['address1SharedAppellationsId'] =
        l$address1SharedAppellationsId;
    final l$address1NameSharedDictionaryId = address1NameSharedDictionaryId;
    result$data['address1NameSharedDictionaryId'] =
        l$address1NameSharedDictionaryId;
    final l$address1NameJa = address1NameJa;
    result$data['address1NameJa'] = l$address1NameJa;
    final l$address1NameEn = address1NameEn;
    result$data['address1NameEn'] = l$address1NameEn;
    final l$address1PronunciationSharedDictionaryId =
        address1PronunciationSharedDictionaryId;
    result$data['address1PronunciationSharedDictionaryId'] =
        l$address1PronunciationSharedDictionaryId;
    final l$address1PronunciationJa = address1PronunciationJa;
    result$data['address1PronunciationJa'] = l$address1PronunciationJa;
    final l$address1PronunciationEn = address1PronunciationEn;
    result$data['address1PronunciationEn'] = l$address1PronunciationEn;
    final l$address1NicknameSharedDictionaryId =
        address1NicknameSharedDictionaryId;
    result$data['address1NicknameSharedDictionaryId'] =
        l$address1NicknameSharedDictionaryId;
    final l$address1NicknameJa = address1NicknameJa;
    result$data['address1NicknameJa'] = l$address1NicknameJa;
    final l$address1NicknameEn = address1NicknameEn;
    result$data['address1NicknameEn'] = l$address1NicknameEn;
    final l$address2SharedAppellationsId = address2SharedAppellationsId;
    result$data['address2SharedAppellationsId'] =
        l$address2SharedAppellationsId;
    final l$address2NameSharedDictionaryId = address2NameSharedDictionaryId;
    result$data['address2NameSharedDictionaryId'] =
        l$address2NameSharedDictionaryId;
    final l$address2NameJa = address2NameJa;
    result$data['address2NameJa'] = l$address2NameJa;
    final l$address2NameEn = address2NameEn;
    result$data['address2NameEn'] = l$address2NameEn;
    final l$address2PronunciationSharedDictionaryId =
        address2PronunciationSharedDictionaryId;
    result$data['address2PronunciationSharedDictionaryId'] =
        l$address2PronunciationSharedDictionaryId;
    final l$address2PronunciationJa = address2PronunciationJa;
    result$data['address2PronunciationJa'] = l$address2PronunciationJa;
    final l$address2PronunciationEn = address2PronunciationEn;
    result$data['address2PronunciationEn'] = l$address2PronunciationEn;
    final l$address2NicknameSharedDictionaryId =
        address2NicknameSharedDictionaryId;
    result$data['address2NicknameSharedDictionaryId'] =
        l$address2NicknameSharedDictionaryId;
    final l$address2NicknameJa = address2NicknameJa;
    result$data['address2NicknameJa'] = l$address2NicknameJa;
    final l$address2NicknameEn = address2NicknameEn;
    result$data['address2NicknameEn'] = l$address2NicknameEn;
    final l$billSharedAppellationsId = billSharedAppellationsId;
    result$data['billSharedAppellationsId'] = l$billSharedAppellationsId;
    final l$billNameSharedDictionaryId = billNameSharedDictionaryId;
    result$data['billNameSharedDictionaryId'] = l$billNameSharedDictionaryId;
    final l$billNameJa = billNameJa;
    result$data['billNameJa'] = l$billNameJa;
    final l$billNameEn = billNameEn;
    result$data['billNameEn'] = l$billNameEn;
    final l$billPronunciationSharedDictionaryId =
        billPronunciationSharedDictionaryId;
    result$data['billPronunciationSharedDictionaryId'] =
        l$billPronunciationSharedDictionaryId;
    final l$billPronunciationJa = billPronunciationJa;
    result$data['billPronunciationJa'] = l$billPronunciationJa;
    final l$billPronunciationEn = billPronunciationEn;
    result$data['billPronunciationEn'] = l$billPronunciationEn;
    final l$billNicknameSharedDictionaryId = billNicknameSharedDictionaryId;
    result$data['billNicknameSharedDictionaryId'] =
        l$billNicknameSharedDictionaryId;
    final l$billNicknameJa = billNicknameJa;
    result$data['billNicknameJa'] = l$billNicknameJa;
    final l$billNicknameEn = billNicknameEn;
    result$data['billNicknameEn'] = l$billNicknameEn;
    return result$data;
  }

  CopyWith$Variables$Mutation$OfficePageEdit<Variables$Mutation$OfficePageEdit>
  get copyWith => CopyWith$Variables$Mutation$OfficePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OfficePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (_$data.containsKey('remarks') != other._$data.containsKey('remarks')) {
      return false;
    }
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final lOther$nameSharedDictionaryId = other.nameSharedDictionaryId;
    if (l$nameSharedDictionaryId != lOther$nameSharedDictionaryId) {
      return false;
    }
    final l$nameJa = nameJa;
    final lOther$nameJa = other.nameJa;
    if (l$nameJa != lOther$nameJa) {
      return false;
    }
    final l$nameEn = nameEn;
    final lOther$nameEn = other.nameEn;
    if (l$nameEn != lOther$nameEn) {
      return false;
    }
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final lOther$pronunciationSharedDictionaryId =
        other.pronunciationSharedDictionaryId;
    if (l$pronunciationSharedDictionaryId !=
        lOther$pronunciationSharedDictionaryId) {
      return false;
    }
    final l$pronunciationJa = pronunciationJa;
    final lOther$pronunciationJa = other.pronunciationJa;
    if (l$pronunciationJa != lOther$pronunciationJa) {
      return false;
    }
    final l$pronunciationEn = pronunciationEn;
    final lOther$pronunciationEn = other.pronunciationEn;
    if (l$pronunciationEn != lOther$pronunciationEn) {
      return false;
    }
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    final lOther$nicknameSharedDictionaryId = other.nicknameSharedDictionaryId;
    if (l$nicknameSharedDictionaryId != lOther$nicknameSharedDictionaryId) {
      return false;
    }
    final l$nicknameJa = nicknameJa;
    final lOther$nicknameJa = other.nicknameJa;
    if (l$nicknameJa != lOther$nicknameJa) {
      return false;
    }
    final l$nicknameEn = nicknameEn;
    final lOther$nicknameEn = other.nicknameEn;
    if (l$nicknameEn != lOther$nicknameEn) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31663 = iso31663;
    final lOther$iso31663 = other.iso31663;
    if (_$data.containsKey('iso31663') !=
        other._$data.containsKey('iso31663')) {
      return false;
    }
    if (l$iso31663 != lOther$iso31663) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (_$data.containsKey('zipCode') != other._$data.containsKey('zipCode')) {
      return false;
    }
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (_$data.containsKey('faxNumber') !=
        other._$data.containsKey('faxNumber')) {
      return false;
    }
    if (l$faxNumber != lOther$faxNumber) {
      return false;
    }
    final l$address1SharedAppellationsId = address1SharedAppellationsId;
    final lOther$address1SharedAppellationsId =
        other.address1SharedAppellationsId;
    if (l$address1SharedAppellationsId != lOther$address1SharedAppellationsId) {
      return false;
    }
    final l$address1NameSharedDictionaryId = address1NameSharedDictionaryId;
    final lOther$address1NameSharedDictionaryId =
        other.address1NameSharedDictionaryId;
    if (l$address1NameSharedDictionaryId !=
        lOther$address1NameSharedDictionaryId) {
      return false;
    }
    final l$address1NameJa = address1NameJa;
    final lOther$address1NameJa = other.address1NameJa;
    if (l$address1NameJa != lOther$address1NameJa) {
      return false;
    }
    final l$address1NameEn = address1NameEn;
    final lOther$address1NameEn = other.address1NameEn;
    if (l$address1NameEn != lOther$address1NameEn) {
      return false;
    }
    final l$address1PronunciationSharedDictionaryId =
        address1PronunciationSharedDictionaryId;
    final lOther$address1PronunciationSharedDictionaryId =
        other.address1PronunciationSharedDictionaryId;
    if (l$address1PronunciationSharedDictionaryId !=
        lOther$address1PronunciationSharedDictionaryId) {
      return false;
    }
    final l$address1PronunciationJa = address1PronunciationJa;
    final lOther$address1PronunciationJa = other.address1PronunciationJa;
    if (l$address1PronunciationJa != lOther$address1PronunciationJa) {
      return false;
    }
    final l$address1PronunciationEn = address1PronunciationEn;
    final lOther$address1PronunciationEn = other.address1PronunciationEn;
    if (l$address1PronunciationEn != lOther$address1PronunciationEn) {
      return false;
    }
    final l$address1NicknameSharedDictionaryId =
        address1NicknameSharedDictionaryId;
    final lOther$address1NicknameSharedDictionaryId =
        other.address1NicknameSharedDictionaryId;
    if (l$address1NicknameSharedDictionaryId !=
        lOther$address1NicknameSharedDictionaryId) {
      return false;
    }
    final l$address1NicknameJa = address1NicknameJa;
    final lOther$address1NicknameJa = other.address1NicknameJa;
    if (l$address1NicknameJa != lOther$address1NicknameJa) {
      return false;
    }
    final l$address1NicknameEn = address1NicknameEn;
    final lOther$address1NicknameEn = other.address1NicknameEn;
    if (l$address1NicknameEn != lOther$address1NicknameEn) {
      return false;
    }
    final l$address2SharedAppellationsId = address2SharedAppellationsId;
    final lOther$address2SharedAppellationsId =
        other.address2SharedAppellationsId;
    if (l$address2SharedAppellationsId != lOther$address2SharedAppellationsId) {
      return false;
    }
    final l$address2NameSharedDictionaryId = address2NameSharedDictionaryId;
    final lOther$address2NameSharedDictionaryId =
        other.address2NameSharedDictionaryId;
    if (l$address2NameSharedDictionaryId !=
        lOther$address2NameSharedDictionaryId) {
      return false;
    }
    final l$address2NameJa = address2NameJa;
    final lOther$address2NameJa = other.address2NameJa;
    if (l$address2NameJa != lOther$address2NameJa) {
      return false;
    }
    final l$address2NameEn = address2NameEn;
    final lOther$address2NameEn = other.address2NameEn;
    if (l$address2NameEn != lOther$address2NameEn) {
      return false;
    }
    final l$address2PronunciationSharedDictionaryId =
        address2PronunciationSharedDictionaryId;
    final lOther$address2PronunciationSharedDictionaryId =
        other.address2PronunciationSharedDictionaryId;
    if (l$address2PronunciationSharedDictionaryId !=
        lOther$address2PronunciationSharedDictionaryId) {
      return false;
    }
    final l$address2PronunciationJa = address2PronunciationJa;
    final lOther$address2PronunciationJa = other.address2PronunciationJa;
    if (l$address2PronunciationJa != lOther$address2PronunciationJa) {
      return false;
    }
    final l$address2PronunciationEn = address2PronunciationEn;
    final lOther$address2PronunciationEn = other.address2PronunciationEn;
    if (l$address2PronunciationEn != lOther$address2PronunciationEn) {
      return false;
    }
    final l$address2NicknameSharedDictionaryId =
        address2NicknameSharedDictionaryId;
    final lOther$address2NicknameSharedDictionaryId =
        other.address2NicknameSharedDictionaryId;
    if (l$address2NicknameSharedDictionaryId !=
        lOther$address2NicknameSharedDictionaryId) {
      return false;
    }
    final l$address2NicknameJa = address2NicknameJa;
    final lOther$address2NicknameJa = other.address2NicknameJa;
    if (l$address2NicknameJa != lOther$address2NicknameJa) {
      return false;
    }
    final l$address2NicknameEn = address2NicknameEn;
    final lOther$address2NicknameEn = other.address2NicknameEn;
    if (l$address2NicknameEn != lOther$address2NicknameEn) {
      return false;
    }
    final l$billSharedAppellationsId = billSharedAppellationsId;
    final lOther$billSharedAppellationsId = other.billSharedAppellationsId;
    if (l$billSharedAppellationsId != lOther$billSharedAppellationsId) {
      return false;
    }
    final l$billNameSharedDictionaryId = billNameSharedDictionaryId;
    final lOther$billNameSharedDictionaryId = other.billNameSharedDictionaryId;
    if (l$billNameSharedDictionaryId != lOther$billNameSharedDictionaryId) {
      return false;
    }
    final l$billNameJa = billNameJa;
    final lOther$billNameJa = other.billNameJa;
    if (l$billNameJa != lOther$billNameJa) {
      return false;
    }
    final l$billNameEn = billNameEn;
    final lOther$billNameEn = other.billNameEn;
    if (l$billNameEn != lOther$billNameEn) {
      return false;
    }
    final l$billPronunciationSharedDictionaryId =
        billPronunciationSharedDictionaryId;
    final lOther$billPronunciationSharedDictionaryId =
        other.billPronunciationSharedDictionaryId;
    if (l$billPronunciationSharedDictionaryId !=
        lOther$billPronunciationSharedDictionaryId) {
      return false;
    }
    final l$billPronunciationJa = billPronunciationJa;
    final lOther$billPronunciationJa = other.billPronunciationJa;
    if (l$billPronunciationJa != lOther$billPronunciationJa) {
      return false;
    }
    final l$billPronunciationEn = billPronunciationEn;
    final lOther$billPronunciationEn = other.billPronunciationEn;
    if (l$billPronunciationEn != lOther$billPronunciationEn) {
      return false;
    }
    final l$billNicknameSharedDictionaryId = billNicknameSharedDictionaryId;
    final lOther$billNicknameSharedDictionaryId =
        other.billNicknameSharedDictionaryId;
    if (l$billNicknameSharedDictionaryId !=
        lOther$billNicknameSharedDictionaryId) {
      return false;
    }
    final l$billNicknameJa = billNicknameJa;
    final lOther$billNicknameJa = other.billNicknameJa;
    if (l$billNicknameJa != lOther$billNicknameJa) {
      return false;
    }
    final l$billNicknameEn = billNicknameEn;
    final lOther$billNicknameEn = other.billNicknameEn;
    if (l$billNicknameEn != lOther$billNicknameEn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$remarks = remarks;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final l$nameJa = nameJa;
    final l$nameEn = nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    final l$nicknameJa = nicknameJa;
    final l$nicknameEn = nicknameEn;
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$address1SharedAppellationsId = address1SharedAppellationsId;
    final l$address1NameSharedDictionaryId = address1NameSharedDictionaryId;
    final l$address1NameJa = address1NameJa;
    final l$address1NameEn = address1NameEn;
    final l$address1PronunciationSharedDictionaryId =
        address1PronunciationSharedDictionaryId;
    final l$address1PronunciationJa = address1PronunciationJa;
    final l$address1PronunciationEn = address1PronunciationEn;
    final l$address1NicknameSharedDictionaryId =
        address1NicknameSharedDictionaryId;
    final l$address1NicknameJa = address1NicknameJa;
    final l$address1NicknameEn = address1NicknameEn;
    final l$address2SharedAppellationsId = address2SharedAppellationsId;
    final l$address2NameSharedDictionaryId = address2NameSharedDictionaryId;
    final l$address2NameJa = address2NameJa;
    final l$address2NameEn = address2NameEn;
    final l$address2PronunciationSharedDictionaryId =
        address2PronunciationSharedDictionaryId;
    final l$address2PronunciationJa = address2PronunciationJa;
    final l$address2PronunciationEn = address2PronunciationEn;
    final l$address2NicknameSharedDictionaryId =
        address2NicknameSharedDictionaryId;
    final l$address2NicknameJa = address2NicknameJa;
    final l$address2NicknameEn = address2NicknameEn;
    final l$billSharedAppellationsId = billSharedAppellationsId;
    final l$billNameSharedDictionaryId = billNameSharedDictionaryId;
    final l$billNameJa = billNameJa;
    final l$billNameEn = billNameEn;
    final l$billPronunciationSharedDictionaryId =
        billPronunciationSharedDictionaryId;
    final l$billPronunciationJa = billPronunciationJa;
    final l$billPronunciationEn = billPronunciationEn;
    final l$billNicknameSharedDictionaryId = billNicknameSharedDictionaryId;
    final l$billNicknameJa = billNicknameJa;
    final l$billNicknameEn = billNicknameEn;
    return Object.hashAll([
      l$infoOfficeId,
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$sharedAppellationsId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
      l$nameSharedDictionaryId,
      l$nameJa,
      l$nameEn,
      l$pronunciationSharedDictionaryId,
      l$pronunciationJa,
      l$pronunciationEn,
      l$nicknameSharedDictionaryId,
      l$nicknameJa,
      l$nicknameEn,
      l$infoAddressId,
      _$data.containsKey('iso31663') ? l$iso31663 : const {},
      _$data.containsKey('zipCode') ? l$zipCode : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('faxNumber') ? l$faxNumber : const {},
      l$address1SharedAppellationsId,
      l$address1NameSharedDictionaryId,
      l$address1NameJa,
      l$address1NameEn,
      l$address1PronunciationSharedDictionaryId,
      l$address1PronunciationJa,
      l$address1PronunciationEn,
      l$address1NicknameSharedDictionaryId,
      l$address1NicknameJa,
      l$address1NicknameEn,
      l$address2SharedAppellationsId,
      l$address2NameSharedDictionaryId,
      l$address2NameJa,
      l$address2NameEn,
      l$address2PronunciationSharedDictionaryId,
      l$address2PronunciationJa,
      l$address2PronunciationEn,
      l$address2NicknameSharedDictionaryId,
      l$address2NicknameJa,
      l$address2NicknameEn,
      l$billSharedAppellationsId,
      l$billNameSharedDictionaryId,
      l$billNameJa,
      l$billNameEn,
      l$billPronunciationSharedDictionaryId,
      l$billPronunciationJa,
      l$billPronunciationEn,
      l$billNicknameSharedDictionaryId,
      l$billNicknameJa,
      l$billNicknameEn,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$OfficePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$OfficePageEdit(
    Variables$Mutation$OfficePageEdit instance,
    TRes Function(Variables$Mutation$OfficePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OfficePageEdit;

  factory CopyWith$Variables$Mutation$OfficePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OfficePageEdit;

  TRes call({
    String? infoOfficeId,
    String? remarks,
    String? sharedAppellationsId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    String? address1SharedAppellationsId,
    String? address1NameSharedDictionaryId,
    String? address1NameJa,
    String? address1NameEn,
    String? address1PronunciationSharedDictionaryId,
    String? address1PronunciationJa,
    String? address1PronunciationEn,
    String? address1NicknameSharedDictionaryId,
    String? address1NicknameJa,
    String? address1NicknameEn,
    String? address2SharedAppellationsId,
    String? address2NameSharedDictionaryId,
    String? address2NameJa,
    String? address2NameEn,
    String? address2PronunciationSharedDictionaryId,
    String? address2PronunciationJa,
    String? address2PronunciationEn,
    String? address2NicknameSharedDictionaryId,
    String? address2NicknameJa,
    String? address2NicknameEn,
    String? billSharedAppellationsId,
    String? billNameSharedDictionaryId,
    String? billNameJa,
    String? billNameEn,
    String? billPronunciationSharedDictionaryId,
    String? billPronunciationJa,
    String? billPronunciationEn,
    String? billNicknameSharedDictionaryId,
    String? billNicknameJa,
    String? billNicknameEn,
  });
}

class _CopyWithImpl$Variables$Mutation$OfficePageEdit<TRes>
    implements CopyWith$Variables$Mutation$OfficePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OfficePageEdit(this._instance, this._then);

  final Variables$Mutation$OfficePageEdit _instance;

  final TRes Function(Variables$Mutation$OfficePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? nameSharedDictionaryId = _undefined,
    Object? nameJa = _undefined,
    Object? nameEn = _undefined,
    Object? pronunciationSharedDictionaryId = _undefined,
    Object? pronunciationJa = _undefined,
    Object? pronunciationEn = _undefined,
    Object? nicknameSharedDictionaryId = _undefined,
    Object? nicknameJa = _undefined,
    Object? nicknameEn = _undefined,
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? address1SharedAppellationsId = _undefined,
    Object? address1NameSharedDictionaryId = _undefined,
    Object? address1NameJa = _undefined,
    Object? address1NameEn = _undefined,
    Object? address1PronunciationSharedDictionaryId = _undefined,
    Object? address1PronunciationJa = _undefined,
    Object? address1PronunciationEn = _undefined,
    Object? address1NicknameSharedDictionaryId = _undefined,
    Object? address1NicknameJa = _undefined,
    Object? address1NicknameEn = _undefined,
    Object? address2SharedAppellationsId = _undefined,
    Object? address2NameSharedDictionaryId = _undefined,
    Object? address2NameJa = _undefined,
    Object? address2NameEn = _undefined,
    Object? address2PronunciationSharedDictionaryId = _undefined,
    Object? address2PronunciationJa = _undefined,
    Object? address2PronunciationEn = _undefined,
    Object? address2NicknameSharedDictionaryId = _undefined,
    Object? address2NicknameJa = _undefined,
    Object? address2NicknameEn = _undefined,
    Object? billSharedAppellationsId = _undefined,
    Object? billNameSharedDictionaryId = _undefined,
    Object? billNameJa = _undefined,
    Object? billNameEn = _undefined,
    Object? billPronunciationSharedDictionaryId = _undefined,
    Object? billPronunciationJa = _undefined,
    Object? billPronunciationEn = _undefined,
    Object? billNicknameSharedDictionaryId = _undefined,
    Object? billNicknameJa = _undefined,
    Object? billNicknameEn = _undefined,
  }) => _then(
    Variables$Mutation$OfficePageEdit._({
      ..._instance._$data,
      if (infoOfficeId != _undefined && infoOfficeId != null)
        'infoOfficeId': (infoOfficeId as String),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
      if (nameSharedDictionaryId != _undefined &&
          nameSharedDictionaryId != null)
        'nameSharedDictionaryId': (nameSharedDictionaryId as String),
      if (nameJa != _undefined && nameJa != null) 'nameJa': (nameJa as String),
      if (nameEn != _undefined && nameEn != null) 'nameEn': (nameEn as String),
      if (pronunciationSharedDictionaryId != _undefined &&
          pronunciationSharedDictionaryId != null)
        'pronunciationSharedDictionaryId':
            (pronunciationSharedDictionaryId as String),
      if (pronunciationJa != _undefined && pronunciationJa != null)
        'pronunciationJa': (pronunciationJa as String),
      if (pronunciationEn != _undefined && pronunciationEn != null)
        'pronunciationEn': (pronunciationEn as String),
      if (nicknameSharedDictionaryId != _undefined &&
          nicknameSharedDictionaryId != null)
        'nicknameSharedDictionaryId': (nicknameSharedDictionaryId as String),
      if (nicknameJa != _undefined && nicknameJa != null)
        'nicknameJa': (nicknameJa as String),
      if (nicknameEn != _undefined && nicknameEn != null)
        'nicknameEn': (nicknameEn as String),
      if (infoAddressId != _undefined && infoAddressId != null)
        'infoAddressId': (infoAddressId as String),
      if (iso31663 != _undefined) 'iso31663': (iso31663 as String?),
      if (zipCode != _undefined) 'zipCode': (zipCode as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (faxNumber != _undefined) 'faxNumber': (faxNumber as String?),
      if (address1SharedAppellationsId != _undefined &&
          address1SharedAppellationsId != null)
        'address1SharedAppellationsId':
            (address1SharedAppellationsId as String),
      if (address1NameSharedDictionaryId != _undefined &&
          address1NameSharedDictionaryId != null)
        'address1NameSharedDictionaryId':
            (address1NameSharedDictionaryId as String),
      if (address1NameJa != _undefined && address1NameJa != null)
        'address1NameJa': (address1NameJa as String),
      if (address1NameEn != _undefined && address1NameEn != null)
        'address1NameEn': (address1NameEn as String),
      if (address1PronunciationSharedDictionaryId != _undefined &&
          address1PronunciationSharedDictionaryId != null)
        'address1PronunciationSharedDictionaryId':
            (address1PronunciationSharedDictionaryId as String),
      if (address1PronunciationJa != _undefined &&
          address1PronunciationJa != null)
        'address1PronunciationJa': (address1PronunciationJa as String),
      if (address1PronunciationEn != _undefined &&
          address1PronunciationEn != null)
        'address1PronunciationEn': (address1PronunciationEn as String),
      if (address1NicknameSharedDictionaryId != _undefined &&
          address1NicknameSharedDictionaryId != null)
        'address1NicknameSharedDictionaryId':
            (address1NicknameSharedDictionaryId as String),
      if (address1NicknameJa != _undefined && address1NicknameJa != null)
        'address1NicknameJa': (address1NicknameJa as String),
      if (address1NicknameEn != _undefined && address1NicknameEn != null)
        'address1NicknameEn': (address1NicknameEn as String),
      if (address2SharedAppellationsId != _undefined &&
          address2SharedAppellationsId != null)
        'address2SharedAppellationsId':
            (address2SharedAppellationsId as String),
      if (address2NameSharedDictionaryId != _undefined &&
          address2NameSharedDictionaryId != null)
        'address2NameSharedDictionaryId':
            (address2NameSharedDictionaryId as String),
      if (address2NameJa != _undefined && address2NameJa != null)
        'address2NameJa': (address2NameJa as String),
      if (address2NameEn != _undefined && address2NameEn != null)
        'address2NameEn': (address2NameEn as String),
      if (address2PronunciationSharedDictionaryId != _undefined &&
          address2PronunciationSharedDictionaryId != null)
        'address2PronunciationSharedDictionaryId':
            (address2PronunciationSharedDictionaryId as String),
      if (address2PronunciationJa != _undefined &&
          address2PronunciationJa != null)
        'address2PronunciationJa': (address2PronunciationJa as String),
      if (address2PronunciationEn != _undefined &&
          address2PronunciationEn != null)
        'address2PronunciationEn': (address2PronunciationEn as String),
      if (address2NicknameSharedDictionaryId != _undefined &&
          address2NicknameSharedDictionaryId != null)
        'address2NicknameSharedDictionaryId':
            (address2NicknameSharedDictionaryId as String),
      if (address2NicknameJa != _undefined && address2NicknameJa != null)
        'address2NicknameJa': (address2NicknameJa as String),
      if (address2NicknameEn != _undefined && address2NicknameEn != null)
        'address2NicknameEn': (address2NicknameEn as String),
      if (billSharedAppellationsId != _undefined &&
          billSharedAppellationsId != null)
        'billSharedAppellationsId': (billSharedAppellationsId as String),
      if (billNameSharedDictionaryId != _undefined &&
          billNameSharedDictionaryId != null)
        'billNameSharedDictionaryId': (billNameSharedDictionaryId as String),
      if (billNameJa != _undefined && billNameJa != null)
        'billNameJa': (billNameJa as String),
      if (billNameEn != _undefined && billNameEn != null)
        'billNameEn': (billNameEn as String),
      if (billPronunciationSharedDictionaryId != _undefined &&
          billPronunciationSharedDictionaryId != null)
        'billPronunciationSharedDictionaryId':
            (billPronunciationSharedDictionaryId as String),
      if (billPronunciationJa != _undefined && billPronunciationJa != null)
        'billPronunciationJa': (billPronunciationJa as String),
      if (billPronunciationEn != _undefined && billPronunciationEn != null)
        'billPronunciationEn': (billPronunciationEn as String),
      if (billNicknameSharedDictionaryId != _undefined &&
          billNicknameSharedDictionaryId != null)
        'billNicknameSharedDictionaryId':
            (billNicknameSharedDictionaryId as String),
      if (billNicknameJa != _undefined && billNicknameJa != null)
        'billNicknameJa': (billNicknameJa as String),
      if (billNicknameEn != _undefined && billNicknameEn != null)
        'billNicknameEn': (billNicknameEn as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$OfficePageEdit<TRes>
    implements CopyWith$Variables$Mutation$OfficePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OfficePageEdit(this._res);

  TRes _res;

  call({
    String? infoOfficeId,
    String? remarks,
    String? sharedAppellationsId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    String? address1SharedAppellationsId,
    String? address1NameSharedDictionaryId,
    String? address1NameJa,
    String? address1NameEn,
    String? address1PronunciationSharedDictionaryId,
    String? address1PronunciationJa,
    String? address1PronunciationEn,
    String? address1NicknameSharedDictionaryId,
    String? address1NicknameJa,
    String? address1NicknameEn,
    String? address2SharedAppellationsId,
    String? address2NameSharedDictionaryId,
    String? address2NameJa,
    String? address2NameEn,
    String? address2PronunciationSharedDictionaryId,
    String? address2PronunciationJa,
    String? address2PronunciationEn,
    String? address2NicknameSharedDictionaryId,
    String? address2NicknameJa,
    String? address2NicknameEn,
    String? billSharedAppellationsId,
    String? billNameSharedDictionaryId,
    String? billNameJa,
    String? billNameEn,
    String? billPronunciationSharedDictionaryId,
    String? billPronunciationJa,
    String? billPronunciationEn,
    String? billNicknameSharedDictionaryId,
    String? billNicknameJa,
    String? billNicknameEn,
  }) => _res;
}

class Mutation$OfficePageEdit {
  Mutation$OfficePageEdit({
    this.updateInfoOfficeByInfoOfficeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OfficePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoOfficeByInfoOfficeId =
        json['updateInfoOfficeByInfoOfficeId'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit(
      updateInfoOfficeByInfoOfficeId: l$updateInfoOfficeByInfoOfficeId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId.fromJson(
              (l$updateInfoOfficeByInfoOfficeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId?
  updateInfoOfficeByInfoOfficeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoOfficeByInfoOfficeId = updateInfoOfficeByInfoOfficeId;
    _resultData['updateInfoOfficeByInfoOfficeId'] =
        l$updateInfoOfficeByInfoOfficeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoOfficeByInfoOfficeId = updateInfoOfficeByInfoOfficeId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInfoOfficeByInfoOfficeId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OfficePageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoOfficeByInfoOfficeId = updateInfoOfficeByInfoOfficeId;
    final lOther$updateInfoOfficeByInfoOfficeId =
        other.updateInfoOfficeByInfoOfficeId;
    if (l$updateInfoOfficeByInfoOfficeId !=
        lOther$updateInfoOfficeByInfoOfficeId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit on Mutation$OfficePageEdit {
  CopyWith$Mutation$OfficePageEdit<Mutation$OfficePageEdit> get copyWith =>
      CopyWith$Mutation$OfficePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OfficePageEdit<TRes> {
  factory CopyWith$Mutation$OfficePageEdit(
    Mutation$OfficePageEdit instance,
    TRes Function(Mutation$OfficePageEdit) then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit;

  factory CopyWith$Mutation$OfficePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OfficePageEdit;

  TRes call({
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId?
    updateInfoOfficeByInfoOfficeId,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes>
  get updateInfoOfficeByInfoOfficeId;
}

class _CopyWithImpl$Mutation$OfficePageEdit<TRes>
    implements CopyWith$Mutation$OfficePageEdit<TRes> {
  _CopyWithImpl$Mutation$OfficePageEdit(this._instance, this._then);

  final Mutation$OfficePageEdit _instance;

  final TRes Function(Mutation$OfficePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoOfficeByInfoOfficeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit(
      updateInfoOfficeByInfoOfficeId:
          updateInfoOfficeByInfoOfficeId == _undefined
          ? _instance.updateInfoOfficeByInfoOfficeId
          : (updateInfoOfficeByInfoOfficeId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes>
  get updateInfoOfficeByInfoOfficeId {
    final local$updateInfoOfficeByInfoOfficeId =
        _instance.updateInfoOfficeByInfoOfficeId;
    return local$updateInfoOfficeByInfoOfficeId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
            local$updateInfoOfficeByInfoOfficeId,
            (e) => call(updateInfoOfficeByInfoOfficeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit<TRes>
    implements CopyWith$Mutation$OfficePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$OfficePageEdit(this._res);

  TRes _res;

  call({
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId?
    updateInfoOfficeByInfoOfficeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes>
  get updateInfoOfficeByInfoOfficeId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId.stub(
        _res,
      );
}

const documentNodeMutationOfficePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OfficePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoOfficeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'remarks')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedAppellationsId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'nameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'pronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pronunciationJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pronunciationEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'nicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nicknameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nicknameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoAddressId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'iso31663')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'zipCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'phone')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'faxNumber')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1SharedAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1NameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address1NameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address1NameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1PronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1PronunciationJa'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1PronunciationEn'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address1NicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address1NicknameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address1NicknameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2SharedAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2NameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2NameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2NameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2PronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2PronunciationJa'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2PronunciationEn'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'address2NicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2NicknameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2NicknameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'billSharedAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'billNameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billNameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billNameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'billPronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billPronunciationJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billPronunciationEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'billNicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billNicknameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'billNicknameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateInfoOfficeByInfoOfficeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoOfficeId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoOfficeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoOfficePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sharedAppellationToNames'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateBySharedAppellationsId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationsId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'sharedAppellationsId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'nameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'create',
                                                                      ),
                                                                      value: ListValueNode(
                                                                        values: [
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'jaLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'nameJa',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'enLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'nameEn',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'pronunciationSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'create',
                                                                      ),
                                                                      value: ListValueNode(
                                                                        values: [
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'jaLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'pronunciationJa',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'enLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'pronunciationEn',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNicknameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'nicknameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'create',
                                                                      ),
                                                                      value: ListValueNode(
                                                                        values: [
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'jaLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'nicknameJa',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          ObjectValueNode(
                                                                            fields: [
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'sharedLanguageCodeId',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'enLanguageCodeId',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ObjectFieldNode(
                                                                                name: NameNode(
                                                                                  value: 'dictionaryValue',
                                                                                ),
                                                                                value: VariableNode(
                                                                                  name: NameNode(
                                                                                    value: 'nicknameEn',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoAddressToInfoAddressId'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateByInfoAddressId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'infoAddressId'),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'infoAddressId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'infoAddressPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(value: 'iso31663'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'iso31663',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'zipCode'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'zipCode',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'phone'),
                                              value: VariableNode(
                                                name: NameNode(value: 'phone'),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'faxNumber',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'faxNumber',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedAppellationToAddress1',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedAppellationsId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationsId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'address1SharedAppellationsId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address1NameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1NameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1NameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryPronunciationId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address1PronunciationSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1PronunciationJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1PronunciationEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNicknameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address1NicknameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1NicknameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address1NicknameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedAppellationToAddress2',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedAppellationsId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationsId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'address2SharedAppellationsId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address2NameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2NameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2NameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryPronunciationId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address2PronunciationSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2PronunciationJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2PronunciationEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNicknameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'address2NicknameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2NicknameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'address2NicknameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedAppellationToBill',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedAppellationsId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationsId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'billSharedAppellationsId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedAppellationPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'billNameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billNameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billNameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryPronunciationId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'billPronunciationSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billPronunciationJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billPronunciationEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedDictionaryToSharedDictionaryNicknameId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'updateBySharedDictionaryId',
                                                                      ),
                                                                      value: ObjectValueNode(
                                                                        fields: [
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'billNicknameSharedDictionaryId',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          ObjectFieldNode(
                                                                            name: NameNode(
                                                                              value: 'sharedDictionaryPatch',
                                                                            ),
                                                                            value: ObjectValueNode(
                                                                              fields: [
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                                  ),
                                                                                  value: ObjectValueNode(
                                                                                    fields: [
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'deleteOthers',
                                                                                        ),
                                                                                        value: BooleanValueNode(
                                                                                          value: true,
                                                                                        ),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(
                                                                                          value: 'create',
                                                                                        ),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'jaLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billNicknameJa',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'sharedLanguageCodeId',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'enLanguageCodeId',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(
                                                                                                    value: 'dictionaryValue',
                                                                                                  ),
                                                                                                  value: VariableNode(
                                                                                                    name: NameNode(
                                                                                                      value: 'billNicknameEn',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoOffice'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoOfficeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'infoCompanyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'remarks'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedAppellationByNames'),
                        alias: NameNode(value: 'labels'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryPronunciationId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'nodes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'dictionaryValue',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: 'infoAddressByInfoAddressId'),
                        alias: NameNode(value: 'address'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'infoAddressId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'iso31663'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'zipCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'phone'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'faxNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedAppellationByAddress1',
                              ),
                              alias: NameNode(value: 'address1'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedAppellationByAddress2',
                              ),
                              alias: NameNode(value: 'address2'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationByBill'),
                              alias: NameNode(value: 'billName'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Mutation$OfficePageEdit _parserFn$Mutation$OfficePageEdit(
  Map<String, dynamic> data,
) => Mutation$OfficePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OfficePageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$OfficePageEdit?);

class Options$Mutation$OfficePageEdit
    extends graphql.MutationOptions<Mutation$OfficePageEdit> {
  Options$Mutation$OfficePageEdit({
    String? operationName,
    required Variables$Mutation$OfficePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OfficePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OfficePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OfficePageEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$OfficePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOfficePageEdit,
         parserFn: _parserFn$Mutation$OfficePageEdit,
       );

  final OnMutationCompleted$Mutation$OfficePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OfficePageEdit
    extends graphql.WatchQueryOptions<Mutation$OfficePageEdit> {
  WatchOptions$Mutation$OfficePageEdit({
    String? operationName,
    required Variables$Mutation$OfficePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OfficePageEdit? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationOfficePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OfficePageEdit,
       );
}

extension ClientExtension$Mutation$OfficePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OfficePageEdit>> mutate$OfficePageEdit(
    Options$Mutation$OfficePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OfficePageEdit> watchMutation$OfficePageEdit(
    WatchOptions$Mutation$OfficePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OfficePageEdit$HookResult {
  Mutation$OfficePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OfficePageEdit runMutation;

  final graphql.QueryResult<Mutation$OfficePageEdit> result;
}

Mutation$OfficePageEdit$HookResult useMutation$OfficePageEdit([
  WidgetOptions$Mutation$OfficePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OfficePageEdit(),
  );
  return Mutation$OfficePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OfficePageEdit>
useWatchMutation$OfficePageEdit(WatchOptions$Mutation$OfficePageEdit options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OfficePageEdit
    extends graphql.MutationOptions<Mutation$OfficePageEdit> {
  WidgetOptions$Mutation$OfficePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OfficePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OfficePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OfficePageEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$OfficePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOfficePageEdit,
         parserFn: _parserFn$Mutation$OfficePageEdit,
       );

  final OnMutationCompleted$Mutation$OfficePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OfficePageEdit =
    graphql.MultiSourceResult<Mutation$OfficePageEdit> Function(
      Variables$Mutation$OfficePageEdit, {
      Object? optimisticResult,
      Mutation$OfficePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OfficePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OfficePageEdit,
      graphql.QueryResult<Mutation$OfficePageEdit>?,
    );

class Mutation$OfficePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OfficePageEdit> {
  Mutation$OfficePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OfficePageEdit? options,
    required Builder$Mutation$OfficePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OfficePageEdit(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId({
    this.infoOffice,
    this.$__typename = 'UpdateInfoOfficePayload',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOffice = json['infoOffice'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
      infoOffice: l$infoOffice == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.fromJson(
              (l$infoOffice as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice?
  infoOffice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOffice = infoOffice;
    _resultData['infoOffice'] = l$infoOffice?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOffice = infoOffice;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoOffice, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOffice = infoOffice;
    final lOther$infoOffice = other.infoOffice;
    if (l$infoOffice != lOther$infoOffice) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId
    on Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId instance,
    TRes Function(Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId) then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId;

  TRes call({
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice?
    infoOffice,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
    TRes
  >
  get infoOffice;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes> {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId _instance;

  final TRes Function(Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOffice = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
      infoOffice: infoOffice == _undefined
          ? _instance.infoOffice
          : (infoOffice
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
    TRes
  >
  get infoOffice {
    final local$infoOffice = _instance.infoOffice;
    return local$infoOffice == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
            local$infoOffice,
            (e) => call(infoOffice: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId<TRes> {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice?
    infoOffice,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
    TRes
  >
  get infoOffice =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice({
    required this.infoOfficeId,
    required this.infoCompanyId,
    required this.code,
    this.remarks,
    this.labels,
    this.address,
    this.$__typename = 'InfoOffice',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
      infoOfficeId: (l$infoOfficeId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      address: l$address == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoOfficeId;

  final String infoCompanyId;

  final String code;

  final String? remarks;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels?
  labels;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address?
  address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
      l$infoCompanyId,
      l$code,
      l$remarks,
      l$labels,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice
    on Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice;

  TRes call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels?
    labels,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address?
    address,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
    TRes
  >
  get address;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels?),
      address: address == _undefined
          ? _instance.address
          : (address
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
    TRes
  >
  get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
            local$address,
            (e) => call(address: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice(
    this._res,
  );

  TRes _res;

  call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels?
    labels,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address?
    address,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
    TRes
  >
  get address =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels
    on Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.phone,
    this.faxNumber,
    this.address1,
    this.address2,
    this.billName,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$billName = json['billName'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      address1: l$address1 == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      billName: l$billName == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName.fromJson(
              (l$billName as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final String? phone;

  final String? faxNumber;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1?
  address1;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2?
  address2;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName?
  billName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31663 = iso31663;
    _resultData['iso31663'] = l$iso31663;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$address1 = address1;
    _resultData['address1'] = l$address1?.toJson();
    final l$address2 = address2;
    _resultData['address2'] = l$address2?.toJson();
    final l$billName = billName;
    _resultData['billName'] = l$billName?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$billName = billName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$phone,
      l$faxNumber,
      l$address1,
      l$address2,
      l$billName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31663 = iso31663;
    final lOther$iso31663 = other.iso31663;
    if (l$iso31663 != lOther$iso31663) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (l$faxNumber != lOther$faxNumber) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$billName = billName;
    final lOther$billName = other.billName;
    if (l$billName != lOther$billName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address
    on Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1?
    address1,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2?
    address2,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName?
    billName,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
    TRes
  >
  get address1;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
    TRes
  >
  get address2;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
    TRes
  >
  get billName;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? billName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31663: iso31663 == _undefined
          ? _instance.iso31663
          : (iso31663 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2?),
      billName: billName == _undefined
          ? _instance.billName
          : (billName
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
    TRes
  >
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
    TRes
  >
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
    TRes
  >
  get billName {
    final local$billName = _instance.billName;
    return local$billName == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
            local$billName,
            (e) => call(billName: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? phone,
    String? faxNumber,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1?
    address1,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2?
    address2,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName?
    billName,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
    TRes
  >
  get address1 =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
    TRes
  >
  get address2 =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
    TRes
  >
  get billName =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1 {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1 {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address1$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2 {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2 {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$address2$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice$address$billName$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
