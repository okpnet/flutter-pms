import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$InfoDepartmentEdit {
  factory Variables$Mutation$InfoDepartmentEdit({
    required String infoDepartmentId,
    required String infoCompanyId,
    String? code,
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
  }) => Variables$Mutation$InfoDepartmentEdit._({
    r'infoDepartmentId': infoDepartmentId,
    r'infoCompanyId': infoCompanyId,
    if (code != null) r'code': code,
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

  Variables$Mutation$InfoDepartmentEdit._(this._$data);

  factory Variables$Mutation$InfoDepartmentEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentId = data['infoDepartmentId'];
    result$data['infoDepartmentId'] = (l$infoDepartmentId as String);
    final l$infoCompanyId = data['infoCompanyId'];
    result$data['infoCompanyId'] = (l$infoCompanyId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
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
    return Variables$Mutation$InfoDepartmentEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoDepartmentId => (_$data['infoDepartmentId'] as String);

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  String? get code => (_$data['code'] as String?);

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
    final l$infoDepartmentId = infoDepartmentId;
    result$data['infoDepartmentId'] = l$infoDepartmentId;
    final l$infoCompanyId = infoCompanyId;
    result$data['infoCompanyId'] = l$infoCompanyId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
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

  CopyWith$Variables$Mutation$InfoDepartmentEdit<
    Variables$Mutation$InfoDepartmentEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$InfoDepartmentEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InfoDepartmentEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
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
    final l$infoDepartmentId = infoDepartmentId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
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
      l$infoDepartmentId,
      l$infoCompanyId,
      _$data.containsKey('code') ? l$code : const {},
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

abstract class CopyWith$Variables$Mutation$InfoDepartmentEdit<TRes> {
  factory CopyWith$Variables$Mutation$InfoDepartmentEdit(
    Variables$Mutation$InfoDepartmentEdit instance,
    TRes Function(Variables$Mutation$InfoDepartmentEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$InfoDepartmentEdit;

  factory CopyWith$Variables$Mutation$InfoDepartmentEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InfoDepartmentEdit;

  TRes call({
    String? infoDepartmentId,
    String? infoCompanyId,
    String? code,
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

class _CopyWithImpl$Variables$Mutation$InfoDepartmentEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoDepartmentEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$InfoDepartmentEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InfoDepartmentEdit _instance;

  final TRes Function(Variables$Mutation$InfoDepartmentEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
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
    Variables$Mutation$InfoDepartmentEdit._({
      ..._instance._$data,
      if (infoDepartmentId != _undefined && infoDepartmentId != null)
        'infoDepartmentId': (infoDepartmentId as String),
      if (infoCompanyId != _undefined && infoCompanyId != null)
        'infoCompanyId': (infoCompanyId as String),
      if (code != _undefined) 'code': (code as String?),
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

class _CopyWithStubImpl$Variables$Mutation$InfoDepartmentEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoDepartmentEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InfoDepartmentEdit(this._res);

  TRes _res;

  call({
    String? infoDepartmentId,
    String? infoCompanyId,
    String? code,
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

class Mutation$InfoDepartmentEdit {
  Mutation$InfoDepartmentEdit({
    this.updateInfoDepartmentByInfoDepartmentId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InfoDepartmentEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoDepartmentByInfoDepartmentId =
        json['updateInfoDepartmentByInfoDepartmentId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit(
      updateInfoDepartmentByInfoDepartmentId:
          l$updateInfoDepartmentByInfoDepartmentId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId.fromJson(
              (l$updateInfoDepartmentByInfoDepartmentId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId?
  updateInfoDepartmentByInfoDepartmentId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoDepartmentByInfoDepartmentId =
        updateInfoDepartmentByInfoDepartmentId;
    _resultData['updateInfoDepartmentByInfoDepartmentId'] =
        l$updateInfoDepartmentByInfoDepartmentId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoDepartmentByInfoDepartmentId =
        updateInfoDepartmentByInfoDepartmentId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateInfoDepartmentByInfoDepartmentId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoDepartmentEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoDepartmentByInfoDepartmentId =
        updateInfoDepartmentByInfoDepartmentId;
    final lOther$updateInfoDepartmentByInfoDepartmentId =
        other.updateInfoDepartmentByInfoDepartmentId;
    if (l$updateInfoDepartmentByInfoDepartmentId !=
        lOther$updateInfoDepartmentByInfoDepartmentId) {
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

extension UtilityExtension$Mutation$InfoDepartmentEdit
    on Mutation$InfoDepartmentEdit {
  CopyWith$Mutation$InfoDepartmentEdit<Mutation$InfoDepartmentEdit>
  get copyWith => CopyWith$Mutation$InfoDepartmentEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$InfoDepartmentEdit<TRes> {
  factory CopyWith$Mutation$InfoDepartmentEdit(
    Mutation$InfoDepartmentEdit instance,
    TRes Function(Mutation$InfoDepartmentEdit) then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit;

  factory CopyWith$Mutation$InfoDepartmentEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InfoDepartmentEdit;

  TRes call({
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId?
    updateInfoDepartmentByInfoDepartmentId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
    TRes
  >
  get updateInfoDepartmentByInfoDepartmentId;
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit<TRes>
    implements CopyWith$Mutation$InfoDepartmentEdit<TRes> {
  _CopyWithImpl$Mutation$InfoDepartmentEdit(this._instance, this._then);

  final Mutation$InfoDepartmentEdit _instance;

  final TRes Function(Mutation$InfoDepartmentEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoDepartmentByInfoDepartmentId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit(
      updateInfoDepartmentByInfoDepartmentId:
          updateInfoDepartmentByInfoDepartmentId == _undefined
          ? _instance.updateInfoDepartmentByInfoDepartmentId
          : (updateInfoDepartmentByInfoDepartmentId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
    TRes
  >
  get updateInfoDepartmentByInfoDepartmentId {
    final local$updateInfoDepartmentByInfoDepartmentId =
        _instance.updateInfoDepartmentByInfoDepartmentId;
    return local$updateInfoDepartmentByInfoDepartmentId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
            local$updateInfoDepartmentByInfoDepartmentId,
            (e) => call(updateInfoDepartmentByInfoDepartmentId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit<TRes>
    implements CopyWith$Mutation$InfoDepartmentEdit<TRes> {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit(this._res);

  TRes _res;

  call({
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId?
    updateInfoDepartmentByInfoDepartmentId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
    TRes
  >
  get updateInfoDepartmentByInfoDepartmentId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId.stub(
        _res,
      );
}

const documentNodeMutationInfoDepartmentEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InfoDepartmentEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoDepartmentId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoCompanyId')),
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
            name: NameNode(value: 'updateInfoDepartmentByInfoDepartmentId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoDepartmentId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoDepartmentId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoDepartmentPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'infoCompanyId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoCompanyId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
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
                  name: NameNode(value: 'infoDepartment'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoDepartmentId'),
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
Mutation$InfoDepartmentEdit _parserFn$Mutation$InfoDepartmentEdit(
  Map<String, dynamic> data,
) => Mutation$InfoDepartmentEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$InfoDepartmentEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$InfoDepartmentEdit?,
    );

class Options$Mutation$InfoDepartmentEdit
    extends graphql.MutationOptions<Mutation$InfoDepartmentEdit> {
  Options$Mutation$InfoDepartmentEdit({
    String? operationName,
    required Variables$Mutation$InfoDepartmentEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoDepartmentEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoDepartmentEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoDepartmentEdit>? update,
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
                     : _parserFn$Mutation$InfoDepartmentEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoDepartmentEdit,
         parserFn: _parserFn$Mutation$InfoDepartmentEdit,
       );

  final OnMutationCompleted$Mutation$InfoDepartmentEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InfoDepartmentEdit
    extends graphql.WatchQueryOptions<Mutation$InfoDepartmentEdit> {
  WatchOptions$Mutation$InfoDepartmentEdit({
    String? operationName,
    required Variables$Mutation$InfoDepartmentEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoDepartmentEdit? typedOptimisticResult,
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
         document: documentNodeMutationInfoDepartmentEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InfoDepartmentEdit,
       );
}

extension ClientExtension$Mutation$InfoDepartmentEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InfoDepartmentEdit>>
  mutate$InfoDepartmentEdit(
    Options$Mutation$InfoDepartmentEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InfoDepartmentEdit>
  watchMutation$InfoDepartmentEdit(
    WatchOptions$Mutation$InfoDepartmentEdit options,
  ) => this.watchMutation(options);
}

class Mutation$InfoDepartmentEdit$HookResult {
  Mutation$InfoDepartmentEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InfoDepartmentEdit runMutation;

  final graphql.QueryResult<Mutation$InfoDepartmentEdit> result;
}

Mutation$InfoDepartmentEdit$HookResult useMutation$InfoDepartmentEdit([
  WidgetOptions$Mutation$InfoDepartmentEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InfoDepartmentEdit(),
  );
  return Mutation$InfoDepartmentEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InfoDepartmentEdit>
useWatchMutation$InfoDepartmentEdit(
  WatchOptions$Mutation$InfoDepartmentEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InfoDepartmentEdit
    extends graphql.MutationOptions<Mutation$InfoDepartmentEdit> {
  WidgetOptions$Mutation$InfoDepartmentEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoDepartmentEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoDepartmentEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoDepartmentEdit>? update,
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
                     : _parserFn$Mutation$InfoDepartmentEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoDepartmentEdit,
         parserFn: _parserFn$Mutation$InfoDepartmentEdit,
       );

  final OnMutationCompleted$Mutation$InfoDepartmentEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InfoDepartmentEdit =
    graphql.MultiSourceResult<Mutation$InfoDepartmentEdit> Function(
      Variables$Mutation$InfoDepartmentEdit, {
      Object? optimisticResult,
      Mutation$InfoDepartmentEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$InfoDepartmentEdit =
    widgets.Widget Function(
      RunMutation$Mutation$InfoDepartmentEdit,
      graphql.QueryResult<Mutation$InfoDepartmentEdit>?,
    );

class Mutation$InfoDepartmentEdit$Widget
    extends graphql_flutter.Mutation<Mutation$InfoDepartmentEdit> {
  Mutation$InfoDepartmentEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InfoDepartmentEdit? options,
    required Builder$Mutation$InfoDepartmentEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InfoDepartmentEdit(),
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

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId({
    this.infoDepartment,
    this.$__typename = 'UpdateInfoDepartmentPayload',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartment = json['infoDepartment'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
      infoDepartment: l$infoDepartment == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.fromJson(
              (l$infoDepartment as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment?
  infoDepartment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartment = infoDepartment;
    _resultData['infoDepartment'] = l$infoDepartment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartment = infoDepartment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoDepartment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartment = infoDepartment;
    final lOther$infoDepartment = other.infoDepartment;
    if (l$infoDepartment != lOther$infoDepartment) {
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId
    on Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId;

  TRes call({
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment?
    infoDepartment,
    String? $__typename,
  });
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
    TRes
  >
  get infoDepartment;
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
      infoDepartment: infoDepartment == _undefined
          ? _instance.infoDepartment
          : (infoDepartment
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
    TRes
  >
  get infoDepartment {
    final local$infoDepartment = _instance.infoDepartment;
    return local$infoDepartment == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
            local$infoDepartment,
            (e) => call(infoDepartment: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment?
    infoDepartment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
    TRes
  >
  get infoDepartment =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.stub(
        _res,
      );
}

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment({
    required this.infoDepartmentId,
    required this.infoCompanyId,
    required this.code,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'InfoDepartment',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
      infoDepartmentId: (l$infoDepartmentId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoDepartmentId;

  final String infoCompanyId;

  final String code;

  final String? remarks;

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$infoDepartmentId = infoDepartmentId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentId,
      l$infoCompanyId,
      l$code,
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment;

  TRes call({
    String? infoDepartmentId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
      infoDepartmentId:
          infoDepartmentId == _undefined || infoDepartmentId == null
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment(
    this._res,
  );

  TRes _res;

  call({
    String? infoDepartmentId,
    String? infoCompanyId,
    String? code,
    String? remarks,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId,
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
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId {
  Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId.fromJson(
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
    return Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
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
            is! Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId ||
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

extension UtilityExtension$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId
    on
        Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId {
  CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId;

  factory CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId;

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

class _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId,
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
    Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
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

class _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoDepartmentEdit$updateInfoDepartmentByInfoDepartmentId$infoDepartment$infoAddressByInfoAddressId(
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
