import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemPageEdit {
  factory Variables$Mutation$ItemPageEdit({
    required String mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    required String manufactureMstrManufacturerId,
    String? manufactureCode,
    required String manufactureSharedAppellationsId,
    required String manufactureNameSharedDictionaryId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
    required String manufactureNameJa,
    required String manufactureNameEn,
    required String manufacturePronunciationSharedDictionaryId,
    required String manufacturePronunciationJa,
    required String manufacturePronunciationEn,
    required String manufactureNicknameSharedDictionaryId,
    required String manufactureNicknameJa,
    required String manufactureNicknameEn,
    String? manufactureRemarks,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    required String nameJa,
    required String nameEn,
    required String pronunciationSharedDictionaryId,
    required String pronunciationJa,
    required String pronunciationEn,
    required String nicknameSharedDictionaryId,
    required String nicknameJa,
    required String nicknameEn,
    String? labelCode,
    required String detailTextsSharedTextId,
    required String detailTextsJa,
    required String detailTextsEn,
    String? sharedUnitId,
    String? mstrItemLotId,
    String? remarks,
  }) => Variables$Mutation$ItemPageEdit._({
    r'mstrItemId': mstrItemId,
    if (mstrItemKindId != null) r'mstrItemKindId': mstrItemKindId,
    if (code != null) r'code': code,
    if (identification != null) r'identification': identification,
    if (controlCode != null) r'controlCode': controlCode,
    r'manufactureMstrManufacturerId': manufactureMstrManufacturerId,
    if (manufactureCode != null) r'manufactureCode': manufactureCode,
    r'manufactureSharedAppellationsId': manufactureSharedAppellationsId,
    r'manufactureNameSharedDictionaryId': manufactureNameSharedDictionaryId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
    r'manufactureNameJa': manufactureNameJa,
    r'manufactureNameEn': manufactureNameEn,
    r'manufacturePronunciationSharedDictionaryId':
        manufacturePronunciationSharedDictionaryId,
    r'manufacturePronunciationJa': manufacturePronunciationJa,
    r'manufacturePronunciationEn': manufacturePronunciationEn,
    r'manufactureNicknameSharedDictionaryId':
        manufactureNicknameSharedDictionaryId,
    r'manufactureNicknameJa': manufactureNicknameJa,
    r'manufactureNicknameEn': manufactureNicknameEn,
    if (manufactureRemarks != null) r'manufactureRemarks': manufactureRemarks,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    r'nameJa': nameJa,
    r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    r'pronunciationJa': pronunciationJa,
    r'pronunciationEn': pronunciationEn,
    r'nicknameSharedDictionaryId': nicknameSharedDictionaryId,
    r'nicknameJa': nicknameJa,
    r'nicknameEn': nicknameEn,
    if (labelCode != null) r'labelCode': labelCode,
    r'detailTextsSharedTextId': detailTextsSharedTextId,
    r'detailTextsJa': detailTextsJa,
    r'detailTextsEn': detailTextsEn,
    if (sharedUnitId != null) r'sharedUnitId': sharedUnitId,
    if (mstrItemLotId != null) r'mstrItemLotId': mstrItemLotId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ItemPageEdit._(this._$data);

  factory Variables$Mutation$ItemPageEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrItemId = data['mstrItemId'];
    result$data['mstrItemId'] = (l$mstrItemId as String);
    if (data.containsKey('mstrItemKindId')) {
      final l$mstrItemKindId = data['mstrItemKindId'];
      result$data['mstrItemKindId'] = (l$mstrItemKindId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('identification')) {
      final l$identification = data['identification'];
      result$data['identification'] = (l$identification as String?);
    }
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    final l$manufactureMstrManufacturerId =
        data['manufactureMstrManufacturerId'];
    result$data['manufactureMstrManufacturerId'] =
        (l$manufactureMstrManufacturerId as String);
    if (data.containsKey('manufactureCode')) {
      final l$manufactureCode = data['manufactureCode'];
      result$data['manufactureCode'] = (l$manufactureCode as String?);
    }
    final l$manufactureSharedAppellationsId =
        data['manufactureSharedAppellationsId'];
    result$data['manufactureSharedAppellationsId'] =
        (l$manufactureSharedAppellationsId as String);
    final l$manufactureNameSharedDictionaryId =
        data['manufactureNameSharedDictionaryId'];
    result$data['manufactureNameSharedDictionaryId'] =
        (l$manufactureNameSharedDictionaryId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    final l$manufactureNameJa = data['manufactureNameJa'];
    result$data['manufactureNameJa'] = (l$manufactureNameJa as String);
    final l$manufactureNameEn = data['manufactureNameEn'];
    result$data['manufactureNameEn'] = (l$manufactureNameEn as String);
    final l$manufacturePronunciationSharedDictionaryId =
        data['manufacturePronunciationSharedDictionaryId'];
    result$data['manufacturePronunciationSharedDictionaryId'] =
        (l$manufacturePronunciationSharedDictionaryId as String);
    final l$manufacturePronunciationJa = data['manufacturePronunciationJa'];
    result$data['manufacturePronunciationJa'] =
        (l$manufacturePronunciationJa as String);
    final l$manufacturePronunciationEn = data['manufacturePronunciationEn'];
    result$data['manufacturePronunciationEn'] =
        (l$manufacturePronunciationEn as String);
    final l$manufactureNicknameSharedDictionaryId =
        data['manufactureNicknameSharedDictionaryId'];
    result$data['manufactureNicknameSharedDictionaryId'] =
        (l$manufactureNicknameSharedDictionaryId as String);
    final l$manufactureNicknameJa = data['manufactureNicknameJa'];
    result$data['manufactureNicknameJa'] = (l$manufactureNicknameJa as String);
    final l$manufactureNicknameEn = data['manufactureNicknameEn'];
    result$data['manufactureNicknameEn'] = (l$manufactureNicknameEn as String);
    if (data.containsKey('manufactureRemarks')) {
      final l$manufactureRemarks = data['manufactureRemarks'];
      result$data['manufactureRemarks'] = (l$manufactureRemarks as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
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
    if (data.containsKey('labelCode')) {
      final l$labelCode = data['labelCode'];
      result$data['labelCode'] = (l$labelCode as String?);
    }
    final l$detailTextsSharedTextId = data['detailTextsSharedTextId'];
    result$data['detailTextsSharedTextId'] =
        (l$detailTextsSharedTextId as String);
    final l$detailTextsJa = data['detailTextsJa'];
    result$data['detailTextsJa'] = (l$detailTextsJa as String);
    final l$detailTextsEn = data['detailTextsEn'];
    result$data['detailTextsEn'] = (l$detailTextsEn as String);
    if (data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = data['sharedUnitId'];
      result$data['sharedUnitId'] = (l$sharedUnitId as String?);
    }
    if (data.containsKey('mstrItemLotId')) {
      final l$mstrItemLotId = data['mstrItemLotId'];
      result$data['mstrItemLotId'] = (l$mstrItemLotId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ItemPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemId => (_$data['mstrItemId'] as String);

  String? get mstrItemKindId => (_$data['mstrItemKindId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get identification => (_$data['identification'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String get manufactureMstrManufacturerId =>
      (_$data['manufactureMstrManufacturerId'] as String);

  String? get manufactureCode => (_$data['manufactureCode'] as String?);

  String get manufactureSharedAppellationsId =>
      (_$data['manufactureSharedAppellationsId'] as String);

  String get manufactureNameSharedDictionaryId =>
      (_$data['manufactureNameSharedDictionaryId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  String get manufactureNameJa => (_$data['manufactureNameJa'] as String);

  String get manufactureNameEn => (_$data['manufactureNameEn'] as String);

  String get manufacturePronunciationSharedDictionaryId =>
      (_$data['manufacturePronunciationSharedDictionaryId'] as String);

  String get manufacturePronunciationJa =>
      (_$data['manufacturePronunciationJa'] as String);

  String get manufacturePronunciationEn =>
      (_$data['manufacturePronunciationEn'] as String);

  String get manufactureNicknameSharedDictionaryId =>
      (_$data['manufactureNicknameSharedDictionaryId'] as String);

  String get manufactureNicknameJa =>
      (_$data['manufactureNicknameJa'] as String);

  String get manufactureNicknameEn =>
      (_$data['manufactureNicknameEn'] as String);

  String? get manufactureRemarks => (_$data['manufactureRemarks'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

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

  String? get labelCode => (_$data['labelCode'] as String?);

  String get detailTextsSharedTextId =>
      (_$data['detailTextsSharedTextId'] as String);

  String get detailTextsJa => (_$data['detailTextsJa'] as String);

  String get detailTextsEn => (_$data['detailTextsEn'] as String);

  String? get sharedUnitId => (_$data['sharedUnitId'] as String?);

  String? get mstrItemLotId => (_$data['mstrItemLotId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    result$data['mstrItemId'] = l$mstrItemId;
    if (_$data.containsKey('mstrItemKindId')) {
      final l$mstrItemKindId = mstrItemKindId;
      result$data['mstrItemKindId'] = l$mstrItemKindId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('identification')) {
      final l$identification = identification;
      result$data['identification'] = l$identification;
    }
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    final l$manufactureMstrManufacturerId = manufactureMstrManufacturerId;
    result$data['manufactureMstrManufacturerId'] =
        l$manufactureMstrManufacturerId;
    if (_$data.containsKey('manufactureCode')) {
      final l$manufactureCode = manufactureCode;
      result$data['manufactureCode'] = l$manufactureCode;
    }
    final l$manufactureSharedAppellationsId = manufactureSharedAppellationsId;
    result$data['manufactureSharedAppellationsId'] =
        l$manufactureSharedAppellationsId;
    final l$manufactureNameSharedDictionaryId =
        manufactureNameSharedDictionaryId;
    result$data['manufactureNameSharedDictionaryId'] =
        l$manufactureNameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    final l$manufactureNameJa = manufactureNameJa;
    result$data['manufactureNameJa'] = l$manufactureNameJa;
    final l$manufactureNameEn = manufactureNameEn;
    result$data['manufactureNameEn'] = l$manufactureNameEn;
    final l$manufacturePronunciationSharedDictionaryId =
        manufacturePronunciationSharedDictionaryId;
    result$data['manufacturePronunciationSharedDictionaryId'] =
        l$manufacturePronunciationSharedDictionaryId;
    final l$manufacturePronunciationJa = manufacturePronunciationJa;
    result$data['manufacturePronunciationJa'] = l$manufacturePronunciationJa;
    final l$manufacturePronunciationEn = manufacturePronunciationEn;
    result$data['manufacturePronunciationEn'] = l$manufacturePronunciationEn;
    final l$manufactureNicknameSharedDictionaryId =
        manufactureNicknameSharedDictionaryId;
    result$data['manufactureNicknameSharedDictionaryId'] =
        l$manufactureNicknameSharedDictionaryId;
    final l$manufactureNicknameJa = manufactureNicknameJa;
    result$data['manufactureNicknameJa'] = l$manufactureNicknameJa;
    final l$manufactureNicknameEn = manufactureNicknameEn;
    result$data['manufactureNicknameEn'] = l$manufactureNicknameEn;
    if (_$data.containsKey('manufactureRemarks')) {
      final l$manufactureRemarks = manufactureRemarks;
      result$data['manufactureRemarks'] = l$manufactureRemarks;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
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
    if (_$data.containsKey('labelCode')) {
      final l$labelCode = labelCode;
      result$data['labelCode'] = l$labelCode;
    }
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    result$data['detailTextsSharedTextId'] = l$detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    result$data['detailTextsJa'] = l$detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    result$data['detailTextsEn'] = l$detailTextsEn;
    if (_$data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = sharedUnitId;
      result$data['sharedUnitId'] = l$sharedUnitId;
    }
    if (_$data.containsKey('mstrItemLotId')) {
      final l$mstrItemLotId = mstrItemLotId;
      result$data['mstrItemLotId'] = l$mstrItemLotId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemPageEdit<Variables$Mutation$ItemPageEdit>
  get copyWith => CopyWith$Variables$Mutation$ItemPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (_$data.containsKey('mstrItemKindId') !=
        other._$data.containsKey('mstrItemKindId')) {
      return false;
    }
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
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
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (_$data.containsKey('identification') !=
        other._$data.containsKey('identification')) {
      return false;
    }
    if (l$identification != lOther$identification) {
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
    final l$manufactureMstrManufacturerId = manufactureMstrManufacturerId;
    final lOther$manufactureMstrManufacturerId =
        other.manufactureMstrManufacturerId;
    if (l$manufactureMstrManufacturerId !=
        lOther$manufactureMstrManufacturerId) {
      return false;
    }
    final l$manufactureCode = manufactureCode;
    final lOther$manufactureCode = other.manufactureCode;
    if (_$data.containsKey('manufactureCode') !=
        other._$data.containsKey('manufactureCode')) {
      return false;
    }
    if (l$manufactureCode != lOther$manufactureCode) {
      return false;
    }
    final l$manufactureSharedAppellationsId = manufactureSharedAppellationsId;
    final lOther$manufactureSharedAppellationsId =
        other.manufactureSharedAppellationsId;
    if (l$manufactureSharedAppellationsId !=
        lOther$manufactureSharedAppellationsId) {
      return false;
    }
    final l$manufactureNameSharedDictionaryId =
        manufactureNameSharedDictionaryId;
    final lOther$manufactureNameSharedDictionaryId =
        other.manufactureNameSharedDictionaryId;
    if (l$manufactureNameSharedDictionaryId !=
        lOther$manufactureNameSharedDictionaryId) {
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
    final l$manufactureNameJa = manufactureNameJa;
    final lOther$manufactureNameJa = other.manufactureNameJa;
    if (l$manufactureNameJa != lOther$manufactureNameJa) {
      return false;
    }
    final l$manufactureNameEn = manufactureNameEn;
    final lOther$manufactureNameEn = other.manufactureNameEn;
    if (l$manufactureNameEn != lOther$manufactureNameEn) {
      return false;
    }
    final l$manufacturePronunciationSharedDictionaryId =
        manufacturePronunciationSharedDictionaryId;
    final lOther$manufacturePronunciationSharedDictionaryId =
        other.manufacturePronunciationSharedDictionaryId;
    if (l$manufacturePronunciationSharedDictionaryId !=
        lOther$manufacturePronunciationSharedDictionaryId) {
      return false;
    }
    final l$manufacturePronunciationJa = manufacturePronunciationJa;
    final lOther$manufacturePronunciationJa = other.manufacturePronunciationJa;
    if (l$manufacturePronunciationJa != lOther$manufacturePronunciationJa) {
      return false;
    }
    final l$manufacturePronunciationEn = manufacturePronunciationEn;
    final lOther$manufacturePronunciationEn = other.manufacturePronunciationEn;
    if (l$manufacturePronunciationEn != lOther$manufacturePronunciationEn) {
      return false;
    }
    final l$manufactureNicknameSharedDictionaryId =
        manufactureNicknameSharedDictionaryId;
    final lOther$manufactureNicknameSharedDictionaryId =
        other.manufactureNicknameSharedDictionaryId;
    if (l$manufactureNicknameSharedDictionaryId !=
        lOther$manufactureNicknameSharedDictionaryId) {
      return false;
    }
    final l$manufactureNicknameJa = manufactureNicknameJa;
    final lOther$manufactureNicknameJa = other.manufactureNicknameJa;
    if (l$manufactureNicknameJa != lOther$manufactureNicknameJa) {
      return false;
    }
    final l$manufactureNicknameEn = manufactureNicknameEn;
    final lOther$manufactureNicknameEn = other.manufactureNicknameEn;
    if (l$manufactureNicknameEn != lOther$manufactureNicknameEn) {
      return false;
    }
    final l$manufactureRemarks = manufactureRemarks;
    final lOther$manufactureRemarks = other.manufactureRemarks;
    if (_$data.containsKey('manufactureRemarks') !=
        other._$data.containsKey('manufactureRemarks')) {
      return false;
    }
    if (l$manufactureRemarks != lOther$manufactureRemarks) {
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
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (_$data.containsKey('labelCode') !=
        other._$data.containsKey('labelCode')) {
      return false;
    }
    if (l$labelCode != lOther$labelCode) {
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
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (_$data.containsKey('sharedUnitId') !=
        other._$data.containsKey('sharedUnitId')) {
      return false;
    }
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$mstrItemLotId = mstrItemLotId;
    final lOther$mstrItemLotId = other.mstrItemLotId;
    if (_$data.containsKey('mstrItemLotId') !=
        other._$data.containsKey('mstrItemLotId')) {
      return false;
    }
    if (l$mstrItemLotId != lOther$mstrItemLotId) {
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
    final l$mstrItemId = mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$manufactureMstrManufacturerId = manufactureMstrManufacturerId;
    final l$manufactureCode = manufactureCode;
    final l$manufactureSharedAppellationsId = manufactureSharedAppellationsId;
    final l$manufactureNameSharedDictionaryId =
        manufactureNameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$manufactureNameJa = manufactureNameJa;
    final l$manufactureNameEn = manufactureNameEn;
    final l$manufacturePronunciationSharedDictionaryId =
        manufacturePronunciationSharedDictionaryId;
    final l$manufacturePronunciationJa = manufacturePronunciationJa;
    final l$manufacturePronunciationEn = manufacturePronunciationEn;
    final l$manufactureNicknameSharedDictionaryId =
        manufactureNicknameSharedDictionaryId;
    final l$manufactureNicknameJa = manufactureNicknameJa;
    final l$manufactureNicknameEn = manufactureNicknameEn;
    final l$manufactureRemarks = manufactureRemarks;
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
    final l$labelCode = labelCode;
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    final l$sharedUnitId = sharedUnitId;
    final l$mstrItemLotId = mstrItemLotId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrItemId,
      _$data.containsKey('mstrItemKindId') ? l$mstrItemKindId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('identification') ? l$identification : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      l$manufactureMstrManufacturerId,
      _$data.containsKey('manufactureCode') ? l$manufactureCode : const {},
      l$manufactureSharedAppellationsId,
      l$manufactureNameSharedDictionaryId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
      l$manufactureNameJa,
      l$manufactureNameEn,
      l$manufacturePronunciationSharedDictionaryId,
      l$manufacturePronunciationJa,
      l$manufacturePronunciationEn,
      l$manufactureNicknameSharedDictionaryId,
      l$manufactureNicknameJa,
      l$manufactureNicknameEn,
      _$data.containsKey('manufactureRemarks')
          ? l$manufactureRemarks
          : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      l$nameJa,
      l$nameEn,
      l$pronunciationSharedDictionaryId,
      l$pronunciationJa,
      l$pronunciationEn,
      l$nicknameSharedDictionaryId,
      l$nicknameJa,
      l$nicknameEn,
      _$data.containsKey('labelCode') ? l$labelCode : const {},
      l$detailTextsSharedTextId,
      l$detailTextsJa,
      l$detailTextsEn,
      _$data.containsKey('sharedUnitId') ? l$sharedUnitId : const {},
      _$data.containsKey('mstrItemLotId') ? l$mstrItemLotId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemPageEdit(
    Variables$Mutation$ItemPageEdit instance,
    TRes Function(Variables$Mutation$ItemPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemPageEdit;

  factory CopyWith$Variables$Mutation$ItemPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemPageEdit;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? manufactureMstrManufacturerId,
    String? manufactureCode,
    String? manufactureSharedAppellationsId,
    String? manufactureNameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? manufactureNameJa,
    String? manufactureNameEn,
    String? manufacturePronunciationSharedDictionaryId,
    String? manufacturePronunciationJa,
    String? manufacturePronunciationEn,
    String? manufactureNicknameSharedDictionaryId,
    String? manufactureNicknameJa,
    String? manufactureNicknameEn,
    String? manufactureRemarks,
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
    String? labelCode,
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? sharedUnitId,
    String? mstrItemLotId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ItemPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemPageEdit(this._instance, this._then);

  final Variables$Mutation$ItemPageEdit _instance;

  final TRes Function(Variables$Mutation$ItemPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? manufactureMstrManufacturerId = _undefined,
    Object? manufactureCode = _undefined,
    Object? manufactureSharedAppellationsId = _undefined,
    Object? manufactureNameSharedDictionaryId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? manufactureNameJa = _undefined,
    Object? manufactureNameEn = _undefined,
    Object? manufacturePronunciationSharedDictionaryId = _undefined,
    Object? manufacturePronunciationJa = _undefined,
    Object? manufacturePronunciationEn = _undefined,
    Object? manufactureNicknameSharedDictionaryId = _undefined,
    Object? manufactureNicknameJa = _undefined,
    Object? manufactureNicknameEn = _undefined,
    Object? manufactureRemarks = _undefined,
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
    Object? labelCode = _undefined,
    Object? detailTextsSharedTextId = _undefined,
    Object? detailTextsJa = _undefined,
    Object? detailTextsEn = _undefined,
    Object? sharedUnitId = _undefined,
    Object? mstrItemLotId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ItemPageEdit._({
      ..._instance._$data,
      if (mstrItemId != _undefined && mstrItemId != null)
        'mstrItemId': (mstrItemId as String),
      if (mstrItemKindId != _undefined)
        'mstrItemKindId': (mstrItemKindId as String?),
      if (code != _undefined) 'code': (code as String?),
      if (identification != _undefined)
        'identification': (identification as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (manufactureMstrManufacturerId != _undefined &&
          manufactureMstrManufacturerId != null)
        'manufactureMstrManufacturerId':
            (manufactureMstrManufacturerId as String),
      if (manufactureCode != _undefined)
        'manufactureCode': (manufactureCode as String?),
      if (manufactureSharedAppellationsId != _undefined &&
          manufactureSharedAppellationsId != null)
        'manufactureSharedAppellationsId':
            (manufactureSharedAppellationsId as String),
      if (manufactureNameSharedDictionaryId != _undefined &&
          manufactureNameSharedDictionaryId != null)
        'manufactureNameSharedDictionaryId':
            (manufactureNameSharedDictionaryId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
      if (manufactureNameJa != _undefined && manufactureNameJa != null)
        'manufactureNameJa': (manufactureNameJa as String),
      if (manufactureNameEn != _undefined && manufactureNameEn != null)
        'manufactureNameEn': (manufactureNameEn as String),
      if (manufacturePronunciationSharedDictionaryId != _undefined &&
          manufacturePronunciationSharedDictionaryId != null)
        'manufacturePronunciationSharedDictionaryId':
            (manufacturePronunciationSharedDictionaryId as String),
      if (manufacturePronunciationJa != _undefined &&
          manufacturePronunciationJa != null)
        'manufacturePronunciationJa': (manufacturePronunciationJa as String),
      if (manufacturePronunciationEn != _undefined &&
          manufacturePronunciationEn != null)
        'manufacturePronunciationEn': (manufacturePronunciationEn as String),
      if (manufactureNicknameSharedDictionaryId != _undefined &&
          manufactureNicknameSharedDictionaryId != null)
        'manufactureNicknameSharedDictionaryId':
            (manufactureNicknameSharedDictionaryId as String),
      if (manufactureNicknameJa != _undefined && manufactureNicknameJa != null)
        'manufactureNicknameJa': (manufactureNicknameJa as String),
      if (manufactureNicknameEn != _undefined && manufactureNicknameEn != null)
        'manufactureNicknameEn': (manufactureNicknameEn as String),
      if (manufactureRemarks != _undefined)
        'manufactureRemarks': (manufactureRemarks as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
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
      if (labelCode != _undefined) 'labelCode': (labelCode as String?),
      if (detailTextsSharedTextId != _undefined &&
          detailTextsSharedTextId != null)
        'detailTextsSharedTextId': (detailTextsSharedTextId as String),
      if (detailTextsJa != _undefined && detailTextsJa != null)
        'detailTextsJa': (detailTextsJa as String),
      if (detailTextsEn != _undefined && detailTextsEn != null)
        'detailTextsEn': (detailTextsEn as String),
      if (sharedUnitId != _undefined) 'sharedUnitId': (sharedUnitId as String?),
      if (mstrItemLotId != _undefined)
        'mstrItemLotId': (mstrItemLotId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemPageEdit(this._res);

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? manufactureMstrManufacturerId,
    String? manufactureCode,
    String? manufactureSharedAppellationsId,
    String? manufactureNameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? manufactureNameJa,
    String? manufactureNameEn,
    String? manufacturePronunciationSharedDictionaryId,
    String? manufacturePronunciationJa,
    String? manufacturePronunciationEn,
    String? manufactureNicknameSharedDictionaryId,
    String? manufactureNicknameJa,
    String? manufactureNicknameEn,
    String? manufactureRemarks,
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
    String? labelCode,
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? sharedUnitId,
    String? mstrItemLotId,
    String? remarks,
  }) => _res;
}

class Mutation$ItemPageEdit {
  Mutation$ItemPageEdit({
    this.updateMstrItemByMstrItemId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemByMstrItemId = json['updateMstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit(
      updateMstrItemByMstrItemId: l$updateMstrItemByMstrItemId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId.fromJson(
              (l$updateMstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId?
  updateMstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemByMstrItemId = updateMstrItemByMstrItemId;
    _resultData['updateMstrItemByMstrItemId'] = l$updateMstrItemByMstrItemId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemByMstrItemId = updateMstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMstrItemByMstrItemId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemPageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemByMstrItemId = updateMstrItemByMstrItemId;
    final lOther$updateMstrItemByMstrItemId = other.updateMstrItemByMstrItemId;
    if (l$updateMstrItemByMstrItemId != lOther$updateMstrItemByMstrItemId) {
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

extension UtilityExtension$Mutation$ItemPageEdit on Mutation$ItemPageEdit {
  CopyWith$Mutation$ItemPageEdit<Mutation$ItemPageEdit> get copyWith =>
      CopyWith$Mutation$ItemPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemPageEdit<TRes> {
  factory CopyWith$Mutation$ItemPageEdit(
    Mutation$ItemPageEdit instance,
    TRes Function(Mutation$ItemPageEdit) then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit;

  factory CopyWith$Mutation$ItemPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemPageEdit;

  TRes call({
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId?
    updateMstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId;
}

class _CopyWithImpl$Mutation$ItemPageEdit<TRes>
    implements CopyWith$Mutation$ItemPageEdit<TRes> {
  _CopyWithImpl$Mutation$ItemPageEdit(this._instance, this._then);

  final Mutation$ItemPageEdit _instance;

  final TRes Function(Mutation$ItemPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit(
      updateMstrItemByMstrItemId: updateMstrItemByMstrItemId == _undefined
          ? _instance.updateMstrItemByMstrItemId
          : (updateMstrItemByMstrItemId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId {
    final local$updateMstrItemByMstrItemId =
        _instance.updateMstrItemByMstrItemId;
    return local$updateMstrItemByMstrItemId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId(
            local$updateMstrItemByMstrItemId,
            (e) => call(updateMstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit<TRes>
    implements CopyWith$Mutation$ItemPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId?
    updateMstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId.stub(_res);
}

const documentNodeMutationItemPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemKindId')),
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
          variable: VariableNode(name: NameNode(value: 'identification')),
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
          variable: VariableNode(
            name: NameNode(value: 'manufactureMstrManufacturerId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'manufactureCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufactureSharedAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufactureNameSharedDictionaryId'),
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
          variable: VariableNode(name: NameNode(value: 'manufactureNameJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'manufactureNameEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufacturePronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufacturePronunciationJa'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufacturePronunciationEn'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufactureNicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufactureNicknameJa'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'manufactureNicknameEn'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'manufactureRemarks')),
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
          variable: VariableNode(name: NameNode(value: 'labelCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
          variable: VariableNode(name: NameNode(value: 'sharedUnitId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemLotId')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrItemByMstrItemId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemId'),
                      value: VariableNode(name: NameNode(value: 'mstrItemId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemKindId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemKindId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'identification'),
                            value: VariableNode(
                              name: NameNode(value: 'identification'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value: 'mstrManufacturerToMstrManufacturerId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateByMstrManufacturerId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'mstrManufacturerId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value:
                                                'manufactureMstrManufacturerId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'mstrManufacturerPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(value: 'code'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'manufactureCode',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedAppellationToNames',
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
                                                              value: 'manufactureSharedAppellationsId',
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
                                                                                value: 'manufactureNameSharedDictionaryId',
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
                                                                                        name: NameNode(value: 'deleteOthers'),
                                                                                        value: BooleanValueNode(value: true),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(value: 'create'),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufactureNameJa')),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufactureNameEn')),
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
                                                                                value: 'manufacturePronunciationSharedDictionaryId',
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
                                                                                        name: NameNode(value: 'deleteOthers'),
                                                                                        value: BooleanValueNode(value: true),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(value: 'create'),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufacturePronunciationJa')),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufacturePronunciationEn')),
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
                                                                                value: 'manufactureNicknameSharedDictionaryId',
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
                                                                                        name: NameNode(value: 'deleteOthers'),
                                                                                        value: BooleanValueNode(value: true),
                                                                                      ),
                                                                                      ObjectFieldNode(
                                                                                        name: NameNode(value: 'create'),
                                                                                        value: ListValueNode(
                                                                                          values: [
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufactureNicknameJa')),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            ObjectValueNode(
                                                                                              fields: [
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                                                                                  value: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
                                                                                                ),
                                                                                                ObjectFieldNode(
                                                                                                  name: NameNode(value: 'dictionaryValue'),
                                                                                                  value: VariableNode(name: NameNode(value: 'manufactureNicknameEn')),
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
                                              name: NameNode(value: 'remarks'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'manufactureRemarks',
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
                            name: NameNode(value: 'labelCode'),
                            value: VariableNode(
                              name: NameNode(value: 'labelCode'),
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
                            name: NameNode(value: 'sharedUnitId'),
                            value: VariableNode(
                              name: NameNode(value: 'sharedUnitId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemLotId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemLotId'),
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
                  name: NameNode(value: 'mstrItem'),
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
                        name: NameNode(value: 'mstrItemKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemKindByMstrItemKindId'),
                        alias: NameNode(value: 'kinds'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrItemKindId'),
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
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'labels'),
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'identification'),
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
                        name: NameNode(
                          value: 'mstrManufacturerByMstrManufacturerId',
                        ),
                        alias: NameNode(value: 'manufacture'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrManufacturerId'),
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
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'labels'),
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                        name: NameNode(value: 'labelCode'),
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
                        name: NameNode(value: 'sharedUnitId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedUnitBySharedUnitId'),
                        alias: NameNode(value: 'unit'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedUnitId'),
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                        name: NameNode(value: 'mstrItemLotId'),
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
Mutation$ItemPageEdit _parserFn$Mutation$ItemPageEdit(
  Map<String, dynamic> data,
) => Mutation$ItemPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemPageEdit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ItemPageEdit?,
);

class Options$Mutation$ItemPageEdit
    extends graphql.MutationOptions<Mutation$ItemPageEdit> {
  Options$Mutation$ItemPageEdit({
    String? operationName,
    required Variables$Mutation$ItemPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemPageEdit,
         parserFn: _parserFn$Mutation$ItemPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemPageEdit
    extends graphql.WatchQueryOptions<Mutation$ItemPageEdit> {
  WatchOptions$Mutation$ItemPageEdit({
    String? operationName,
    required Variables$Mutation$ItemPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemPageEdit,
       );
}

extension ClientExtension$Mutation$ItemPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemPageEdit>> mutate$ItemPageEdit(
    Options$Mutation$ItemPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemPageEdit> watchMutation$ItemPageEdit(
    WatchOptions$Mutation$ItemPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemPageEdit$HookResult {
  Mutation$ItemPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemPageEdit runMutation;

  final graphql.QueryResult<Mutation$ItemPageEdit> result;
}

Mutation$ItemPageEdit$HookResult useMutation$ItemPageEdit([
  WidgetOptions$Mutation$ItemPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemPageEdit(),
  );
  return Mutation$ItemPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemPageEdit> useWatchMutation$ItemPageEdit(
  WatchOptions$Mutation$ItemPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemPageEdit
    extends graphql.MutationOptions<Mutation$ItemPageEdit> {
  WidgetOptions$Mutation$ItemPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemPageEdit,
         parserFn: _parserFn$Mutation$ItemPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemPageEdit =
    graphql.MultiSourceResult<Mutation$ItemPageEdit> Function(
      Variables$Mutation$ItemPageEdit, {
      Object? optimisticResult,
      Mutation$ItemPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemPageEdit = widgets.Widget Function(
  RunMutation$Mutation$ItemPageEdit,
  graphql.QueryResult<Mutation$ItemPageEdit>?,
);

class Mutation$ItemPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemPageEdit> {
  Mutation$ItemPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemPageEdit? options,
    required Builder$Mutation$ItemPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemPageEdit(),
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

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId({
    this.mstrItem,
    this.$__typename = 'UpdateMstrItemPayload',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItem = json['mstrItem'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId(
      mstrItem: l$mstrItem == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem.fromJson(
              (l$mstrItem as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItem = mstrItem;
    _resultData['mstrItem'] = l$mstrItem?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItem = mstrItem;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItem, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItem = mstrItem;
    final lOther$mstrItem = other.mstrItem;
    if (l$mstrItem != lOther$mstrItem) {
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId instance,
    TRes Function(Mutation$ItemPageEdit$updateMstrItemByMstrItemId) then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId;

  TRes call({
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes>
    implements CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes> {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId _instance;

  final TRes Function(Mutation$ItemPageEdit$updateMstrItemByMstrItemId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItem = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId(
      mstrItem: mstrItem == _undefined
          ? _instance.mstrItem
          : (mstrItem
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem {
    final local$mstrItem = _instance.mstrItem;
    return local$mstrItem == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
            local$mstrItem,
            (e) => call(mstrItem: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes>
    implements CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId<TRes> {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId(this._res);

  TRes _res;

  call({
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem({
    required this.mstrItemId,
    required this.mstrItemKindId,
    this.kinds,
    required this.code,
    this.identification,
    this.controlCode,
    this.manufacture,
    this.labels,
    this.labelCode,
    this.detailTexts,
    this.sharedUnitId,
    this.unit,
    this.mstrItemLotId,
    this.remarks,
    this.$__typename = 'MstrItem',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$kinds = json['kinds'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$controlCode = json['controlCode'];
    final l$manufacture = json['manufacture'];
    final l$labels = json['labels'];
    final l$labelCode = json['labelCode'];
    final l$detailTexts = json['detailTexts'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$mstrItemLotId = json['mstrItemLotId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
      mstrItemId: (l$mstrItemId as String),
      mstrItemKindId: (l$mstrItemKindId as String),
      kinds: l$kinds == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds.fromJson(
              (l$kinds as Map<String, dynamic>),
            ),
      code: (l$code as String),
      identification: (l$identification as String?),
      controlCode: (l$controlCode as String?),
      manufacture: l$manufacture == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture.fromJson(
              (l$manufacture as Map<String, dynamic>),
            ),
      labels: l$labels == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      labelCode: (l$labelCode as String?),
      detailTexts: l$detailTexts == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String?),
      unit: l$unit == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      mstrItemLotId: (l$mstrItemLotId as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String mstrItemKindId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds? kinds;

  final String code;

  final String? identification;

  final String? controlCode;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture?
  manufacture;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels?
  labels;

  final String? labelCode;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts?
  detailTexts;

  final String? sharedUnitId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit? unit;

  final String? mstrItemLotId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$kinds = kinds;
    _resultData['kinds'] = l$kinds?.toJson();
    final l$code = code;
    _resultData['code'] = l$code;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$manufacture = manufacture;
    _resultData['manufacture'] = l$manufacture?.toJson();
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$mstrItemLotId = mstrItemLotId;
    _resultData['mstrItemLotId'] = l$mstrItemLotId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemId = mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    final l$kinds = kinds;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$manufacture = manufacture;
    final l$labels = labels;
    final l$labelCode = labelCode;
    final l$detailTexts = detailTexts;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$mstrItemLotId = mstrItemLotId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemKindId,
      l$kinds,
      l$code,
      l$identification,
      l$controlCode,
      l$manufacture,
      l$labels,
      l$labelCode,
      l$detailTexts,
      l$sharedUnitId,
      l$unit,
      l$mstrItemLotId,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
      return false;
    }
    final l$kinds = kinds;
    final lOther$kinds = other.kinds;
    if (l$kinds != lOther$kinds) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (l$identification != lOther$identification) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$manufacture = manufacture;
    final lOther$manufacture = other.manufacture;
    if (l$manufacture != lOther$manufacture) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$mstrItemLotId = mstrItemLotId;
    final lOther$mstrItemLotId = other.mstrItemLotId;
    if (l$mstrItemLotId != lOther$mstrItemLotId) {
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem instance,
    TRes Function(Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem)
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds? kinds,
    String? code,
    String? identification,
    String? controlCode,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture?
    manufacture,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels? labels,
    String? labelCode,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts?
    detailTexts,
    String? sharedUnitId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit? unit,
    String? mstrItemLotId,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<TRes>
  get kinds;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
    TRes
  >
  get manufacture;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
    TRes
  >
  get detailTexts;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<TRes>
  get unit;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem _instance;

  final TRes Function(Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? kinds = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? manufacture = _undefined,
    Object? labels = _undefined,
    Object? labelCode = _undefined,
    Object? detailTexts = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? mstrItemLotId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      kinds: kinds == _undefined
          ? _instance.kinds
          : (kinds
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      manufacture: manufacture == _undefined
          ? _instance.manufacture
          : (manufacture
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts?),
      sharedUnitId: sharedUnitId == _undefined
          ? _instance.sharedUnitId
          : (sharedUnitId as String?),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit?),
      mstrItemLotId: mstrItemLotId == _undefined
          ? _instance.mstrItemLotId
          : (mstrItemLotId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<TRes>
  get kinds {
    final local$kinds = _instance.kinds;
    return local$kinds == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
            local$kinds,
            (e) => call(kinds: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
    TRes
  >
  get manufacture {
    final local$manufacture = _instance.manufacture;
    return local$manufacture == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
            local$manufacture,
            (e) => call(manufacture: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<TRes>
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds? kinds,
    String? code,
    String? identification,
    String? controlCode,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture?
    manufacture,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels? labels,
    String? labelCode,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts?
    detailTexts,
    String? sharedUnitId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit? unit,
    String? mstrItemLotId,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<TRes>
  get kinds =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
    TRes
  >
  get manufacture =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<TRes>
  get unit =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds({
    required this.mstrItemKindId,
    this.code,
    this.labels,
    this.$__typename = 'MstrItemKind',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      labels: l$labels == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemKindId, l$code, l$labels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds;

  TRes call({
    String? mstrItemKindId,
    String? code,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels.fromJson(
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
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels,
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
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture({
    required this.mstrManufacturerId,
    this.code,
    this.labels,
    this.remarks,
    this.$__typename = 'MstrManufacturer',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      code: (l$code as String?),
      labels: l$labels == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final String? code;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels?
  labels;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$code = code;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
      l$code,
      l$labels,
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture;

  TRes call({
    String? mstrManufacturerId,
    String? code,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels?
    labels,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? code,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels?
    labels,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels.fromJson(
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
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels,
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
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$manufacture$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels.fromJson(
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
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels,
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
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts;

  TRes call({
    String? sharedTextId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnitId = sharedUnitId;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedUnitId, l$labels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit;

  TRes call({
    String? sharedUnitId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels.fromJson(
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
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels
    on Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels,
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
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemPageEdit$updateMstrItemByMstrItemId$mstrItem$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
