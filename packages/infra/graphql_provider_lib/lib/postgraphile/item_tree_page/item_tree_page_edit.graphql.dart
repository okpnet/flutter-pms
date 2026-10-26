import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemTreePageEdit {
  factory Variables$Mutation$ItemTreePageEdit({
    required String mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
    required String nameJa,
    required String nameEn,
    required String pronunciationSharedDictionaryId,
    required String pronunciationJa,
    required String pronunciationEn,
    required String nicknameSharedDictionaryId,
    required String nicknameJa,
    required String nicknameEn,
    String? quantity,
    required String detailTextsSharedTextId,
    required String detailTextsJa,
    required String detailTextsEn,
    String? remarks,
  }) => Variables$Mutation$ItemTreePageEdit._({
    r'mstrItemTreeId': mstrItemTreeId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (parentMstrItemId != null) r'parentMstrItemId': parentMstrItemId,
    if (code != null) r'code': code,
    if (controlCode != null) r'controlCode': controlCode,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
    r'nameJa': nameJa,
    r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    r'pronunciationJa': pronunciationJa,
    r'pronunciationEn': pronunciationEn,
    r'nicknameSharedDictionaryId': nicknameSharedDictionaryId,
    r'nicknameJa': nicknameJa,
    r'nicknameEn': nicknameEn,
    if (quantity != null) r'quantity': quantity,
    r'detailTextsSharedTextId': detailTextsSharedTextId,
    r'detailTextsJa': detailTextsJa,
    r'detailTextsEn': detailTextsEn,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ItemTreePageEdit._(this._$data);

  factory Variables$Mutation$ItemTreePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemTreeId = data['mstrItemTreeId'];
    result$data['mstrItemTreeId'] = (l$mstrItemTreeId as String);
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('parentMstrItemId')) {
      final l$parentMstrItemId = data['parentMstrItemId'];
      result$data['parentMstrItemId'] = (l$parentMstrItemId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$nameSharedDictionaryId = data['nameSharedDictionaryId'];
    result$data['nameSharedDictionaryId'] =
        (l$nameSharedDictionaryId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
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
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as String?);
    }
    final l$detailTextsSharedTextId = data['detailTextsSharedTextId'];
    result$data['detailTextsSharedTextId'] =
        (l$detailTextsSharedTextId as String);
    final l$detailTextsJa = data['detailTextsJa'];
    result$data['detailTextsJa'] = (l$detailTextsJa as String);
    final l$detailTextsEn = data['detailTextsEn'];
    result$data['detailTextsEn'] = (l$detailTextsEn as String);
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ItemTreePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemTreeId => (_$data['mstrItemTreeId'] as String);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get parentMstrItemId => (_$data['parentMstrItemId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  String get nameSharedDictionaryId =>
      (_$data['nameSharedDictionaryId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

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

  String? get quantity => (_$data['quantity'] as String?);

  String get detailTextsSharedTextId =>
      (_$data['detailTextsSharedTextId'] as String);

  String get detailTextsJa => (_$data['detailTextsJa'] as String);

  String get detailTextsEn => (_$data['detailTextsEn'] as String);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemTreeId = mstrItemTreeId;
    result$data['mstrItemTreeId'] = l$mstrItemTreeId;
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
    }
    if (_$data.containsKey('parentMstrItemId')) {
      final l$parentMstrItemId = parentMstrItemId;
      result$data['parentMstrItemId'] = l$parentMstrItemId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    result$data['nameSharedDictionaryId'] = l$nameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
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
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    result$data['detailTextsSharedTextId'] = l$detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    result$data['detailTextsJa'] = l$detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    result$data['detailTextsEn'] = l$detailTextsEn;
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemTreePageEdit<
    Variables$Mutation$ItemTreePageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ItemTreePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemTreePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTreeId = mstrItemTreeId;
    final lOther$mstrItemTreeId = other.mstrItemTreeId;
    if (l$mstrItemTreeId != lOther$mstrItemTreeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (_$data.containsKey('mstrItemId') !=
        other._$data.containsKey('mstrItemId')) {
      return false;
    }
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$parentMstrItemId = parentMstrItemId;
    final lOther$parentMstrItemId = other.parentMstrItemId;
    if (_$data.containsKey('parentMstrItemId') !=
        other._$data.containsKey('parentMstrItemId')) {
      return false;
    }
    if (l$parentMstrItemId != lOther$parentMstrItemId) {
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
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final lOther$detailTextsSharedTextId = other.detailTextsSharedTextId;
    if (l$detailTextsSharedTextId != lOther$detailTextsSharedTextId) {
      return false;
    }
    final l$detailTextsJa = detailTextsJa;
    final lOther$detailTextsJa = other.detailTextsJa;
    if (l$detailTextsJa != lOther$detailTextsJa) {
      return false;
    }
    final l$detailTextsEn = detailTextsEn;
    final lOther$detailTextsEn = other.detailTextsEn;
    if (l$detailTextsEn != lOther$detailTextsEn) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrItemTreeId = mstrItemTreeId;
    final l$mstrItemId = mstrItemId;
    final l$parentMstrItemId = parentMstrItemId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$nameJa = nameJa;
    final l$nameEn = nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    final l$nicknameJa = nicknameJa;
    final l$nicknameEn = nicknameEn;
    final l$quantity = quantity;
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrItemTreeId,
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('parentMstrItemId') ? l$parentMstrItemId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
      l$nameJa,
      l$nameEn,
      l$pronunciationSharedDictionaryId,
      l$pronunciationJa,
      l$pronunciationEn,
      l$nicknameSharedDictionaryId,
      l$nicknameJa,
      l$nicknameEn,
      _$data.containsKey('quantity') ? l$quantity : const {},
      l$detailTextsSharedTextId,
      l$detailTextsJa,
      l$detailTextsEn,
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemTreePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemTreePageEdit(
    Variables$Mutation$ItemTreePageEdit instance,
    TRes Function(Variables$Mutation$ItemTreePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemTreePageEdit;

  factory CopyWith$Variables$Mutation$ItemTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemTreePageEdit;

  TRes call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? quantity,
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ItemTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemTreePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemTreePageEdit(this._instance, this._then);

  final Variables$Mutation$ItemTreePageEdit _instance;

  final TRes Function(Variables$Mutation$ItemTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTreeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? parentMstrItemId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? nameSharedDictionaryId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? nameJa = _undefined,
    Object? nameEn = _undefined,
    Object? pronunciationSharedDictionaryId = _undefined,
    Object? pronunciationJa = _undefined,
    Object? pronunciationEn = _undefined,
    Object? nicknameSharedDictionaryId = _undefined,
    Object? nicknameJa = _undefined,
    Object? nicknameEn = _undefined,
    Object? quantity = _undefined,
    Object? detailTextsSharedTextId = _undefined,
    Object? detailTextsJa = _undefined,
    Object? detailTextsEn = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ItemTreePageEdit._({
      ..._instance._$data,
      if (mstrItemTreeId != _undefined && mstrItemTreeId != null)
        'mstrItemTreeId': (mstrItemTreeId as String),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (parentMstrItemId != _undefined)
        'parentMstrItemId': (parentMstrItemId as String?),
      if (code != _undefined) 'code': (code as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (nameSharedDictionaryId != _undefined &&
          nameSharedDictionaryId != null)
        'nameSharedDictionaryId': (nameSharedDictionaryId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
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
      if (quantity != _undefined) 'quantity': (quantity as String?),
      if (detailTextsSharedTextId != _undefined &&
          detailTextsSharedTextId != null)
        'detailTextsSharedTextId': (detailTextsSharedTextId as String),
      if (detailTextsJa != _undefined && detailTextsJa != null)
        'detailTextsJa': (detailTextsJa as String),
      if (detailTextsEn != _undefined && detailTextsEn != null)
        'detailTextsEn': (detailTextsEn as String),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemTreePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemTreePageEdit(this._res);

  TRes _res;

  call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? quantity,
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? remarks,
  }) => _res;
}

class Mutation$ItemTreePageEdit {
  Mutation$ItemTreePageEdit({
    this.updateMstrItemTreeByMstrItemTreeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemTreePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemTreeByMstrItemTreeId =
        json['updateMstrItemTreeByMstrItemTreeId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit(
      updateMstrItemTreeByMstrItemTreeId:
          l$updateMstrItemTreeByMstrItemTreeId == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId.fromJson(
              (l$updateMstrItemTreeByMstrItemTreeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId?
  updateMstrItemTreeByMstrItemTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemTreeByMstrItemTreeId =
        updateMstrItemTreeByMstrItemTreeId;
    _resultData['updateMstrItemTreeByMstrItemTreeId'] =
        l$updateMstrItemTreeByMstrItemTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemTreeByMstrItemTreeId =
        updateMstrItemTreeByMstrItemTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrItemTreeByMstrItemTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemTreePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemTreeByMstrItemTreeId =
        updateMstrItemTreeByMstrItemTreeId;
    final lOther$updateMstrItemTreeByMstrItemTreeId =
        other.updateMstrItemTreeByMstrItemTreeId;
    if (l$updateMstrItemTreeByMstrItemTreeId !=
        lOther$updateMstrItemTreeByMstrItemTreeId) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit
    on Mutation$ItemTreePageEdit {
  CopyWith$Mutation$ItemTreePageEdit<Mutation$ItemTreePageEdit> get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemTreePageEdit<TRes> {
  factory CopyWith$Mutation$ItemTreePageEdit(
    Mutation$ItemTreePageEdit instance,
    TRes Function(Mutation$ItemTreePageEdit) then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit;

  factory CopyWith$Mutation$ItemTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemTreePageEdit;

  TRes call({
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId?
    updateMstrItemTreeByMstrItemTreeId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<TRes>
  get updateMstrItemTreeByMstrItemTreeId;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit<TRes>
    implements CopyWith$Mutation$ItemTreePageEdit<TRes> {
  _CopyWithImpl$Mutation$ItemTreePageEdit(this._instance, this._then);

  final Mutation$ItemTreePageEdit _instance;

  final TRes Function(Mutation$ItemTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemTreeByMstrItemTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit(
      updateMstrItemTreeByMstrItemTreeId:
          updateMstrItemTreeByMstrItemTreeId == _undefined
          ? _instance.updateMstrItemTreeByMstrItemTreeId
          : (updateMstrItemTreeByMstrItemTreeId
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<TRes>
  get updateMstrItemTreeByMstrItemTreeId {
    final local$updateMstrItemTreeByMstrItemTreeId =
        _instance.updateMstrItemTreeByMstrItemTreeId;
    return local$updateMstrItemTreeByMstrItemTreeId == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
            local$updateMstrItemTreeByMstrItemTreeId,
            (e) => call(updateMstrItemTreeByMstrItemTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit<TRes>
    implements CopyWith$Mutation$ItemTreePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId?
    updateMstrItemTreeByMstrItemTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<TRes>
  get updateMstrItemTreeByMstrItemTreeId =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId.stub(
        _res,
      );
}

const documentNodeMutationItemTreePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemTreePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'parentMstrItemId')),
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
          variable: VariableNode(name: NameNode(value: 'quantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'detailTextsSharedTextId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailTextsJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailTextsEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrItemTreeByMstrItemTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemTreeId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrItemTreeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemTreePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'parentMstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'parentMstrItemId'),
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
                                                value: 'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value: 'updateBySharedDictionaryId',
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
                                                                  value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value: 'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
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
                                                                                value: VariableNode(name: NameNode(value: 'nameJa')),
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
                                                                                value: VariableNode(name: NameNode(value: 'nameEn')),
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
                                                value: 'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value: 'updateBySharedDictionaryId',
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
                                                                  value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value: 'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
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
                                                value: 'sharedDictionaryToSharedDictionaryNicknameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value: 'updateBySharedDictionaryId',
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
                                                                  value: 'sharedDictionaryValuesUsingSharedDictionaryId',
                                                                ),
                                                                value: ObjectValueNode(
                                                                  fields: [
                                                                    ObjectFieldNode(
                                                                      name: NameNode(
                                                                        value: 'deleteOthers',
                                                                      ),
                                                                      value: BooleanValueNode(
                                                                        value:
                                                                            true,
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
                            name: NameNode(value: 'quantity'),
                            value: VariableNode(
                              name: NameNode(value: 'quantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sharedTextToDetails'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'updateBySharedTextId'),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'sharedTextId'),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'detailTextsSharedTextId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedTextPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedTextValuesUsingSharedTextId',
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
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'jaLanguageCodeId',
                                                                        ),
                                                                  ),
                                                            ),
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'detailTextsJa',
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
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'enLanguageCodeId',
                                                                        ),
                                                                  ),
                                                            ),
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'detailTextsEn',
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
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
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
                  name: NameNode(value: 'mstrItemTree'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrItemTreeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'parentMstrItemId'),
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                        name: NameNode(value: 'quantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedTextByDetails'),
                        alias: NameNode(value: 'detailTexts'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedTextId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedTextValuesBySharedTextId',
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
                                          name: NameNode(value: 'textValue'),
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
                                value: 'sharedTextValuesBySharedTextId',
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
                                          name: NameNode(value: 'textValue'),
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
                        name: NameNode(value: 'remarks'),
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
  ],
);
Mutation$ItemTreePageEdit _parserFn$Mutation$ItemTreePageEdit(
  Map<String, dynamic> data,
) => Mutation$ItemTreePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemTreePageEdit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ItemTreePageEdit?,
);

class Options$Mutation$ItemTreePageEdit
    extends graphql.MutationOptions<Mutation$ItemTreePageEdit> {
  Options$Mutation$ItemTreePageEdit({
    String? operationName,
    required Variables$Mutation$ItemTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemTreePageEdit>? update,
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
                     : _parserFn$Mutation$ItemTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemTreePageEdit,
         parserFn: _parserFn$Mutation$ItemTreePageEdit,
       );

  final OnMutationCompleted$Mutation$ItemTreePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemTreePageEdit
    extends graphql.WatchQueryOptions<Mutation$ItemTreePageEdit> {
  WatchOptions$Mutation$ItemTreePageEdit({
    String? operationName,
    required Variables$Mutation$ItemTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemTreePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemTreePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemTreePageEdit,
       );
}

extension ClientExtension$Mutation$ItemTreePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemTreePageEdit>>
  mutate$ItemTreePageEdit(Options$Mutation$ItemTreePageEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemTreePageEdit>
  watchMutation$ItemTreePageEdit(
    WatchOptions$Mutation$ItemTreePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemTreePageEdit$HookResult {
  Mutation$ItemTreePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemTreePageEdit runMutation;

  final graphql.QueryResult<Mutation$ItemTreePageEdit> result;
}

Mutation$ItemTreePageEdit$HookResult useMutation$ItemTreePageEdit([
  WidgetOptions$Mutation$ItemTreePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemTreePageEdit(),
  );
  return Mutation$ItemTreePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemTreePageEdit>
useWatchMutation$ItemTreePageEdit(
  WatchOptions$Mutation$ItemTreePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemTreePageEdit
    extends graphql.MutationOptions<Mutation$ItemTreePageEdit> {
  WidgetOptions$Mutation$ItemTreePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemTreePageEdit>? update,
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
                     : _parserFn$Mutation$ItemTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemTreePageEdit,
         parserFn: _parserFn$Mutation$ItemTreePageEdit,
       );

  final OnMutationCompleted$Mutation$ItemTreePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemTreePageEdit =
    graphql.MultiSourceResult<Mutation$ItemTreePageEdit> Function(
      Variables$Mutation$ItemTreePageEdit, {
      Object? optimisticResult,
      Mutation$ItemTreePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemTreePageEdit = widgets.Widget Function(
  RunMutation$Mutation$ItemTreePageEdit,
  graphql.QueryResult<Mutation$ItemTreePageEdit>?,
);

class Mutation$ItemTreePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemTreePageEdit> {
  Mutation$ItemTreePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemTreePageEdit? options,
    required Builder$Mutation$ItemTreePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemTreePageEdit(),
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

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId({
    this.mstrItemTree,
    this.$__typename = 'UpdateMstrItemTreePayload',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemTree = json['mstrItemTree'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
      mstrItemTree: l$mstrItemTree == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree.fromJson(
              (l$mstrItemTree as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree?
  mstrItemTree;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemTree = mstrItemTree;
    _resultData['mstrItemTree'] = l$mstrItemTree?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemTree = mstrItemTree;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemTree, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTree = mstrItemTree;
    final lOther$mstrItemTree = other.mstrItemTree;
    if (l$mstrItemTree != lOther$mstrItemTree) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId
    on Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId instance,
    TRes Function(Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId)
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId;

  TRes call({
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree?
    mstrItemTree,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
    TRes
  >
  get mstrItemTree;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTree = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
      mstrItemTree: mstrItemTree == _undefined
          ? _instance.mstrItemTree
          : (mstrItemTree
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
    TRes
  >
  get mstrItemTree {
    final local$mstrItemTree = _instance.mstrItemTree;
    return local$mstrItemTree == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
            local$mstrItemTree,
            (e) => call(mstrItemTree: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree?
    mstrItemTree,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
    TRes
  >
  get mstrItemTree =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree({
    required this.mstrItemTreeId,
    required this.mstrItemId,
    this.parentMstrItemId,
    this.code,
    this.controlCode,
    this.labels,
    required this.quantity,
    this.detailTexts,
    this.remarks,
    this.$__typename = 'MstrItemTree',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemTreeId = json['mstrItemTreeId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$parentMstrItemId = json['parentMstrItemId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labels = json['labels'];
    final l$quantity = json['quantity'];
    final l$detailTexts = json['detailTexts'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
      mstrItemTreeId: (l$mstrItemTreeId as String),
      mstrItemId: (l$mstrItemId as String),
      parentMstrItemId: (l$parentMstrItemId as String?),
      code: (l$code as String?),
      controlCode: (l$controlCode as String?),
      labels: l$labels == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      quantity: (l$quantity as String),
      detailTexts: l$detailTexts == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemTreeId;

  final String mstrItemId;

  final String? parentMstrItemId;

  final String? code;

  final String? controlCode;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels?
  labels;

  final String quantity;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts?
  detailTexts;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemTreeId = mstrItemTreeId;
    _resultData['mstrItemTreeId'] = l$mstrItemTreeId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$parentMstrItemId = parentMstrItemId;
    _resultData['parentMstrItemId'] = l$parentMstrItemId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemTreeId = mstrItemTreeId;
    final l$mstrItemId = mstrItemId;
    final l$parentMstrItemId = parentMstrItemId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labels = labels;
    final l$quantity = quantity;
    final l$detailTexts = detailTexts;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemTreeId,
      l$mstrItemId,
      l$parentMstrItemId,
      l$code,
      l$controlCode,
      l$labels,
      l$quantity,
      l$detailTexts,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemTreeId = mstrItemTreeId;
    final lOther$mstrItemTreeId = other.mstrItemTreeId;
    if (l$mstrItemTreeId != lOther$mstrItemTreeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$parentMstrItemId = parentMstrItemId;
    final lOther$parentMstrItemId = other.parentMstrItemId;
    if (l$parentMstrItemId != lOther$parentMstrItemId) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree
    on Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree;

  TRes call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels?
    labels,
    String? quantity,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts?
    detailTexts,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
    TRes
  >
  get detailTexts;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemTreeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? parentMstrItemId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labels = _undefined,
    Object? quantity = _undefined,
    Object? detailTexts = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
      mstrItemTreeId: mstrItemTreeId == _undefined || mstrItemTreeId == null
          ? _instance.mstrItemTreeId
          : (mstrItemTreeId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      parentMstrItemId: parentMstrItemId == _undefined
          ? _instance.parentMstrItemId
          : (parentMstrItemId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels?),
      quantity: quantity == _undefined || quantity == null
          ? _instance.quantity
          : (quantity as String),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemTreeId,
    String? mstrItemId,
    String? parentMstrItemId,
    String? code,
    String? controlCode,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels?
    labels,
    String? quantity,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts?
    detailTexts,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels.fromJson(
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
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels,
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
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja
  ja;

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedTextId = sharedTextId;
    _resultData['sharedTextId'] = l$sharedTextId;
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
    final l$sharedTextId = sharedTextId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedTextId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedTextId = sharedTextId;
    final lOther$sharedTextId = other.sharedTextId;
    if (l$sharedTextId != lOther$sharedTextId) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts;

  TRes call({
    String? sharedTextId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja?
    ja,
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en.stub(
        _res,
      );
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
      textValue: (l$textValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? textValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textValue = textValue;
    _resultData['textValue'] = l$textValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textValue = textValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$textValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$textValue = textValue;
    final lOther$textValue = other.textValue;
    if (l$textValue != lOther$textValue) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
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
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en ||
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en;

  TRes call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
          Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes {
  Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
      textValue: (l$textValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? textValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textValue = textValue;
    _resultData['textValue'] = l$textValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textValue = textValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$textValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$textValue = textValue;
    final lOther$textValue = other.textValue;
    if (l$textValue != lOther$textValue) {
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

extension UtilityExtension$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
    on
        Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes {
  CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
    instance,
    TRes Function(
      Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes;

  factory CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemTreePageEdit$updateMstrItemTreeByMstrItemTreeId$mstrItemTree$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}
