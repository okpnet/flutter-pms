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
    String? remarks,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    required String pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    required String infoAddressId,
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
    if (remarks != null) r'remarks': remarks,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    if (nameJa != null) r'nameJa': nameJa,
    if (nameEn != null) r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    if (pronunciationJa != null) r'pronunciationJa': pronunciationJa,
    if (pronunciationEn != null) r'pronunciationEn': pronunciationEn,
    r'infoAddressId': infoAddressId,
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
    return Variables$Mutation$InfoCompanyEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  String? get webPage => (_$data['webPage'] as String?);

  String? get ceo => (_$data['ceo'] as String?);

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

  String get infoAddressId => (_$data['infoAddressId'] as String);

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
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$remarks = remarks;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final l$nameJa = nameJa;
    final l$nameEn = nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    final l$infoAddressId = infoAddressId;
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
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      _$data.containsKey('nameJa') ? l$nameJa : const {},
      _$data.containsKey('nameEn') ? l$nameEn : const {},
      l$pronunciationSharedDictionaryId,
      _$data.containsKey('pronunciationJa') ? l$pronunciationJa : const {},
      _$data.containsKey('pronunciationEn') ? l$pronunciationEn : const {},
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
    String? remarks,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? infoAddressId,
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
    Object? remarks = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? nameSharedDictionaryId = _undefined,
    Object? nameJa = _undefined,
    Object? nameEn = _undefined,
    Object? pronunciationSharedDictionaryId = _undefined,
    Object? pronunciationJa = _undefined,
    Object? pronunciationEn = _undefined,
    Object? infoAddressId = _undefined,
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

class _CopyWithStubImpl$Variables$Mutation$InfoCompanyEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoCompanyEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InfoCompanyEdit(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? remarks,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? infoAddressId,
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
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
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
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
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
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
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
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
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
    String? ja,
    String? en,
    String? $__typename,
  });
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
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
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
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
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
    String? ja,
    String? en,
    String? $__typename,
  });
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
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
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
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId {
  Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId({
    required this.infoAddressId,
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
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$bill = json['bill'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
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
            is! Mutation$InfoCompanyEdit$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId ||
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
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  }) => _res;
}
