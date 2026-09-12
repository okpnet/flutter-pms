import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SupplierEdit {
  factory Variables$Mutation$SupplierEdit({
    required String mstrStakeholderId,
    String? code,
    String? controlCode,
    String? mstrShippingKindId,
    String? remarks,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    required String pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    required String nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    required String infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  }) => Variables$Mutation$SupplierEdit._({
    r'mstrStakeholderId': mstrStakeholderId,
    if (code != null) r'code': code,
    if (controlCode != null) r'controlCode': controlCode,
    if (mstrShippingKindId != null) r'mstrShippingKindId': mstrShippingKindId,
    if (remarks != null) r'remarks': remarks,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    if (nameJa != null) r'nameJa': nameJa,
    if (nameEn != null) r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    if (pronunciationJa != null) r'pronunciationJa': pronunciationJa,
    if (pronunciationEn != null) r'pronunciationEn': pronunciationEn,
    r'nicknameSharedDictionaryId': nicknameSharedDictionaryId,
    if (nicknameJa != null) r'nicknameJa': nicknameJa,
    if (nicknameEn != null) r'nicknameEn': nicknameEn,
    r'infoAddressId': infoAddressId,
    if (zipCode != null) r'zipCode': zipCode,
    if (address1 != null) r'address1': address1,
    if (address2 != null) r'address2': address2,
    if (bill != null) r'bill': bill,
    if (phone != null) r'phone': phone,
    if (faxNumber != null) r'faxNumber': faxNumber,
  });

  Variables$Mutation$SupplierEdit._(this._$data);

  factory Variables$Mutation$SupplierEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderId = data['mstrStakeholderId'];
    result$data['mstrStakeholderId'] = (l$mstrStakeholderId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    if (data.containsKey('mstrShippingKindId')) {
      final l$mstrShippingKindId = data['mstrShippingKindId'];
      result$data['mstrShippingKindId'] = (l$mstrShippingKindId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$nameSharedDictionaryId = data['nameSharedDictionaryId'];
    result$data['nameSharedDictionaryId'] =
        (l$nameSharedDictionaryId as String);
    if (data.containsKey('nameJa')) {
      final l$nameJa = data['nameJa'];
      result$data['nameJa'] = (l$nameJa as String?);
    }
    if (data.containsKey('nameEn')) {
      final l$nameEn = data['nameEn'];
      result$data['nameEn'] = (l$nameEn as String?);
    }
    final l$pronunciationSharedDictionaryId =
        data['pronunciationSharedDictionaryId'];
    result$data['pronunciationSharedDictionaryId'] =
        (l$pronunciationSharedDictionaryId as String);
    if (data.containsKey('pronunciationJa')) {
      final l$pronunciationJa = data['pronunciationJa'];
      result$data['pronunciationJa'] = (l$pronunciationJa as String?);
    }
    if (data.containsKey('pronunciationEn')) {
      final l$pronunciationEn = data['pronunciationEn'];
      result$data['pronunciationEn'] = (l$pronunciationEn as String?);
    }
    final l$nicknameSharedDictionaryId = data['nicknameSharedDictionaryId'];
    result$data['nicknameSharedDictionaryId'] =
        (l$nicknameSharedDictionaryId as String);
    if (data.containsKey('nicknameJa')) {
      final l$nicknameJa = data['nicknameJa'];
      result$data['nicknameJa'] = (l$nicknameJa as String?);
    }
    if (data.containsKey('nicknameEn')) {
      final l$nicknameEn = data['nicknameEn'];
      result$data['nicknameEn'] = (l$nicknameEn as String?);
    }
    final l$infoAddressId = data['infoAddressId'];
    result$data['infoAddressId'] = (l$infoAddressId as String);
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
    return Variables$Mutation$SupplierEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStakeholderId => (_$data['mstrStakeholderId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String? get mstrShippingKindId => (_$data['mstrShippingKindId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  String get nameSharedDictionaryId =>
      (_$data['nameSharedDictionaryId'] as String);

  String? get nameJa => (_$data['nameJa'] as String?);

  String? get nameEn => (_$data['nameEn'] as String?);

  String get pronunciationSharedDictionaryId =>
      (_$data['pronunciationSharedDictionaryId'] as String);

  String? get pronunciationJa => (_$data['pronunciationJa'] as String?);

  String? get pronunciationEn => (_$data['pronunciationEn'] as String?);

  String get nicknameSharedDictionaryId =>
      (_$data['nicknameSharedDictionaryId'] as String);

  String? get nicknameJa => (_$data['nicknameJa'] as String?);

  String? get nicknameEn => (_$data['nicknameEn'] as String?);

  String get infoAddressId => (_$data['infoAddressId'] as String);

  String? get zipCode => (_$data['zipCode'] as String?);

  String? get address1 => (_$data['address1'] as String?);

  String? get address2 => (_$data['address2'] as String?);

  String? get bill => (_$data['bill'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get faxNumber => (_$data['faxNumber'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    result$data['mstrStakeholderId'] = l$mstrStakeholderId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    if (_$data.containsKey('mstrShippingKindId')) {
      final l$mstrShippingKindId = mstrShippingKindId;
      result$data['mstrShippingKindId'] = l$mstrShippingKindId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    result$data['nameSharedDictionaryId'] = l$nameSharedDictionaryId;
    if (_$data.containsKey('nameJa')) {
      final l$nameJa = nameJa;
      result$data['nameJa'] = l$nameJa;
    }
    if (_$data.containsKey('nameEn')) {
      final l$nameEn = nameEn;
      result$data['nameEn'] = l$nameEn;
    }
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    result$data['pronunciationSharedDictionaryId'] =
        l$pronunciationSharedDictionaryId;
    if (_$data.containsKey('pronunciationJa')) {
      final l$pronunciationJa = pronunciationJa;
      result$data['pronunciationJa'] = l$pronunciationJa;
    }
    if (_$data.containsKey('pronunciationEn')) {
      final l$pronunciationEn = pronunciationEn;
      result$data['pronunciationEn'] = l$pronunciationEn;
    }
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    result$data['nicknameSharedDictionaryId'] = l$nicknameSharedDictionaryId;
    if (_$data.containsKey('nicknameJa')) {
      final l$nicknameJa = nicknameJa;
      result$data['nicknameJa'] = l$nicknameJa;
    }
    if (_$data.containsKey('nicknameEn')) {
      final l$nicknameEn = nicknameEn;
      result$data['nicknameEn'] = l$nicknameEn;
    }
    final l$infoAddressId = infoAddressId;
    result$data['infoAddressId'] = l$infoAddressId;
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

  CopyWith$Variables$Mutation$SupplierEdit<Variables$Mutation$SupplierEdit>
  get copyWith => CopyWith$Variables$Mutation$SupplierEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SupplierEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (_$data.containsKey('controlCode') !=
        other._$data.containsKey('controlCode')) {
      return false;
    }
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (_$data.containsKey('mstrShippingKindId') !=
        other._$data.containsKey('mstrShippingKindId')) {
      return false;
    }
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
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
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final lOther$nameSharedDictionaryId = other.nameSharedDictionaryId;
    if (l$nameSharedDictionaryId != lOther$nameSharedDictionaryId) {
      return false;
    }
    final l$nameJa = nameJa;
    final lOther$nameJa = other.nameJa;
    if (_$data.containsKey('nameJa') != other._$data.containsKey('nameJa')) {
      return false;
    }
    if (l$nameJa != lOther$nameJa) {
      return false;
    }
    final l$nameEn = nameEn;
    final lOther$nameEn = other.nameEn;
    if (_$data.containsKey('nameEn') != other._$data.containsKey('nameEn')) {
      return false;
    }
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
    if (_$data.containsKey('pronunciationJa') !=
        other._$data.containsKey('pronunciationJa')) {
      return false;
    }
    if (l$pronunciationJa != lOther$pronunciationJa) {
      return false;
    }
    final l$pronunciationEn = pronunciationEn;
    final lOther$pronunciationEn = other.pronunciationEn;
    if (_$data.containsKey('pronunciationEn') !=
        other._$data.containsKey('pronunciationEn')) {
      return false;
    }
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
    if (_$data.containsKey('nicknameJa') !=
        other._$data.containsKey('nicknameJa')) {
      return false;
    }
    if (l$nicknameJa != lOther$nicknameJa) {
      return false;
    }
    final l$nicknameEn = nicknameEn;
    final lOther$nicknameEn = other.nicknameEn;
    if (_$data.containsKey('nicknameEn') !=
        other._$data.containsKey('nicknameEn')) {
      return false;
    }
    if (l$nicknameEn != lOther$nicknameEn) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
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
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$remarks = remarks;
    final l$sharedAppellationsId = sharedAppellationsId;
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
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    return Object.hashAll([
      l$mstrStakeholderId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      _$data.containsKey('mstrShippingKindId')
          ? l$mstrShippingKindId
          : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      _$data.containsKey('nameJa') ? l$nameJa : const {},
      _$data.containsKey('nameEn') ? l$nameEn : const {},
      l$pronunciationSharedDictionaryId,
      _$data.containsKey('pronunciationJa') ? l$pronunciationJa : const {},
      _$data.containsKey('pronunciationEn') ? l$pronunciationEn : const {},
      l$nicknameSharedDictionaryId,
      _$data.containsKey('nicknameJa') ? l$nicknameJa : const {},
      _$data.containsKey('nicknameEn') ? l$nicknameEn : const {},
      l$infoAddressId,
      _$data.containsKey('zipCode') ? l$zipCode : const {},
      _$data.containsKey('address1') ? l$address1 : const {},
      _$data.containsKey('address2') ? l$address2 : const {},
      _$data.containsKey('bill') ? l$bill : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('faxNumber') ? l$faxNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SupplierEdit<TRes> {
  factory CopyWith$Variables$Mutation$SupplierEdit(
    Variables$Mutation$SupplierEdit instance,
    TRes Function(Variables$Mutation$SupplierEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$SupplierEdit;

  factory CopyWith$Variables$Mutation$SupplierEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SupplierEdit;

  TRes call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? mstrShippingKindId,
    String? remarks,
    String? sharedAppellationsId,
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
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  });
}

class _CopyWithImpl$Variables$Mutation$SupplierEdit<TRes>
    implements CopyWith$Variables$Mutation$SupplierEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$SupplierEdit(this._instance, this._then);

  final Variables$Mutation$SupplierEdit _instance;

  final TRes Function(Variables$Mutation$SupplierEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationsId = _undefined,
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
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
  }) => _then(
    Variables$Mutation$SupplierEdit._({
      ..._instance._$data,
      if (mstrStakeholderId != _undefined && mstrStakeholderId != null)
        'mstrStakeholderId': (mstrStakeholderId as String),
      if (code != _undefined) 'code': (code as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (mstrShippingKindId != _undefined)
        'mstrShippingKindId': (mstrShippingKindId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (nameSharedDictionaryId != _undefined &&
          nameSharedDictionaryId != null)
        'nameSharedDictionaryId': (nameSharedDictionaryId as String),
      if (nameJa != _undefined) 'nameJa': (nameJa as String?),
      if (nameEn != _undefined) 'nameEn': (nameEn as String?),
      if (pronunciationSharedDictionaryId != _undefined &&
          pronunciationSharedDictionaryId != null)
        'pronunciationSharedDictionaryId':
            (pronunciationSharedDictionaryId as String),
      if (pronunciationJa != _undefined)
        'pronunciationJa': (pronunciationJa as String?),
      if (pronunciationEn != _undefined)
        'pronunciationEn': (pronunciationEn as String?),
      if (nicknameSharedDictionaryId != _undefined &&
          nicknameSharedDictionaryId != null)
        'nicknameSharedDictionaryId': (nicknameSharedDictionaryId as String),
      if (nicknameJa != _undefined) 'nicknameJa': (nicknameJa as String?),
      if (nicknameEn != _undefined) 'nicknameEn': (nicknameEn as String?),
      if (infoAddressId != _undefined && infoAddressId != null)
        'infoAddressId': (infoAddressId as String),
      if (zipCode != _undefined) 'zipCode': (zipCode as String?),
      if (address1 != _undefined) 'address1': (address1 as String?),
      if (address2 != _undefined) 'address2': (address2 as String?),
      if (bill != _undefined) 'bill': (bill as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (faxNumber != _undefined) 'faxNumber': (faxNumber as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SupplierEdit<TRes>
    implements CopyWith$Variables$Mutation$SupplierEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SupplierEdit(this._res);

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? mstrShippingKindId,
    String? remarks,
    String? sharedAppellationsId,
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
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
  }) => _res;
}

class Mutation$SupplierEdit {
  Mutation$SupplierEdit({
    this.updateMstrStakeholderByMstrStakeholderId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SupplierEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrStakeholderByMstrStakeholderId =
        json['updateMstrStakeholderByMstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit(
      updateMstrStakeholderByMstrStakeholderId:
          l$updateMstrStakeholderByMstrStakeholderId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId.fromJson(
              (l$updateMstrStakeholderByMstrStakeholderId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId?
  updateMstrStakeholderByMstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrStakeholderByMstrStakeholderId =
        updateMstrStakeholderByMstrStakeholderId;
    _resultData['updateMstrStakeholderByMstrStakeholderId'] =
        l$updateMstrStakeholderByMstrStakeholderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrStakeholderByMstrStakeholderId =
        updateMstrStakeholderByMstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrStakeholderByMstrStakeholderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SupplierEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrStakeholderByMstrStakeholderId =
        updateMstrStakeholderByMstrStakeholderId;
    final lOther$updateMstrStakeholderByMstrStakeholderId =
        other.updateMstrStakeholderByMstrStakeholderId;
    if (l$updateMstrStakeholderByMstrStakeholderId !=
        lOther$updateMstrStakeholderByMstrStakeholderId) {
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

extension UtilityExtension$Mutation$SupplierEdit on Mutation$SupplierEdit {
  CopyWith$Mutation$SupplierEdit<Mutation$SupplierEdit> get copyWith =>
      CopyWith$Mutation$SupplierEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$SupplierEdit<TRes> {
  factory CopyWith$Mutation$SupplierEdit(
    Mutation$SupplierEdit instance,
    TRes Function(Mutation$SupplierEdit) then,
  ) = _CopyWithImpl$Mutation$SupplierEdit;

  factory CopyWith$Mutation$SupplierEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SupplierEdit;

  TRes call({
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId?
    updateMstrStakeholderByMstrStakeholderId,
    String? $__typename,
  });
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<TRes>
  get updateMstrStakeholderByMstrStakeholderId;
}

class _CopyWithImpl$Mutation$SupplierEdit<TRes>
    implements CopyWith$Mutation$SupplierEdit<TRes> {
  _CopyWithImpl$Mutation$SupplierEdit(this._instance, this._then);

  final Mutation$SupplierEdit _instance;

  final TRes Function(Mutation$SupplierEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrStakeholderByMstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit(
      updateMstrStakeholderByMstrStakeholderId:
          updateMstrStakeholderByMstrStakeholderId == _undefined
          ? _instance.updateMstrStakeholderByMstrStakeholderId
          : (updateMstrStakeholderByMstrStakeholderId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<TRes>
  get updateMstrStakeholderByMstrStakeholderId {
    final local$updateMstrStakeholderByMstrStakeholderId =
        _instance.updateMstrStakeholderByMstrStakeholderId;
    return local$updateMstrStakeholderByMstrStakeholderId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
            local$updateMstrStakeholderByMstrStakeholderId,
            (e) => call(updateMstrStakeholderByMstrStakeholderId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SupplierEdit<TRes>
    implements CopyWith$Mutation$SupplierEdit<TRes> {
  _CopyWithStubImpl$Mutation$SupplierEdit(this._res);

  TRes _res;

  call({
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId?
    updateMstrStakeholderByMstrStakeholderId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<TRes>
  get updateMstrStakeholderByMstrStakeholderId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId.stub(
        _res,
      );
}

const documentNodeMutationSupplierEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SupplierEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStakeholderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'code')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'controlCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrShippingKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
          variable: VariableNode(
            name: NameNode(value: 'nameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pronunciationEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nicknameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
            name: NameNode(value: 'updateMstrStakeholderByMstrStakeholderId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStakeholderId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrStakeholderId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStakeholderPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrShippingKindId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrShippingKindId'),
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
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nameEn',
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
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'pronunciationJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'pronunciationEn',
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
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nicknameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nicknameEn',
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
                  name: NameNode(value: 'mstrStakeholder'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderId'),
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
                        name: NameNode(value: 'controlCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrShippingKindId'),
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
                          value: 'mstrStakeholderProvisionsByMstrStakeholderId',
                        ),
                        alias: null,
                        arguments: [],
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
                                      value: 'mstrStakeholderProvisionId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'infoProvisionId'),
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
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
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
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
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
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
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
Mutation$SupplierEdit _parserFn$Mutation$SupplierEdit(
  Map<String, dynamic> data,
) => Mutation$SupplierEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$SupplierEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$SupplierEdit?);

class Options$Mutation$SupplierEdit
    extends graphql.MutationOptions<Mutation$SupplierEdit> {
  Options$Mutation$SupplierEdit({
    String? operationName,
    required Variables$Mutation$SupplierEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SupplierEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SupplierEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SupplierEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$SupplierEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSupplierEdit,
         parserFn: _parserFn$Mutation$SupplierEdit,
       );

  final OnMutationCompleted$Mutation$SupplierEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SupplierEdit
    extends graphql.WatchQueryOptions<Mutation$SupplierEdit> {
  WatchOptions$Mutation$SupplierEdit({
    String? operationName,
    required Variables$Mutation$SupplierEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SupplierEdit? typedOptimisticResult,
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
         document: documentNodeMutationSupplierEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SupplierEdit,
       );
}

extension ClientExtension$Mutation$SupplierEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SupplierEdit>> mutate$SupplierEdit(
    Options$Mutation$SupplierEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$SupplierEdit> watchMutation$SupplierEdit(
    WatchOptions$Mutation$SupplierEdit options,
  ) => this.watchMutation(options);
}

class Mutation$SupplierEdit$HookResult {
  Mutation$SupplierEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SupplierEdit runMutation;

  final graphql.QueryResult<Mutation$SupplierEdit> result;
}

Mutation$SupplierEdit$HookResult useMutation$SupplierEdit([
  WidgetOptions$Mutation$SupplierEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SupplierEdit(),
  );
  return Mutation$SupplierEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SupplierEdit> useWatchMutation$SupplierEdit(
  WatchOptions$Mutation$SupplierEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SupplierEdit
    extends graphql.MutationOptions<Mutation$SupplierEdit> {
  WidgetOptions$Mutation$SupplierEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SupplierEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SupplierEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SupplierEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$SupplierEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSupplierEdit,
         parserFn: _parserFn$Mutation$SupplierEdit,
       );

  final OnMutationCompleted$Mutation$SupplierEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SupplierEdit =
    graphql.MultiSourceResult<Mutation$SupplierEdit> Function(
      Variables$Mutation$SupplierEdit, {
      Object? optimisticResult,
      Mutation$SupplierEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$SupplierEdit =
    widgets.Widget Function(
      RunMutation$Mutation$SupplierEdit,
      graphql.QueryResult<Mutation$SupplierEdit>?,
    );

class Mutation$SupplierEdit$Widget
    extends graphql_flutter.Mutation<Mutation$SupplierEdit> {
  Mutation$SupplierEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SupplierEdit? options,
    required Builder$Mutation$SupplierEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SupplierEdit(),
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

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId({
    this.mstrStakeholder,
    this.$__typename = 'UpdateMstrStakeholderPayload',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholder = json['mstrStakeholder'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
      mstrStakeholder: l$mstrStakeholder == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.fromJson(
              (l$mstrStakeholder as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder?
  mstrStakeholder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholder = mstrStakeholder;
    _resultData['mstrStakeholder'] = l$mstrStakeholder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholder = mstrStakeholder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStakeholder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholder = mstrStakeholder;
    final lOther$mstrStakeholder = other.mstrStakeholder;
    if (l$mstrStakeholder != lOther$mstrStakeholder) {
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId
    on Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId;

  TRes call({
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder?
    mstrStakeholder,
    String? $__typename,
  });
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
    TRes
  >
  get mstrStakeholder;
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholder = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
      mstrStakeholder: mstrStakeholder == _undefined
          ? _instance.mstrStakeholder
          : (mstrStakeholder
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
    TRes
  >
  get mstrStakeholder {
    final local$mstrStakeholder = _instance.mstrStakeholder;
    return local$mstrStakeholder == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
            local$mstrStakeholder,
            (e) => call(mstrStakeholder: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder?
    mstrStakeholder,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
    TRes
  >
  get mstrStakeholder =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.stub(
        _res,
      );
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder({
    required this.mstrStakeholderId,
    required this.code,
    this.controlCode,
    this.mstrShippingKindId,
    this.remarks,
    required this.mstrStakeholderProvisionsByMstrStakeholderId,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'MstrStakeholder',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$remarks = json['remarks'];
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        json['mstrStakeholderProvisionsByMstrStakeholderId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      remarks: (l$remarks as String?),
      mstrStakeholderProvisionsByMstrStakeholderId:
          Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId.fromJson(
            (l$mstrStakeholderProvisionsByMstrStakeholderId
                as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final String code;

  final String? controlCode;

  final String? mstrShippingKindId;

  final String? remarks;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId
  mstrStakeholderProvisionsByMstrStakeholderId;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    _resultData['mstrStakeholderProvisionsByMstrStakeholderId'] =
        l$mstrStakeholderProvisionsByMstrStakeholderId.toJson();
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
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$remarks = remarks;
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$code,
      l$controlCode,
      l$mstrShippingKindId,
      l$remarks,
      l$mstrStakeholderProvisionsByMstrStakeholderId,
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    final lOther$mstrStakeholderProvisionsByMstrStakeholderId =
        other.mstrStakeholderProvisionsByMstrStakeholderId;
    if (l$mstrStakeholderProvisionsByMstrStakeholderId !=
        lOther$mstrStakeholderProvisionsByMstrStakeholderId) {
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder
    on Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder;

  TRes call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? mstrShippingKindId,
    String? remarks,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId?
    mstrStakeholderProvisionsByMstrStakeholderId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId;
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? remarks = _undefined,
    Object? mstrStakeholderProvisionsByMstrStakeholderId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      mstrStakeholderProvisionsByMstrStakeholderId:
          mstrStakeholderProvisionsByMstrStakeholderId == _undefined ||
              mstrStakeholderProvisionsByMstrStakeholderId == null
          ? _instance.mstrStakeholderProvisionsByMstrStakeholderId
          : (mstrStakeholderProvisionsByMstrStakeholderId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId {
    final local$mstrStakeholderProvisionsByMstrStakeholderId =
        _instance.mstrStakeholderProvisionsByMstrStakeholderId;
    return CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
      local$mstrStakeholderProvisionsByMstrStakeholderId,
      (e) => call(mstrStakeholderProvisionsByMstrStakeholderId: e),
    );
  }

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? mstrShippingKindId,
    String? remarks,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId?
    mstrStakeholderProvisionsByMstrStakeholderId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId.stub(
        _res,
      );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId({
    required this.nodes,
    this.$__typename = 'MstrStakeholderProvisionsConnection',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId ||
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId;

  TRes call({
    List<
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes({
    required this.mstrStakeholderProvisionId,
    required this.infoProvisionId,
    this.$__typename = 'MstrStakeholderProvision',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderProvisionId = json['mstrStakeholderProvisionId'];
    final l$infoProvisionId = json['infoProvisionId'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
      mstrStakeholderProvisionId: (l$mstrStakeholderProvisionId as String),
      infoProvisionId: (l$infoProvisionId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderProvisionId;

  final String infoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    _resultData['mstrStakeholderProvisionId'] = l$mstrStakeholderProvisionId;
    final l$infoProvisionId = infoProvisionId;
    _resultData['infoProvisionId'] = l$infoProvisionId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    final l$infoProvisionId = infoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderProvisionId,
      l$infoProvisionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    final lOther$mstrStakeholderProvisionId = other.mstrStakeholderProvisionId;
    if (l$mstrStakeholderProvisionId != lOther$mstrStakeholderProvisionId) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes;

  TRes call({
    String? mstrStakeholderProvisionId,
    String? infoProvisionId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderProvisionId = _undefined,
    Object? infoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
      mstrStakeholderProvisionId:
          mstrStakeholderProvisionId == _undefined ||
              mstrStakeholderProvisionId == null
          ? _instance.mstrStakeholderProvisionId
          : (mstrStakeholderProvisionId as String),
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderProvisionId,
    String? infoProvisionId,
    String? $__typename,
  }) => _res;
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId,
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
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId {
  Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$bill = json['bill'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
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
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
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
            is! Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
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

extension UtilityExtension$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId
    on
        Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId {
  CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId;

  factory CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
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

class _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SupplierEdit$updateMstrStakeholderByMstrStakeholderId$mstrStakeholder$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  }) => _res;
}
