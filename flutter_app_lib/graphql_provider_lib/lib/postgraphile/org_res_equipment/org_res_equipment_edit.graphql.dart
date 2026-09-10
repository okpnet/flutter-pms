import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OrgResEquipmentEdit {
  factory Variables$Mutation$OrgResEquipmentEdit({
    required String mstrEquipmentId,
    String? mstrEquipmentCategoryId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? mstrLocationId,
    String? remarks,
    required String mstrItemId,
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
  }) => Variables$Mutation$OrgResEquipmentEdit._({
    r'mstrEquipmentId': mstrEquipmentId,
    if (mstrEquipmentCategoryId != null)
      r'mstrEquipmentCategoryId': mstrEquipmentCategoryId,
    if (code != null) r'code': code,
    if (controlCode != null) r'controlCode': controlCode,
    if (labelCode != null) r'labelCode': labelCode,
    if (mstrLocationId != null) r'mstrLocationId': mstrLocationId,
    if (remarks != null) r'remarks': remarks,
    r'mstrItemId': mstrItemId,
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
  });

  Variables$Mutation$OrgResEquipmentEdit._(this._$data);

  factory Variables$Mutation$OrgResEquipmentEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentId = data['mstrEquipmentId'];
    result$data['mstrEquipmentId'] = (l$mstrEquipmentId as String);
    if (data.containsKey('mstrEquipmentCategoryId')) {
      final l$mstrEquipmentCategoryId = data['mstrEquipmentCategoryId'];
      result$data['mstrEquipmentCategoryId'] =
          (l$mstrEquipmentCategoryId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    if (data.containsKey('labelCode')) {
      final l$labelCode = data['labelCode'];
      result$data['labelCode'] = (l$labelCode as String?);
    }
    if (data.containsKey('mstrLocationId')) {
      final l$mstrLocationId = data['mstrLocationId'];
      result$data['mstrLocationId'] = (l$mstrLocationId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$mstrItemId = data['mstrItemId'];
    result$data['mstrItemId'] = (l$mstrItemId as String);
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
    return Variables$Mutation$OrgResEquipmentEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrEquipmentId => (_$data['mstrEquipmentId'] as String);

  String? get mstrEquipmentCategoryId =>
      (_$data['mstrEquipmentCategoryId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String? get labelCode => (_$data['labelCode'] as String?);

  String? get mstrLocationId => (_$data['mstrLocationId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get mstrItemId => (_$data['mstrItemId'] as String);

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

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentId = mstrEquipmentId;
    result$data['mstrEquipmentId'] = l$mstrEquipmentId;
    if (_$data.containsKey('mstrEquipmentCategoryId')) {
      final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
      result$data['mstrEquipmentCategoryId'] = l$mstrEquipmentCategoryId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    if (_$data.containsKey('labelCode')) {
      final l$labelCode = labelCode;
      result$data['labelCode'] = l$labelCode;
    }
    if (_$data.containsKey('mstrLocationId')) {
      final l$mstrLocationId = mstrLocationId;
      result$data['mstrLocationId'] = l$mstrLocationId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$mstrItemId = mstrItemId;
    result$data['mstrItemId'] = l$mstrItemId;
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
    return result$data;
  }

  CopyWith$Variables$Mutation$OrgResEquipmentEdit<
    Variables$Mutation$OrgResEquipmentEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$OrgResEquipmentEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OrgResEquipmentEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
      return false;
    }
    final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
    final lOther$mstrEquipmentCategoryId = other.mstrEquipmentCategoryId;
    if (_$data.containsKey('mstrEquipmentCategoryId') !=
        other._$data.containsKey('mstrEquipmentCategoryId')) {
      return false;
    }
    if (l$mstrEquipmentCategoryId != lOther$mstrEquipmentCategoryId) {
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
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (_$data.containsKey('labelCode') !=
        other._$data.containsKey('labelCode')) {
      return false;
    }
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (_$data.containsKey('mstrLocationId') !=
        other._$data.containsKey('mstrLocationId')) {
      return false;
    }
    if (l$mstrLocationId != lOther$mstrLocationId) {
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
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labelCode = labelCode;
    final l$mstrLocationId = mstrLocationId;
    final l$remarks = remarks;
    final l$mstrItemId = mstrItemId;
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
    return Object.hashAll([
      l$mstrEquipmentId,
      _$data.containsKey('mstrEquipmentCategoryId')
          ? l$mstrEquipmentCategoryId
          : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      _$data.containsKey('labelCode') ? l$labelCode : const {},
      _$data.containsKey('mstrLocationId') ? l$mstrLocationId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$mstrItemId,
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
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$OrgResEquipmentEdit<TRes> {
  factory CopyWith$Variables$Mutation$OrgResEquipmentEdit(
    Variables$Mutation$OrgResEquipmentEdit instance,
    TRes Function(Variables$Mutation$OrgResEquipmentEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OrgResEquipmentEdit;

  factory CopyWith$Variables$Mutation$OrgResEquipmentEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentEdit;

  TRes call({
    String? mstrEquipmentId,
    String? mstrEquipmentCategoryId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? mstrLocationId,
    String? remarks,
    String? mstrItemId,
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
  });
}

class _CopyWithImpl$Variables$Mutation$OrgResEquipmentEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResEquipmentEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OrgResEquipmentEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$OrgResEquipmentEdit _instance;

  final TRes Function(Variables$Mutation$OrgResEquipmentEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentId = _undefined,
    Object? mstrEquipmentCategoryId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labelCode = _undefined,
    Object? mstrLocationId = _undefined,
    Object? remarks = _undefined,
    Object? mstrItemId = _undefined,
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
  }) => _then(
    Variables$Mutation$OrgResEquipmentEdit._({
      ..._instance._$data,
      if (mstrEquipmentId != _undefined && mstrEquipmentId != null)
        'mstrEquipmentId': (mstrEquipmentId as String),
      if (mstrEquipmentCategoryId != _undefined)
        'mstrEquipmentCategoryId': (mstrEquipmentCategoryId as String?),
      if (code != _undefined) 'code': (code as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (labelCode != _undefined) 'labelCode': (labelCode as String?),
      if (mstrLocationId != _undefined)
        'mstrLocationId': (mstrLocationId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (mstrItemId != _undefined && mstrItemId != null)
        'mstrItemId': (mstrItemId as String),
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
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResEquipmentEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentEdit(this._res);

  TRes _res;

  call({
    String? mstrEquipmentId,
    String? mstrEquipmentCategoryId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? mstrLocationId,
    String? remarks,
    String? mstrItemId,
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
  }) => _res;
}

class Mutation$OrgResEquipmentEdit {
  Mutation$OrgResEquipmentEdit({
    this.updateMstrEquipmentByMstrEquipmentId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OrgResEquipmentEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrEquipmentByMstrEquipmentId =
        json['updateMstrEquipmentByMstrEquipmentId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit(
      updateMstrEquipmentByMstrEquipmentId:
          l$updateMstrEquipmentByMstrEquipmentId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId.fromJson(
              (l$updateMstrEquipmentByMstrEquipmentId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId?
  updateMstrEquipmentByMstrEquipmentId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrEquipmentByMstrEquipmentId =
        updateMstrEquipmentByMstrEquipmentId;
    _resultData['updateMstrEquipmentByMstrEquipmentId'] =
        l$updateMstrEquipmentByMstrEquipmentId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrEquipmentByMstrEquipmentId =
        updateMstrEquipmentByMstrEquipmentId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrEquipmentByMstrEquipmentId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrgResEquipmentEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrEquipmentByMstrEquipmentId =
        updateMstrEquipmentByMstrEquipmentId;
    final lOther$updateMstrEquipmentByMstrEquipmentId =
        other.updateMstrEquipmentByMstrEquipmentId;
    if (l$updateMstrEquipmentByMstrEquipmentId !=
        lOther$updateMstrEquipmentByMstrEquipmentId) {
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit
    on Mutation$OrgResEquipmentEdit {
  CopyWith$Mutation$OrgResEquipmentEdit<Mutation$OrgResEquipmentEdit>
  get copyWith => CopyWith$Mutation$OrgResEquipmentEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit<TRes> {
  factory CopyWith$Mutation$OrgResEquipmentEdit(
    Mutation$OrgResEquipmentEdit instance,
    TRes Function(Mutation$OrgResEquipmentEdit) then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit;

  factory CopyWith$Mutation$OrgResEquipmentEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OrgResEquipmentEdit;

  TRes call({
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId?
    updateMstrEquipmentByMstrEquipmentId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
    TRes
  >
  get updateMstrEquipmentByMstrEquipmentId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit<TRes>
    implements CopyWith$Mutation$OrgResEquipmentEdit<TRes> {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit(this._instance, this._then);

  final Mutation$OrgResEquipmentEdit _instance;

  final TRes Function(Mutation$OrgResEquipmentEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrEquipmentByMstrEquipmentId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit(
      updateMstrEquipmentByMstrEquipmentId:
          updateMstrEquipmentByMstrEquipmentId == _undefined
          ? _instance.updateMstrEquipmentByMstrEquipmentId
          : (updateMstrEquipmentByMstrEquipmentId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
    TRes
  >
  get updateMstrEquipmentByMstrEquipmentId {
    final local$updateMstrEquipmentByMstrEquipmentId =
        _instance.updateMstrEquipmentByMstrEquipmentId;
    return local$updateMstrEquipmentByMstrEquipmentId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
            local$updateMstrEquipmentByMstrEquipmentId,
            (e) => call(updateMstrEquipmentByMstrEquipmentId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit<TRes>
    implements CopyWith$Mutation$OrgResEquipmentEdit<TRes> {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit(this._res);

  TRes _res;

  call({
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId?
    updateMstrEquipmentByMstrEquipmentId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
    TRes
  >
  get updateMstrEquipmentByMstrEquipmentId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId.stub(
        _res,
      );
}

const documentNodeMutationOrgResEquipmentEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OrgResEquipmentEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrEquipmentId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrEquipmentCategoryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
          variable: VariableNode(name: NameNode(value: 'labelCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLocationId')),
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
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrEquipmentByMstrEquipmentId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrEquipmentId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrEquipmentId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrEquipmentPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrEquipmentCategoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrEquipmentCategoryId'),
                            ),
                          ),
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
                            name: NameNode(value: 'labelCode'),
                            value: VariableNode(
                              name: NameNode(value: 'labelCode'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrLocationId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrLocationId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemToMstrItemId'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'updateByMstrItemId'),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'mstrItemId'),
                                        value: VariableNode(
                                          name: NameNode(value: 'mstrItemId'),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(value: 'mstrItemPatch'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedAppellationToSharedAppellationsId',
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
                                                                  'sharedAppellationsId',
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
                                                                                value: 'nameSharedDictionaryId',
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
                                                                                    value: 'ja',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'nameJa',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'en',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'nameEn',
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
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'pronunciationSharedDictionaryId',
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
                                                                                    value: 'ja',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'pronunciationJa',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'en',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'pronunciationEn',
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
                                                                              value: 'sharedDictionaryId',
                                                                            ),
                                                                            value: VariableNode(
                                                                              name: NameNode(
                                                                                value: 'nicknameSharedDictionaryId',
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
                                                                                    value: 'ja',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'nicknameJa',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ObjectFieldNode(
                                                                                  name: NameNode(
                                                                                    value: 'en',
                                                                                  ),
                                                                                  value: VariableNode(
                                                                                    name: NameNode(
                                                                                      value: 'nicknameEn',
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
                  name: NameNode(value: 'mstrEquipment'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrEquipmentId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrEquipmentCategoryId'),
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
                        name: NameNode(value: 'labelCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrLocationId'),
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
                        name: NameNode(value: 'mstrItemByMstrItemId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrItemId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedAppellationBySharedAppellationsId',
                              ),
                              alias: null,
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
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
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
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
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
Mutation$OrgResEquipmentEdit _parserFn$Mutation$OrgResEquipmentEdit(
  Map<String, dynamic> data,
) => Mutation$OrgResEquipmentEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OrgResEquipmentEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$OrgResEquipmentEdit?,
    );

class Options$Mutation$OrgResEquipmentEdit
    extends graphql.MutationOptions<Mutation$OrgResEquipmentEdit> {
  Options$Mutation$OrgResEquipmentEdit({
    String? operationName,
    required Variables$Mutation$OrgResEquipmentEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResEquipmentEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResEquipmentEdit>? update,
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
                     : _parserFn$Mutation$OrgResEquipmentEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResEquipmentEdit,
         parserFn: _parserFn$Mutation$OrgResEquipmentEdit,
       );

  final OnMutationCompleted$Mutation$OrgResEquipmentEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OrgResEquipmentEdit
    extends graphql.WatchQueryOptions<Mutation$OrgResEquipmentEdit> {
  WatchOptions$Mutation$OrgResEquipmentEdit({
    String? operationName,
    required Variables$Mutation$OrgResEquipmentEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentEdit? typedOptimisticResult,
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
         document: documentNodeMutationOrgResEquipmentEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OrgResEquipmentEdit,
       );
}

extension ClientExtension$Mutation$OrgResEquipmentEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OrgResEquipmentEdit>>
  mutate$OrgResEquipmentEdit(
    Options$Mutation$OrgResEquipmentEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OrgResEquipmentEdit>
  watchMutation$OrgResEquipmentEdit(
    WatchOptions$Mutation$OrgResEquipmentEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OrgResEquipmentEdit$HookResult {
  Mutation$OrgResEquipmentEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OrgResEquipmentEdit runMutation;

  final graphql.QueryResult<Mutation$OrgResEquipmentEdit> result;
}

Mutation$OrgResEquipmentEdit$HookResult useMutation$OrgResEquipmentEdit([
  WidgetOptions$Mutation$OrgResEquipmentEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OrgResEquipmentEdit(),
  );
  return Mutation$OrgResEquipmentEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OrgResEquipmentEdit>
useWatchMutation$OrgResEquipmentEdit(
  WatchOptions$Mutation$OrgResEquipmentEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OrgResEquipmentEdit
    extends graphql.MutationOptions<Mutation$OrgResEquipmentEdit> {
  WidgetOptions$Mutation$OrgResEquipmentEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResEquipmentEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResEquipmentEdit>? update,
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
                     : _parserFn$Mutation$OrgResEquipmentEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResEquipmentEdit,
         parserFn: _parserFn$Mutation$OrgResEquipmentEdit,
       );

  final OnMutationCompleted$Mutation$OrgResEquipmentEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OrgResEquipmentEdit =
    graphql.MultiSourceResult<Mutation$OrgResEquipmentEdit> Function(
      Variables$Mutation$OrgResEquipmentEdit, {
      Object? optimisticResult,
      Mutation$OrgResEquipmentEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OrgResEquipmentEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OrgResEquipmentEdit,
      graphql.QueryResult<Mutation$OrgResEquipmentEdit>?,
    );

class Mutation$OrgResEquipmentEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OrgResEquipmentEdit> {
  Mutation$OrgResEquipmentEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OrgResEquipmentEdit? options,
    required Builder$Mutation$OrgResEquipmentEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OrgResEquipmentEdit(),
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

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId({
    this.mstrEquipment,
    this.$__typename = 'UpdateMstrEquipmentPayload',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipment = json['mstrEquipment'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
      mstrEquipment: l$mstrEquipment == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.fromJson(
              (l$mstrEquipment as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment?
  mstrEquipment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipment = mstrEquipment;
    _resultData['mstrEquipment'] = l$mstrEquipment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipment = mstrEquipment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrEquipment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipment = mstrEquipment;
    final lOther$mstrEquipment = other.mstrEquipment;
    if (l$mstrEquipment != lOther$mstrEquipment) {
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId
    on Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId;

  TRes call({
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment?
    mstrEquipment,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
    TRes
  >
  get mstrEquipment;
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
      mstrEquipment: mstrEquipment == _undefined
          ? _instance.mstrEquipment
          : (mstrEquipment
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
    TRes
  >
  get mstrEquipment {
    final local$mstrEquipment = _instance.mstrEquipment;
    return local$mstrEquipment == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
            local$mstrEquipment,
            (e) => call(mstrEquipment: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment?
    mstrEquipment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
    TRes
  >
  get mstrEquipment =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment({
    required this.mstrEquipmentId,
    this.mstrEquipmentCategoryId,
    required this.code,
    this.controlCode,
    this.labelCode,
    this.mstrLocationId,
    this.remarks,
    this.mstrItemByMstrItemId,
    this.$__typename = 'MstrEquipment',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$mstrEquipmentCategoryId = json['mstrEquipmentCategoryId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labelCode = json['labelCode'];
    final l$mstrLocationId = json['mstrLocationId'];
    final l$remarks = json['remarks'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
      mstrEquipmentId: (l$mstrEquipmentId as String),
      mstrEquipmentCategoryId: (l$mstrEquipmentCategoryId as String?),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      labelCode: (l$labelCode as String?),
      mstrLocationId: (l$mstrLocationId as String?),
      remarks: (l$remarks as String?),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentId;

  final String? mstrEquipmentCategoryId;

  final String code;

  final String? controlCode;

  final String? labelCode;

  final String? mstrLocationId;

  final String? remarks;

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
    _resultData['mstrEquipmentCategoryId'] = l$mstrEquipmentCategoryId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$mstrLocationId = mstrLocationId;
    _resultData['mstrLocationId'] = l$mstrLocationId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labelCode = labelCode;
    final l$mstrLocationId = mstrLocationId;
    final l$remarks = remarks;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentId,
      l$mstrEquipmentCategoryId,
      l$code,
      l$controlCode,
      l$labelCode,
      l$mstrLocationId,
      l$remarks,
      l$mstrItemByMstrItemId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
      return false;
    }
    final l$mstrEquipmentCategoryId = mstrEquipmentCategoryId;
    final lOther$mstrEquipmentCategoryId = other.mstrEquipmentCategoryId;
    if (l$mstrEquipmentCategoryId != lOther$mstrEquipmentCategoryId) {
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
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final lOther$mstrItemByMstrItemId = other.mstrItemByMstrItemId;
    if (l$mstrItemByMstrItemId != lOther$mstrItemByMstrItemId) {
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment;

  TRes call({
    String? mstrEquipmentId,
    String? mstrEquipmentCategoryId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? mstrLocationId,
    String? remarks,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentId = _undefined,
    Object? mstrEquipmentCategoryId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labelCode = _undefined,
    Object? mstrLocationId = _undefined,
    Object? remarks = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
      mstrEquipmentCategoryId: mstrEquipmentCategoryId == _undefined
          ? _instance.mstrEquipmentCategoryId
          : (mstrEquipmentCategoryId as String?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      mstrLocationId: mstrLocationId == _undefined
          ? _instance.mstrLocationId
          : (mstrLocationId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentId,
    String? mstrEquipmentCategoryId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? mstrLocationId,
    String? remarks,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId({
    required this.mstrItemId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
      mstrItemId: (l$mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemId = mstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId;

  TRes call({
    String? mstrItemId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
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
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentEdit$updateMstrEquipmentByMstrEquipmentId$mstrEquipment$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
