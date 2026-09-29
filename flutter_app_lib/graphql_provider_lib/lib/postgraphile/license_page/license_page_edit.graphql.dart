import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$LicensePageEdit {
  factory Variables$Mutation$LicensePageEdit({
    required String mstrLicenseId,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Input$IntervalInput? updateInterval,
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
  }) => Variables$Mutation$LicensePageEdit._({
    r'mstrLicenseId': mstrLicenseId,
    if (detail != null) r'detail': detail,
    if (publicLicense != null) r'publicLicense': publicLicense,
    if (customerLicense != null) r'customerLicense': customerLicense,
    if (organizationLicense != null)
      r'organizationLicense': organizationLicense,
    if (updateInterval != null) r'updateInterval': updateInterval,
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
  });

  Variables$Mutation$LicensePageEdit._(this._$data);

  factory Variables$Mutation$LicensePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrLicenseId = data['mstrLicenseId'];
    result$data['mstrLicenseId'] = (l$mstrLicenseId as String);
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = (l$detail as String?);
    }
    if (data.containsKey('publicLicense')) {
      final l$publicLicense = data['publicLicense'];
      result$data['publicLicense'] = (l$publicLicense as bool?);
    }
    if (data.containsKey('customerLicense')) {
      final l$customerLicense = data['customerLicense'];
      result$data['customerLicense'] = (l$customerLicense as bool?);
    }
    if (data.containsKey('organizationLicense')) {
      final l$organizationLicense = data['organizationLicense'];
      result$data['organizationLicense'] = (l$organizationLicense as bool?);
    }
    if (data.containsKey('updateInterval')) {
      final l$updateInterval = data['updateInterval'];
      result$data['updateInterval'] = l$updateInterval == null
          ? null
          : Input$IntervalInput.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            );
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
    return Variables$Mutation$LicensePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrLicenseId => (_$data['mstrLicenseId'] as String);

  String? get detail => (_$data['detail'] as String?);

  bool? get publicLicense => (_$data['publicLicense'] as bool?);

  bool? get customerLicense => (_$data['customerLicense'] as bool?);

  bool? get organizationLicense => (_$data['organizationLicense'] as bool?);

  Input$IntervalInput? get updateInterval =>
      (_$data['updateInterval'] as Input$IntervalInput?);

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

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    result$data['mstrLicenseId'] = l$mstrLicenseId;
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail;
    }
    if (_$data.containsKey('publicLicense')) {
      final l$publicLicense = publicLicense;
      result$data['publicLicense'] = l$publicLicense;
    }
    if (_$data.containsKey('customerLicense')) {
      final l$customerLicense = customerLicense;
      result$data['customerLicense'] = l$customerLicense;
    }
    if (_$data.containsKey('organizationLicense')) {
      final l$organizationLicense = organizationLicense;
      result$data['organizationLicense'] = l$organizationLicense;
    }
    if (_$data.containsKey('updateInterval')) {
      final l$updateInterval = updateInterval;
      result$data['updateInterval'] = l$updateInterval?.toJson();
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
    return result$data;
  }

  CopyWith$Variables$Mutation$LicensePageEdit<
    Variables$Mutation$LicensePageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$LicensePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$LicensePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (_$data.containsKey('detail') != other._$data.containsKey('detail')) {
      return false;
    }
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$publicLicense = publicLicense;
    final lOther$publicLicense = other.publicLicense;
    if (_$data.containsKey('publicLicense') !=
        other._$data.containsKey('publicLicense')) {
      return false;
    }
    if (l$publicLicense != lOther$publicLicense) {
      return false;
    }
    final l$customerLicense = customerLicense;
    final lOther$customerLicense = other.customerLicense;
    if (_$data.containsKey('customerLicense') !=
        other._$data.containsKey('customerLicense')) {
      return false;
    }
    if (l$customerLicense != lOther$customerLicense) {
      return false;
    }
    final l$organizationLicense = organizationLicense;
    final lOther$organizationLicense = other.organizationLicense;
    if (_$data.containsKey('organizationLicense') !=
        other._$data.containsKey('organizationLicense')) {
      return false;
    }
    if (l$organizationLicense != lOther$organizationLicense) {
      return false;
    }
    final l$updateInterval = updateInterval;
    final lOther$updateInterval = other.updateInterval;
    if (_$data.containsKey('updateInterval') !=
        other._$data.containsKey('updateInterval')) {
      return false;
    }
    if (l$updateInterval != lOther$updateInterval) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrLicenseId = mstrLicenseId;
    final l$detail = detail;
    final l$publicLicense = publicLicense;
    final l$customerLicense = customerLicense;
    final l$organizationLicense = organizationLicense;
    final l$updateInterval = updateInterval;
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
    return Object.hashAll([
      l$mstrLicenseId,
      _$data.containsKey('detail') ? l$detail : const {},
      _$data.containsKey('publicLicense') ? l$publicLicense : const {},
      _$data.containsKey('customerLicense') ? l$customerLicense : const {},
      _$data.containsKey('organizationLicense')
          ? l$organizationLicense
          : const {},
      _$data.containsKey('updateInterval') ? l$updateInterval : const {},
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
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$LicensePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$LicensePageEdit(
    Variables$Mutation$LicensePageEdit instance,
    TRes Function(Variables$Mutation$LicensePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$LicensePageEdit;

  factory CopyWith$Variables$Mutation$LicensePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LicensePageEdit;

  TRes call({
    String? mstrLicenseId,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Input$IntervalInput? updateInterval,
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
  });
}

class _CopyWithImpl$Variables$Mutation$LicensePageEdit<TRes>
    implements CopyWith$Variables$Mutation$LicensePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$LicensePageEdit(this._instance, this._then);

  final Variables$Mutation$LicensePageEdit _instance;

  final TRes Function(Variables$Mutation$LicensePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
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
  }) => _then(
    Variables$Mutation$LicensePageEdit._({
      ..._instance._$data,
      if (mstrLicenseId != _undefined && mstrLicenseId != null)
        'mstrLicenseId': (mstrLicenseId as String),
      if (detail != _undefined) 'detail': (detail as String?),
      if (publicLicense != _undefined)
        'publicLicense': (publicLicense as bool?),
      if (customerLicense != _undefined)
        'customerLicense': (customerLicense as bool?),
      if (organizationLicense != _undefined)
        'organizationLicense': (organizationLicense as bool?),
      if (updateInterval != _undefined)
        'updateInterval': (updateInterval as Input$IntervalInput?),
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
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$LicensePageEdit<TRes>
    implements CopyWith$Variables$Mutation$LicensePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LicensePageEdit(this._res);

  TRes _res;

  call({
    String? mstrLicenseId,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Input$IntervalInput? updateInterval,
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
  }) => _res;
}

class Mutation$LicensePageEdit {
  Mutation$LicensePageEdit({
    this.updateMstrLicenseByMstrLicenseId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LicensePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrLicenseByMstrLicenseId =
        json['updateMstrLicenseByMstrLicenseId'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit(
      updateMstrLicenseByMstrLicenseId:
          l$updateMstrLicenseByMstrLicenseId == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId.fromJson(
              (l$updateMstrLicenseByMstrLicenseId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId?
  updateMstrLicenseByMstrLicenseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrLicenseByMstrLicenseId = updateMstrLicenseByMstrLicenseId;
    _resultData['updateMstrLicenseByMstrLicenseId'] =
        l$updateMstrLicenseByMstrLicenseId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrLicenseByMstrLicenseId = updateMstrLicenseByMstrLicenseId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMstrLicenseByMstrLicenseId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$LicensePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrLicenseByMstrLicenseId = updateMstrLicenseByMstrLicenseId;
    final lOther$updateMstrLicenseByMstrLicenseId =
        other.updateMstrLicenseByMstrLicenseId;
    if (l$updateMstrLicenseByMstrLicenseId !=
        lOther$updateMstrLicenseByMstrLicenseId) {
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

extension UtilityExtension$Mutation$LicensePageEdit
    on Mutation$LicensePageEdit {
  CopyWith$Mutation$LicensePageEdit<Mutation$LicensePageEdit> get copyWith =>
      CopyWith$Mutation$LicensePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$LicensePageEdit<TRes> {
  factory CopyWith$Mutation$LicensePageEdit(
    Mutation$LicensePageEdit instance,
    TRes Function(Mutation$LicensePageEdit) then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit;

  factory CopyWith$Mutation$LicensePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LicensePageEdit;

  TRes call({
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId?
    updateMstrLicenseByMstrLicenseId,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<TRes>
  get updateMstrLicenseByMstrLicenseId;
}

class _CopyWithImpl$Mutation$LicensePageEdit<TRes>
    implements CopyWith$Mutation$LicensePageEdit<TRes> {
  _CopyWithImpl$Mutation$LicensePageEdit(this._instance, this._then);

  final Mutation$LicensePageEdit _instance;

  final TRes Function(Mutation$LicensePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrLicenseByMstrLicenseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit(
      updateMstrLicenseByMstrLicenseId:
          updateMstrLicenseByMstrLicenseId == _undefined
          ? _instance.updateMstrLicenseByMstrLicenseId
          : (updateMstrLicenseByMstrLicenseId
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<TRes>
  get updateMstrLicenseByMstrLicenseId {
    final local$updateMstrLicenseByMstrLicenseId =
        _instance.updateMstrLicenseByMstrLicenseId;
    return local$updateMstrLicenseByMstrLicenseId == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
            local$updateMstrLicenseByMstrLicenseId,
            (e) => call(updateMstrLicenseByMstrLicenseId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit<TRes>
    implements CopyWith$Mutation$LicensePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$LicensePageEdit(this._res);

  TRes _res;

  call({
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId?
    updateMstrLicenseByMstrLicenseId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<TRes>
  get updateMstrLicenseByMstrLicenseId =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId.stub(
        _res,
      );
}

const documentNodeMutationLicensePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'LicensePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLicenseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detail')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'publicLicense')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'customerLicense')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'organizationLicense')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'updateInterval')),
          type: NamedTypeNode(
            name: NameNode(value: 'IntervalInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrLicenseByMstrLicenseId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLicenseId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrLicenseId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLicensePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'detail'),
                            value: VariableNode(
                              name: NameNode(value: 'detail'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'publicLicense'),
                            value: VariableNode(
                              name: NameNode(value: 'publicLicense'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'customerLicense'),
                            value: VariableNode(
                              name: NameNode(value: 'customerLicense'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'organizationLicense'),
                            value: VariableNode(
                              name: NameNode(value: 'organizationLicense'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'updateInterval'),
                            value: VariableNode(
                              name: NameNode(value: 'updateInterval'),
                            ),
                          ),
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
                  name: NameNode(value: 'mstrLicense'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrLicenseId'),
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
                        name: NameNode(value: 'detail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publicLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'customerLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'organizationLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'updateInterval'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'years'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'months'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'days'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'hours'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'minutes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'seconds'),
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
Mutation$LicensePageEdit _parserFn$Mutation$LicensePageEdit(
  Map<String, dynamic> data,
) => Mutation$LicensePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$LicensePageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$LicensePageEdit?);

class Options$Mutation$LicensePageEdit
    extends graphql.MutationOptions<Mutation$LicensePageEdit> {
  Options$Mutation$LicensePageEdit({
    String? operationName,
    required Variables$Mutation$LicensePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LicensePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LicensePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$LicensePageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$LicensePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationLicensePageEdit,
         parserFn: _parserFn$Mutation$LicensePageEdit,
       );

  final OnMutationCompleted$Mutation$LicensePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$LicensePageEdit
    extends graphql.WatchQueryOptions<Mutation$LicensePageEdit> {
  WatchOptions$Mutation$LicensePageEdit({
    String? operationName,
    required Variables$Mutation$LicensePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LicensePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationLicensePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$LicensePageEdit,
       );
}

extension ClientExtension$Mutation$LicensePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LicensePageEdit>> mutate$LicensePageEdit(
    Options$Mutation$LicensePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$LicensePageEdit>
  watchMutation$LicensePageEdit(
    WatchOptions$Mutation$LicensePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$LicensePageEdit$HookResult {
  Mutation$LicensePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$LicensePageEdit runMutation;

  final graphql.QueryResult<Mutation$LicensePageEdit> result;
}

Mutation$LicensePageEdit$HookResult useMutation$LicensePageEdit([
  WidgetOptions$Mutation$LicensePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$LicensePageEdit(),
  );
  return Mutation$LicensePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LicensePageEdit>
useWatchMutation$LicensePageEdit(
  WatchOptions$Mutation$LicensePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LicensePageEdit
    extends graphql.MutationOptions<Mutation$LicensePageEdit> {
  WidgetOptions$Mutation$LicensePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LicensePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LicensePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$LicensePageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$LicensePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationLicensePageEdit,
         parserFn: _parserFn$Mutation$LicensePageEdit,
       );

  final OnMutationCompleted$Mutation$LicensePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$LicensePageEdit =
    graphql.MultiSourceResult<Mutation$LicensePageEdit> Function(
      Variables$Mutation$LicensePageEdit, {
      Object? optimisticResult,
      Mutation$LicensePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$LicensePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$LicensePageEdit,
      graphql.QueryResult<Mutation$LicensePageEdit>?,
    );

class Mutation$LicensePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$LicensePageEdit> {
  Mutation$LicensePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LicensePageEdit? options,
    required Builder$Mutation$LicensePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$LicensePageEdit(),
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

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId({
    this.mstrLicense,
    this.$__typename = 'UpdateMstrLicensePayload',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicense = json['mstrLicense'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
      mstrLicense: l$mstrLicense == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.fromJson(
              (l$mstrLicense as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense?
  mstrLicense;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicense = mstrLicense;
    _resultData['mstrLicense'] = l$mstrLicense?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLicense = mstrLicense;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrLicense, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicense = mstrLicense;
    final lOther$mstrLicense = other.mstrLicense;
    if (l$mstrLicense != lOther$mstrLicense) {
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId
    on Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId instance,
    TRes Function(Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId)
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId;

  TRes call({
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense?
    mstrLicense,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
    TRes
  >
  get mstrLicense;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId _instance;

  final TRes Function(Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicense = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
      mstrLicense: mstrLicense == _undefined
          ? _instance.mstrLicense
          : (mstrLicense
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
    TRes
  >
  get mstrLicense {
    final local$mstrLicense = _instance.mstrLicense;
    return local$mstrLicense == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
            local$mstrLicense,
            (e) => call(mstrLicense: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense?
    mstrLicense,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
    TRes
  >
  get mstrLicense =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense({
    required this.mstrLicenseId,
    this.code,
    this.detail,
    this.publicLicense,
    this.customerLicense,
    this.organizationLicense,
    this.updateInterval,
    this.remarks,
    this.labels,
    this.$__typename = 'MstrLicense',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$publicLicense = json['publicLicense'];
    final l$customerLicense = json['customerLicense'];
    final l$organizationLicense = json['organizationLicense'];
    final l$updateInterval = json['updateInterval'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLicenseId;

  final String? code;

  final String? detail;

  final bool? publicLicense;

  final bool? customerLicense;

  final bool? organizationLicense;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval?
  updateInterval;

  final String? remarks;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$publicLicense = publicLicense;
    _resultData['publicLicense'] = l$publicLicense;
    final l$customerLicense = customerLicense;
    _resultData['customerLicense'] = l$customerLicense;
    final l$organizationLicense = organizationLicense;
    _resultData['organizationLicense'] = l$organizationLicense;
    final l$updateInterval = updateInterval;
    _resultData['updateInterval'] = l$updateInterval?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLicenseId = mstrLicenseId;
    final l$code = code;
    final l$detail = detail;
    final l$publicLicense = publicLicense;
    final l$customerLicense = customerLicense;
    final l$organizationLicense = organizationLicense;
    final l$updateInterval = updateInterval;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLicenseId,
      l$code,
      l$detail,
      l$publicLicense,
      l$customerLicense,
      l$organizationLicense,
      l$updateInterval,
      l$remarks,
      l$labels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$publicLicense = publicLicense;
    final lOther$publicLicense = other.publicLicense;
    if (l$publicLicense != lOther$publicLicense) {
      return false;
    }
    final l$customerLicense = customerLicense;
    final lOther$customerLicense = other.customerLicense;
    if (l$customerLicense != lOther$customerLicense) {
      return false;
    }
    final l$organizationLicense = organizationLicense;
    final lOther$organizationLicense = other.organizationLicense;
    if (l$organizationLicense != lOther$organizationLicense) {
      return false;
    }
    final l$updateInterval = updateInterval;
    final lOther$updateInterval = other.updateInterval;
    if (l$updateInterval != lOther$updateInterval) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense
    on Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval?
    updateInterval,
    String? remarks,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
    TRes
  >
  get updateInterval;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      publicLicense: publicLicense == _undefined
          ? _instance.publicLicense
          : (publicLicense as bool?),
      customerLicense: customerLicense == _undefined
          ? _instance.customerLicense
          : (customerLicense as bool?),
      organizationLicense: organizationLicense == _undefined
          ? _instance.organizationLicense
          : (organizationLicense as bool?),
      updateInterval: updateInterval == _undefined
          ? _instance.updateInterval
          : (updateInterval
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
    TRes
  >
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval?
    updateInterval,
    String? remarks,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
    TRes
  >
  get updateInterval =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
      years: (l$years as int?),
      months: (l$months as int?),
      days: (l$days as int?),
      hours: (l$hours as int?),
      minutes: (l$minutes as int?),
      seconds: (l$seconds as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? years;

  final int? months;

  final int? days;

  final int? hours;

  final int? minutes;

  final double? seconds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$years = years;
    _resultData['years'] = l$years;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$years = years;
    final l$months = months;
    final l$days = days;
    final l$hours = hours;
    final l$minutes = minutes;
    final l$seconds = seconds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$years,
      l$months,
      l$days,
      l$hours,
      l$minutes,
      l$seconds,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval;

  TRes call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? years = _undefined,
    Object? months = _undefined,
    Object? days = _undefined,
    Object? hours = _undefined,
    Object? minutes = _undefined,
    Object? seconds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
      years: years == _undefined ? _instance.years : (years as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$updateInterval(
    this._res,
  );

  TRes _res;

  call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  }) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels.fromJson(
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
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels
    on Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels,
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
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LicensePageEdit$updateMstrLicenseByMstrLicenseId$mstrLicense$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
