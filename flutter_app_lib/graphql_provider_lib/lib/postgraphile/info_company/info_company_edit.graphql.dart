import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$InfoCompanyEdit {
  factory Variables$Mutation$InfoCompanyEdit({
    required String infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
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
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  }) => Variables$Mutation$InfoCompanyEdit._({
    r'infoCompanyId': infoCompanyId,
    if (webPage != null) r'webPage': webPage,
    if (ceo != null) r'ceo': ceo,
    if (symbol != null) r'symbol': symbol,
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
    if (address1 != null) r'address1': address1,
    if (address2 != null) r'address2': address2,
    if (bill != null) r'bill': bill,
    if (phone != null) r'phone': phone,
    if (faxNumber != null) r'faxNumber': faxNumber,
  });

  Variables$Mutation$InfoCompanyEdit._(this._$data);

  factory Variables$Mutation$InfoCompanyEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = data['infoCompanyId'];
    result$data['infoCompanyId'] = (l$infoCompanyId as String);
    if (data.containsKey('webPage')) {
      final l$webPage = data['webPage'];
      result$data['webPage'] = (l$webPage as String?);
    }
    if (data.containsKey('ceo')) {
      final l$ceo = data['ceo'];
      result$data['ceo'] = (l$ceo as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
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
    if (data.containsKey('address1')) {
      final l$address1 = data['address1'];
      result$data['address1'] = (l$address1 as String?);
    }
    if (data.containsKey('address2')) {
      final l$address2 = data['address2'];
      result$data['address2'] = (l$address2 as String?);
    }
    if (data.containsKey('bill')) {
      final l$bill = data['bill'];
      result$data['bill'] = (l$bill as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('faxNumber')) {
      final l$faxNumber = data['faxNumber'];
      result$data['faxNumber'] = (l$faxNumber as String?);
    }
    return Variables$Mutation$InfoCompanyEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  String? get webPage => (_$data['webPage'] as String?);

  String? get ceo => (_$data['ceo'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

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

  String? get address1 => (_$data['address1'] as String?);

  String? get address2 => (_$data['address2'] as String?);

  String? get bill => (_$data['bill'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get faxNumber => (_$data['faxNumber'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    result$data['infoCompanyId'] = l$infoCompanyId;
    if (_$data.containsKey('webPage')) {
      final l$webPage = webPage;
      result$data['webPage'] = l$webPage;
    }
    if (_$data.containsKey('ceo')) {
      final l$ceo = ceo;
      result$data['ceo'] = l$ceo;
    }
    if (_$data.containsKey('symbol')) {
      final l$symbol = symbol;
      result$data['symbol'] = l$symbol;
    }
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
    if (_$data.containsKey('address1')) {
      final l$address1 = address1;
      result$data['address1'] = l$address1;
    }
    if (_$data.containsKey('address2')) {
      final l$address2 = address2;
      result$data['address2'] = l$address2;
    }
    if (_$data.containsKey('bill')) {
      final l$bill = bill;
      result$data['bill'] = l$bill;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('faxNumber')) {
      final l$faxNumber = faxNumber;
      result$data['faxNumber'] = l$faxNumber;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$InfoCompanyEdit<
    Variables$Mutation$InfoCompanyEdit
  >
  get copyWith => CopyWith$Variables$Mutation$InfoCompanyEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InfoCompanyEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$webPage = webPage;
    final lOther$webPage = other.webPage;
    if (_$data.containsKey('webPage') != other._$data.containsKey('webPage')) {
      return false;
    }
    if (l$webPage != lOther$webPage) {
      return false;
    }
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (_$data.containsKey('ceo') != other._$data.containsKey('ceo')) {
      return false;
    }
    if (l$ceo != lOther$ceo) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (_$data.containsKey('symbol') != other._$data.containsKey('symbol')) {
      return false;
    }
    if (l$symbol != lOther$symbol) {
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
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (_$data.containsKey('address1') !=
        other._$data.containsKey('address1')) {
      return false;
    }
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (_$data.containsKey('address2') !=
        other._$data.containsKey('address2')) {
      return false;
    }
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$bill = bill;
    final lOther$bill = other.bill;
    if (_$data.containsKey('bill') != other._$data.containsKey('bill')) {
      return false;
    }
    if (l$bill != lOther$bill) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$symbol = symbol;
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
    final l$address1 = address1;
    final l$address2 = address2;
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    return Object.hashAll([
      l$infoCompanyId,
      _$data.containsKey('webPage') ? l$webPage : const {},
      _$data.containsKey('ceo') ? l$ceo : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
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
      _$data.containsKey('address1') ? l$address1 : const {},
      _$data.containsKey('address2') ? l$address2 : const {},
      _$data.containsKey('bill') ? l$bill : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('faxNumber') ? l$faxNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$InfoCompanyEdit<TRes> {
  factory CopyWith$Variables$Mutation$InfoCompanyEdit(
    Variables$Mutation$InfoCompanyEdit instance,
    TRes Function(Variables$Mutation$InfoCompanyEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$InfoCompanyEdit;

  factory CopyWith$Variables$Mutation$InfoCompanyEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InfoCompanyEdit;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
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
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  });
}

class _CopyWithImpl$Variables$Mutation$InfoCompanyEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoCompanyEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$InfoCompanyEdit(this._instance, this._then);

  final Variables$Mutation$InfoCompanyEdit _instance;

  final TRes Function(Variables$Mutation$InfoCompanyEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? symbol = _undefined,
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
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
  }) => _then(
    Variables$Mutation$InfoCompanyEdit._({
      ..._instance._$data,
      if (infoCompanyId != _undefined && infoCompanyId != null)
        'infoCompanyId': (infoCompanyId as String),
      if (webPage != _undefined) 'webPage': (webPage as String?),
      if (ceo != _undefined) 'ceo': (ceo as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
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
      if (address1 != _undefined) 'address1': (address1 as String?),
      if (address2 != _undefined) 'address2': (address2 as String?),
      if (bill != _undefined) 'bill': (bill as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (faxNumber != _undefined) 'faxNumber': (faxNumber as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$InfoCompanyEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoCompanyEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InfoCompanyEdit(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
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
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  }) => _res;
}

class Mutation$InfoCompanyEdit {
  Mutation$InfoCompanyEdit({
    this.updateInfoCompanyByInfoCompanyId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InfoCompanyEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoCompanyByInfoCompanyId =
        json['updateInfoCompanyByInfoCompanyId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit(
      updateInfoCompanyByInfoCompanyId:
          l$updateInfoCompanyByInfoCompanyId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId.fromJson(
              (l$updateInfoCompanyByInfoCompanyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId?
  updateInfoCompanyByInfoCompanyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    _resultData['updateInfoCompanyByInfoCompanyId'] =
        l$updateInfoCompanyByInfoCompanyId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInfoCompanyByInfoCompanyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoCompanyEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    final lOther$updateInfoCompanyByInfoCompanyId =
        other.updateInfoCompanyByInfoCompanyId;
    if (l$updateInfoCompanyByInfoCompanyId !=
        lOther$updateInfoCompanyByInfoCompanyId) {
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

extension UtilityExtension$Mutation$InfoCompanyEdit
    on Mutation$InfoCompanyEdit {
  CopyWith$Mutation$InfoCompanyEdit<Mutation$InfoCompanyEdit> get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$InfoCompanyEdit<TRes> {
  factory CopyWith$Mutation$InfoCompanyEdit(
    Mutation$InfoCompanyEdit instance,
    TRes Function(Mutation$InfoCompanyEdit) then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit;

  factory CopyWith$Mutation$InfoCompanyEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InfoCompanyEdit;

  TRes call({
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId?
    updateInfoCompanyByInfoCompanyId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit<TRes>
    implements CopyWith$Mutation$InfoCompanyEdit<TRes> {
  _CopyWithImpl$Mutation$InfoCompanyEdit(this._instance, this._then);

  final Mutation$InfoCompanyEdit _instance;

  final TRes Function(Mutation$InfoCompanyEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoCompanyByInfoCompanyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit(
      updateInfoCompanyByInfoCompanyId:
          updateInfoCompanyByInfoCompanyId == _undefined
          ? _instance.updateInfoCompanyByInfoCompanyId
          : (updateInfoCompanyByInfoCompanyId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId {
    final local$updateInfoCompanyByInfoCompanyId =
        _instance.updateInfoCompanyByInfoCompanyId;
    return local$updateInfoCompanyByInfoCompanyId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
            local$updateInfoCompanyByInfoCompanyId,
            (e) => call(updateInfoCompanyByInfoCompanyId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit<TRes>
    implements CopyWith$Mutation$InfoCompanyEdit<TRes> {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit(this._res);

  TRes _res;

  call({
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId?
    updateInfoCompanyByInfoCompanyId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId.stub(
        _res,
      );
}

const documentNodeMutationInfoCompanyEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InfoCompanyEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoCompanyId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'webPage')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ceo')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'symbol')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
          variable: VariableNode(name: NameNode(value: 'address1')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'bill')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateInfoCompanyByInfoCompanyId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoCompanyId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoCompanyId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoCompanyPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'webPage'),
                            value: VariableNode(
                              name: NameNode(value: 'webPage'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'ceo'),
                            value: VariableNode(name: NameNode(value: 'ceo')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'symbol'),
                            value: VariableNode(
                              name: NameNode(value: 'symbol'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value: 'sharedAppellationToSharedAppellationsId',
                            ),
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
                                              name: NameNode(value: 'address1'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'address1',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'address2'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'address2',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'bill'),
                                              value: VariableNode(
                                                name: NameNode(value: 'bill'),
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
                  name: NameNode(value: 'infoCompany'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoCompanyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'webPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ceo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'symbol'),
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
                        name: NameNode(
                          value: 'sharedAppellationBySharedAppellationsId',
                        ),
                        alias: null,
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
                        alias: null,
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
                              name: NameNode(value: 'address1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address2'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'bill'),
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
Mutation$InfoCompanyEdit _parserFn$Mutation$InfoCompanyEdit(
  Map<String, dynamic> data,
) => Mutation$InfoCompanyEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$InfoCompanyEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$InfoCompanyEdit?);

class Options$Mutation$InfoCompanyEdit
    extends graphql.MutationOptions<Mutation$InfoCompanyEdit> {
  Options$Mutation$InfoCompanyEdit({
    String? operationName,
    required Variables$Mutation$InfoCompanyEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoCompanyEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoCompanyEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoCompanyEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoCompanyEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoCompanyEdit,
         parserFn: _parserFn$Mutation$InfoCompanyEdit,
       );

  final OnMutationCompleted$Mutation$InfoCompanyEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InfoCompanyEdit
    extends graphql.WatchQueryOptions<Mutation$InfoCompanyEdit> {
  WatchOptions$Mutation$InfoCompanyEdit({
    String? operationName,
    required Variables$Mutation$InfoCompanyEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoCompanyEdit? typedOptimisticResult,
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
         document: documentNodeMutationInfoCompanyEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InfoCompanyEdit,
       );
}

extension ClientExtension$Mutation$InfoCompanyEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InfoCompanyEdit>> mutate$InfoCompanyEdit(
    Options$Mutation$InfoCompanyEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InfoCompanyEdit>
  watchMutation$InfoCompanyEdit(
    WatchOptions$Mutation$InfoCompanyEdit options,
  ) => this.watchMutation(options);
}

class Mutation$InfoCompanyEdit$HookResult {
  Mutation$InfoCompanyEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InfoCompanyEdit runMutation;

  final graphql.QueryResult<Mutation$InfoCompanyEdit> result;
}

Mutation$InfoCompanyEdit$HookResult useMutation$InfoCompanyEdit([
  WidgetOptions$Mutation$InfoCompanyEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InfoCompanyEdit(),
  );
  return Mutation$InfoCompanyEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InfoCompanyEdit>
useWatchMutation$InfoCompanyEdit(
  WatchOptions$Mutation$InfoCompanyEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InfoCompanyEdit
    extends graphql.MutationOptions<Mutation$InfoCompanyEdit> {
  WidgetOptions$Mutation$InfoCompanyEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoCompanyEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoCompanyEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoCompanyEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoCompanyEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoCompanyEdit,
         parserFn: _parserFn$Mutation$InfoCompanyEdit,
       );

  final OnMutationCompleted$Mutation$InfoCompanyEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InfoCompanyEdit =
    graphql.MultiSourceResult<Mutation$InfoCompanyEdit> Function(
      Variables$Mutation$InfoCompanyEdit, {
      Object? optimisticResult,
      Mutation$InfoCompanyEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$InfoCompanyEdit =
    widgets.Widget Function(
      RunMutation$Mutation$InfoCompanyEdit,
      graphql.QueryResult<Mutation$InfoCompanyEdit>?,
    );

class Mutation$InfoCompanyEdit$Widget
    extends graphql_flutter.Mutation<Mutation$InfoCompanyEdit> {
  Mutation$InfoCompanyEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InfoCompanyEdit? options,
    required Builder$Mutation$InfoCompanyEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InfoCompanyEdit(),
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

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId({
    this.infoCompany,
    this.$__typename = 'UpdateInfoCompanyPayload',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompany = json['infoCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
      infoCompany: l$infoCompany == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
              (l$infoCompany as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany?
  infoCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompany = infoCompany;
    _resultData['infoCompany'] = l$infoCompany?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompany = infoCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoCompany, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompany = infoCompany;
    final lOther$infoCompany = other.infoCompany;
    if (l$infoCompany != lOther$infoCompany) {
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId
    on Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId instance,
    TRes Function(Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId)
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId;

  TRes call({
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany?
    infoCompany,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId _instance;

  final TRes Function(Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompany = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
      infoCompany: infoCompany == _undefined
          ? _instance.infoCompany
          : (infoCompany
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany {
    final local$infoCompany = _instance.infoCompany;
    return local$infoCompany == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
            local$infoCompany,
            (e) => call(infoCompany: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany?
    infoCompany,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany({
    required this.infoCompanyId,
    this.webPage,
    this.ceo,
    this.symbol,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'InfoCompany',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompanyId = json['infoCompanyId'];
    final l$webPage = json['webPage'];
    final l$ceo = json['ceo'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoCompanyId;

  final String? webPage;

  final String? ceo;

  final String? symbol;

  final String? remarks;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$webPage = webPage;
    _resultData['webPage'] = l$webPage;
    final l$ceo = ceo;
    _resultData['ceo'] = l$ceo;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
      l$symbol,
      l$remarks,
      l$sharedAppellationBySharedAppellationsId,
      l$infoAddressByInfoAddressId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$webPage = webPage;
    final lOther$webPage = other.webPage;
    if (l$webPage != lOther$webPage) {
      return false;
    }
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (l$ceo != lOther$ceo) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final lOther$sharedAppellationBySharedAppellationsId =
        other.sharedAppellationBySharedAppellationsId;
    if (l$sharedAppellationBySharedAppellationsId !=
        lOther$sharedAppellationBySharedAppellationsId) {
      return false;
    }
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final lOther$infoAddressByInfoAddressId = other.infoAddressByInfoAddressId;
    if (l$infoAddressByInfoAddressId != lOther$infoAddressByInfoAddressId) {
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany
    on Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
    String? remarks,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      webPage: webPage == _undefined ? _instance.webPage : (webPage as String?),
      ceo: ceo == _undefined ? _instance.ceo : (ceo as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
    this._res,
  );

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
    String? remarks,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId,
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
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$bill = json['bill'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      bill: (l$bill as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final String? address1;

  final String? address2;

  final String? bill;

  final String? phone;

  final String? faxNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31663 = iso31663;
    _resultData['iso31663'] = l$iso31663;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$bill = bill;
    _resultData['bill'] = l$bill;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$address1,
      l$address2,
      l$bill,
      l$phone,
      l$faxNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId ||
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
    final l$bill = bill;
    final lOther$bill = other.bill;
    if (l$bill != lOther$bill) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
    on
        Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId {
  CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId;

  factory CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31663: iso31663 == _undefined
          ? _instance.iso31663
          : (iso31663 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      bill: bill == _undefined ? _instance.bill : (bill as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  }) => _res;
}
