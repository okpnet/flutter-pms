import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OrgResLocationEdit {
  factory Variables$Mutation$OrgResLocationEdit({
    required String mstrLocationId,
    String? code,
    String? controlCode,
    String? infoDepartmentId,
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
  }) => Variables$Mutation$OrgResLocationEdit._({
    r'mstrLocationId': mstrLocationId,
    if (code != null) r'code': code,
    if (controlCode != null) r'controlCode': controlCode,
    if (infoDepartmentId != null) r'infoDepartmentId': infoDepartmentId,
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

  Variables$Mutation$OrgResLocationEdit._(this._$data);

  factory Variables$Mutation$OrgResLocationEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrLocationId = data['mstrLocationId'];
    result$data['mstrLocationId'] = (l$mstrLocationId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    if (data.containsKey('infoDepartmentId')) {
      final l$infoDepartmentId = data['infoDepartmentId'];
      result$data['infoDepartmentId'] = (l$infoDepartmentId as String?);
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
    return Variables$Mutation$OrgResLocationEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrLocationId => (_$data['mstrLocationId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String? get infoDepartmentId => (_$data['infoDepartmentId'] as String?);

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
    final l$mstrLocationId = mstrLocationId;
    result$data['mstrLocationId'] = l$mstrLocationId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    if (_$data.containsKey('infoDepartmentId')) {
      final l$infoDepartmentId = infoDepartmentId;
      result$data['infoDepartmentId'] = l$infoDepartmentId;
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

  CopyWith$Variables$Mutation$OrgResLocationEdit<
    Variables$Mutation$OrgResLocationEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$OrgResLocationEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OrgResLocationEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
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
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (_$data.containsKey('infoDepartmentId') !=
        other._$data.containsKey('infoDepartmentId')) {
      return false;
    }
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
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
    final l$mstrLocationId = mstrLocationId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$infoDepartmentId = infoDepartmentId;
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
      l$mstrLocationId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      _$data.containsKey('infoDepartmentId') ? l$infoDepartmentId : const {},
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

abstract class CopyWith$Variables$Mutation$OrgResLocationEdit<TRes> {
  factory CopyWith$Variables$Mutation$OrgResLocationEdit(
    Variables$Mutation$OrgResLocationEdit instance,
    TRes Function(Variables$Mutation$OrgResLocationEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OrgResLocationEdit;

  factory CopyWith$Variables$Mutation$OrgResLocationEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OrgResLocationEdit;

  TRes call({
    String? mstrLocationId,
    String? code,
    String? controlCode,
    String? infoDepartmentId,
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

class _CopyWithImpl$Variables$Mutation$OrgResLocationEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResLocationEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OrgResLocationEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$OrgResLocationEdit _instance;

  final TRes Function(Variables$Mutation$OrgResLocationEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? infoDepartmentId = _undefined,
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
    Variables$Mutation$OrgResLocationEdit._({
      ..._instance._$data,
      if (mstrLocationId != _undefined && mstrLocationId != null)
        'mstrLocationId': (mstrLocationId as String),
      if (code != _undefined) 'code': (code as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (infoDepartmentId != _undefined)
        'infoDepartmentId': (infoDepartmentId as String?),
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

class _CopyWithStubImpl$Variables$Mutation$OrgResLocationEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResLocationEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OrgResLocationEdit(this._res);

  TRes _res;

  call({
    String? mstrLocationId,
    String? code,
    String? controlCode,
    String? infoDepartmentId,
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

class Mutation$OrgResLocationEdit {
  Mutation$OrgResLocationEdit({
    this.updateMstrLocationByMstrLocationId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OrgResLocationEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrLocationByMstrLocationId =
        json['updateMstrLocationByMstrLocationId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit(
      updateMstrLocationByMstrLocationId:
          l$updateMstrLocationByMstrLocationId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId.fromJson(
              (l$updateMstrLocationByMstrLocationId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId?
  updateMstrLocationByMstrLocationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrLocationByMstrLocationId =
        updateMstrLocationByMstrLocationId;
    _resultData['updateMstrLocationByMstrLocationId'] =
        l$updateMstrLocationByMstrLocationId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrLocationByMstrLocationId =
        updateMstrLocationByMstrLocationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrLocationByMstrLocationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrgResLocationEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrLocationByMstrLocationId =
        updateMstrLocationByMstrLocationId;
    final lOther$updateMstrLocationByMstrLocationId =
        other.updateMstrLocationByMstrLocationId;
    if (l$updateMstrLocationByMstrLocationId !=
        lOther$updateMstrLocationByMstrLocationId) {
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

extension UtilityExtension$Mutation$OrgResLocationEdit
    on Mutation$OrgResLocationEdit {
  CopyWith$Mutation$OrgResLocationEdit<Mutation$OrgResLocationEdit>
  get copyWith => CopyWith$Mutation$OrgResLocationEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OrgResLocationEdit<TRes> {
  factory CopyWith$Mutation$OrgResLocationEdit(
    Mutation$OrgResLocationEdit instance,
    TRes Function(Mutation$OrgResLocationEdit) then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit;

  factory CopyWith$Mutation$OrgResLocationEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OrgResLocationEdit;

  TRes call({
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId?
    updateMstrLocationByMstrLocationId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<TRes>
  get updateMstrLocationByMstrLocationId;
}

class _CopyWithImpl$Mutation$OrgResLocationEdit<TRes>
    implements CopyWith$Mutation$OrgResLocationEdit<TRes> {
  _CopyWithImpl$Mutation$OrgResLocationEdit(this._instance, this._then);

  final Mutation$OrgResLocationEdit _instance;

  final TRes Function(Mutation$OrgResLocationEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrLocationByMstrLocationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit(
      updateMstrLocationByMstrLocationId:
          updateMstrLocationByMstrLocationId == _undefined
          ? _instance.updateMstrLocationByMstrLocationId
          : (updateMstrLocationByMstrLocationId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<TRes>
  get updateMstrLocationByMstrLocationId {
    final local$updateMstrLocationByMstrLocationId =
        _instance.updateMstrLocationByMstrLocationId;
    return local$updateMstrLocationByMstrLocationId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
            local$updateMstrLocationByMstrLocationId,
            (e) => call(updateMstrLocationByMstrLocationId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResLocationEdit<TRes>
    implements CopyWith$Mutation$OrgResLocationEdit<TRes> {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit(this._res);

  TRes _res;

  call({
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId?
    updateMstrLocationByMstrLocationId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<TRes>
  get updateMstrLocationByMstrLocationId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId.stub(
        _res,
      );
}

const documentNodeMutationOrgResLocationEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OrgResLocationEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLocationId')),
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
          variable: VariableNode(name: NameNode(value: 'infoDepartmentId')),
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
            name: NameNode(value: 'updateMstrLocationByMstrLocationId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLocationId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrLocationId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLocationPatch'),
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
                            name: NameNode(value: 'infoDepartmentId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoDepartmentId'),
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
                  name: NameNode(value: 'mstrLocation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrLocationId'),
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
                        name: NameNode(value: 'infoDepartmentId'),
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
Mutation$OrgResLocationEdit _parserFn$Mutation$OrgResLocationEdit(
  Map<String, dynamic> data,
) => Mutation$OrgResLocationEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OrgResLocationEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$OrgResLocationEdit?,
    );

class Options$Mutation$OrgResLocationEdit
    extends graphql.MutationOptions<Mutation$OrgResLocationEdit> {
  Options$Mutation$OrgResLocationEdit({
    String? operationName,
    required Variables$Mutation$OrgResLocationEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResLocationEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResLocationEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResLocationEdit>? update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$OrgResLocationEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResLocationEdit,
         parserFn: _parserFn$Mutation$OrgResLocationEdit,
       );

  final OnMutationCompleted$Mutation$OrgResLocationEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OrgResLocationEdit
    extends graphql.WatchQueryOptions<Mutation$OrgResLocationEdit> {
  WatchOptions$Mutation$OrgResLocationEdit({
    String? operationName,
    required Variables$Mutation$OrgResLocationEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResLocationEdit? typedOptimisticResult,
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
         document: documentNodeMutationOrgResLocationEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OrgResLocationEdit,
       );
}

extension ClientExtension$Mutation$OrgResLocationEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OrgResLocationEdit>>
  mutate$OrgResLocationEdit(
    Options$Mutation$OrgResLocationEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OrgResLocationEdit>
  watchMutation$OrgResLocationEdit(
    WatchOptions$Mutation$OrgResLocationEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OrgResLocationEdit$HookResult {
  Mutation$OrgResLocationEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OrgResLocationEdit runMutation;

  final graphql.QueryResult<Mutation$OrgResLocationEdit> result;
}

Mutation$OrgResLocationEdit$HookResult useMutation$OrgResLocationEdit([
  WidgetOptions$Mutation$OrgResLocationEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OrgResLocationEdit(),
  );
  return Mutation$OrgResLocationEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OrgResLocationEdit>
useWatchMutation$OrgResLocationEdit(
  WatchOptions$Mutation$OrgResLocationEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OrgResLocationEdit
    extends graphql.MutationOptions<Mutation$OrgResLocationEdit> {
  WidgetOptions$Mutation$OrgResLocationEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResLocationEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResLocationEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResLocationEdit>? update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$OrgResLocationEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResLocationEdit,
         parserFn: _parserFn$Mutation$OrgResLocationEdit,
       );

  final OnMutationCompleted$Mutation$OrgResLocationEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OrgResLocationEdit =
    graphql.MultiSourceResult<Mutation$OrgResLocationEdit> Function(
      Variables$Mutation$OrgResLocationEdit, {
      Object? optimisticResult,
      Mutation$OrgResLocationEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OrgResLocationEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OrgResLocationEdit,
      graphql.QueryResult<Mutation$OrgResLocationEdit>?,
    );

class Mutation$OrgResLocationEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OrgResLocationEdit> {
  Mutation$OrgResLocationEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OrgResLocationEdit? options,
    required Builder$Mutation$OrgResLocationEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OrgResLocationEdit(),
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

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId({
    this.mstrLocation,
    this.$__typename = 'UpdateMstrLocationPayload',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocation = json['mstrLocation'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
      mstrLocation: l$mstrLocation == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.fromJson(
              (l$mstrLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation?
  mstrLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocation = mstrLocation;
    _resultData['mstrLocation'] = l$mstrLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLocation = mstrLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocation = mstrLocation;
    final lOther$mstrLocation = other.mstrLocation;
    if (l$mstrLocation != lOther$mstrLocation) {
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId
    on Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId;

  TRes call({
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation?
    mstrLocation,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
    TRes
  >
  get mstrLocation;
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
      mstrLocation: mstrLocation == _undefined
          ? _instance.mstrLocation
          : (mstrLocation
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
    TRes
  >
  get mstrLocation {
    final local$mstrLocation = _instance.mstrLocation;
    return local$mstrLocation == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
            local$mstrLocation,
            (e) => call(mstrLocation: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation?
    mstrLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
    TRes
  >
  get mstrLocation =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.stub(
        _res,
      );
}

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation({
    required this.mstrLocationId,
    this.code,
    this.controlCode,
    this.infoDepartmentId,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'MstrLocation',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationId = json['mstrLocationId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
      mstrLocationId: (l$mstrLocationId as String),
      code: (l$code as String?),
      controlCode: (l$controlCode as String?),
      infoDepartmentId: (l$infoDepartmentId as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLocationId;

  final String? code;

  final String? controlCode;

  final String? infoDepartmentId;

  final String? remarks;

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationId = mstrLocationId;
    _resultData['mstrLocationId'] = l$mstrLocationId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
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
    final l$mstrLocationId = mstrLocationId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$infoDepartmentId = infoDepartmentId;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationId,
      l$code,
      l$controlCode,
      l$infoDepartmentId,
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
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
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation
    on Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation;

  TRes call({
    String? mstrLocationId,
    String? code,
    String? controlCode,
    String? infoDepartmentId,
    String? remarks,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? infoDepartmentId = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
      mstrLocationId: mstrLocationId == _undefined || mstrLocationId == null
          ? _instance.mstrLocationId
          : (mstrLocationId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      infoDepartmentId: infoDepartmentId == _undefined
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLocationId,
    String? code,
    String? controlCode,
    String? infoDepartmentId,
    String? remarks,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId
    on
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId,
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
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId {
  Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId.fromJson(
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
    return Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
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
            is! Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId ||
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

extension UtilityExtension$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId
    on
        Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId {
  CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId;

  factory CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId;

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

class _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId,
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
    Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
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

class _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResLocationEdit$updateMstrLocationByMstrLocationId$mstrLocation$infoAddressByInfoAddressId(
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
