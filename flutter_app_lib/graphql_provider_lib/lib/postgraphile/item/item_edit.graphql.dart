import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemEdit {
  factory Variables$Mutation$ItemEdit({
    required String mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? mstrManufacturerId,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
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
  }) => Variables$Mutation$ItemEdit._({
    r'mstrItemId': mstrItemId,
    if (mstrItemKindId != null) r'mstrItemKindId': mstrItemKindId,
    if (code != null) r'code': code,
    if (identification != null) r'identification': identification,
    if (controlCode != null) r'controlCode': controlCode,
    if (mstrManufacturerId != null) r'mstrManufacturerId': mstrManufacturerId,
    if (labelCode != null) r'labelCode': labelCode,
    if (description != null) r'description': description,
    if (lot != null) r'lot': lot,
    if (stockQuantity != null) r'stockQuantity': stockQuantity,
    if (sharedUnitId != null) r'sharedUnitId': sharedUnitId,
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
  });

  Variables$Mutation$ItemEdit._(this._$data);

  factory Variables$Mutation$ItemEdit.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('mstrManufacturerId')) {
      final l$mstrManufacturerId = data['mstrManufacturerId'];
      result$data['mstrManufacturerId'] = (l$mstrManufacturerId as String?);
    }
    if (data.containsKey('labelCode')) {
      final l$labelCode = data['labelCode'];
      result$data['labelCode'] = (l$labelCode as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('lot')) {
      final l$lot = data['lot'];
      result$data['lot'] = (l$lot as bool?);
    }
    if (data.containsKey('stockQuantity')) {
      final l$stockQuantity = data['stockQuantity'];
      result$data['stockQuantity'] = (l$stockQuantity as String?);
    }
    if (data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = data['sharedUnitId'];
      result$data['sharedUnitId'] = (l$sharedUnitId as String?);
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
    return Variables$Mutation$ItemEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemId => (_$data['mstrItemId'] as String);

  String? get mstrItemKindId => (_$data['mstrItemKindId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get identification => (_$data['identification'] as String?);

  String? get controlCode => (_$data['controlCode'] as String?);

  String? get mstrManufacturerId => (_$data['mstrManufacturerId'] as String?);

  String? get labelCode => (_$data['labelCode'] as String?);

  String? get description => (_$data['description'] as String?);

  bool? get lot => (_$data['lot'] as bool?);

  String? get stockQuantity => (_$data['stockQuantity'] as String?);

  String? get sharedUnitId => (_$data['sharedUnitId'] as String?);

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
    if (_$data.containsKey('mstrManufacturerId')) {
      final l$mstrManufacturerId = mstrManufacturerId;
      result$data['mstrManufacturerId'] = l$mstrManufacturerId;
    }
    if (_$data.containsKey('labelCode')) {
      final l$labelCode = labelCode;
      result$data['labelCode'] = l$labelCode;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('lot')) {
      final l$lot = lot;
      result$data['lot'] = l$lot;
    }
    if (_$data.containsKey('stockQuantity')) {
      final l$stockQuantity = stockQuantity;
      result$data['stockQuantity'] = l$stockQuantity;
    }
    if (_$data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = sharedUnitId;
      result$data['sharedUnitId'] = l$sharedUnitId;
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
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemEdit<Variables$Mutation$ItemEdit>
  get copyWith => CopyWith$Variables$Mutation$ItemEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemEdit ||
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (_$data.containsKey('mstrManufacturerId') !=
        other._$data.containsKey('mstrManufacturerId')) {
      return false;
    }
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$lot = lot;
    final lOther$lot = other.lot;
    if (_$data.containsKey('lot') != other._$data.containsKey('lot')) {
      return false;
    }
    if (l$lot != lOther$lot) {
      return false;
    }
    final l$stockQuantity = stockQuantity;
    final lOther$stockQuantity = other.stockQuantity;
    if (_$data.containsKey('stockQuantity') !=
        other._$data.containsKey('stockQuantity')) {
      return false;
    }
    if (l$stockQuantity != lOther$stockQuantity) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrItemId = mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$labelCode = labelCode;
    final l$description = description;
    final l$lot = lot;
    final l$stockQuantity = stockQuantity;
    final l$sharedUnitId = sharedUnitId;
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
    return Object.hashAll([
      l$mstrItemId,
      _$data.containsKey('mstrItemKindId') ? l$mstrItemKindId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('identification') ? l$identification : const {},
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      _$data.containsKey('mstrManufacturerId')
          ? l$mstrManufacturerId
          : const {},
      _$data.containsKey('labelCode') ? l$labelCode : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('lot') ? l$lot : const {},
      _$data.containsKey('stockQuantity') ? l$stockQuantity : const {},
      _$data.containsKey('sharedUnitId') ? l$sharedUnitId : const {},
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
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemEdit(
    Variables$Mutation$ItemEdit instance,
    TRes Function(Variables$Mutation$ItemEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemEdit;

  factory CopyWith$Variables$Mutation$ItemEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemEdit;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? mstrManufacturerId,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
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
  });
}

class _CopyWithImpl$Variables$Mutation$ItemEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemEdit(this._instance, this._then);

  final Variables$Mutation$ItemEdit _instance;

  final TRes Function(Variables$Mutation$ItemEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? mstrManufacturerId = _undefined,
    Object? labelCode = _undefined,
    Object? description = _undefined,
    Object? lot = _undefined,
    Object? stockQuantity = _undefined,
    Object? sharedUnitId = _undefined,
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
  }) => _then(
    Variables$Mutation$ItemEdit._({
      ..._instance._$data,
      if (mstrItemId != _undefined && mstrItemId != null)
        'mstrItemId': (mstrItemId as String),
      if (mstrItemKindId != _undefined)
        'mstrItemKindId': (mstrItemKindId as String?),
      if (code != _undefined) 'code': (code as String?),
      if (identification != _undefined)
        'identification': (identification as String?),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (mstrManufacturerId != _undefined)
        'mstrManufacturerId': (mstrManufacturerId as String?),
      if (labelCode != _undefined) 'labelCode': (labelCode as String?),
      if (description != _undefined) 'description': (description as String?),
      if (lot != _undefined) 'lot': (lot as bool?),
      if (stockQuantity != _undefined)
        'stockQuantity': (stockQuantity as String?),
      if (sharedUnitId != _undefined) 'sharedUnitId': (sharedUnitId as String?),
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
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemEdit(this._res);

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? mstrManufacturerId,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
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
  }) => _res;
}

class Mutation$ItemEdit {
  Mutation$ItemEdit({
    this.updateMstrItemByMstrItemId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemByMstrItemId = json['updateMstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit(
      updateMstrItemByMstrItemId: l$updateMstrItemByMstrItemId == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId.fromJson(
              (l$updateMstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemEdit$updateMstrItemByMstrItemId?
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
    if (other is! Mutation$ItemEdit || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ItemEdit on Mutation$ItemEdit {
  CopyWith$Mutation$ItemEdit<Mutation$ItemEdit> get copyWith =>
      CopyWith$Mutation$ItemEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemEdit<TRes> {
  factory CopyWith$Mutation$ItemEdit(
    Mutation$ItemEdit instance,
    TRes Function(Mutation$ItemEdit) then,
  ) = _CopyWithImpl$Mutation$ItemEdit;

  factory CopyWith$Mutation$ItemEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemEdit;

  TRes call({
    Mutation$ItemEdit$updateMstrItemByMstrItemId? updateMstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId;
}

class _CopyWithImpl$Mutation$ItemEdit<TRes>
    implements CopyWith$Mutation$ItemEdit<TRes> {
  _CopyWithImpl$Mutation$ItemEdit(this._instance, this._then);

  final Mutation$ItemEdit _instance;

  final TRes Function(Mutation$ItemEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit(
      updateMstrItemByMstrItemId: updateMstrItemByMstrItemId == _undefined
          ? _instance.updateMstrItemByMstrItemId
          : (updateMstrItemByMstrItemId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId {
    final local$updateMstrItemByMstrItemId =
        _instance.updateMstrItemByMstrItemId;
    return local$updateMstrItemByMstrItemId == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId(
            local$updateMstrItemByMstrItemId,
            (e) => call(updateMstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemEdit<TRes>
    implements CopyWith$Mutation$ItemEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemEdit$updateMstrItemByMstrItemId? updateMstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes>
  get updateMstrItemByMstrItemId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId.stub(_res);
}

const documentNodeMutationItemEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemEdit'),
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
          variable: VariableNode(name: NameNode(value: 'mstrManufacturerId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
          variable: VariableNode(name: NameNode(value: 'description')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lot')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stockQuantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
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
                            name: NameNode(value: 'mstrManufacturerId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrManufacturerId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'labelCode'),
                            value: VariableNode(
                              name: NameNode(value: 'labelCode'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'description'),
                            value: VariableNode(
                              name: NameNode(value: 'description'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'lot'),
                            value: VariableNode(name: NameNode(value: 'lot')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'stockQuantity'),
                            value: VariableNode(
                              name: NameNode(value: 'stockQuantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sharedUnitId'),
                            value: VariableNode(
                              name: NameNode(value: 'sharedUnitId'),
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
                        name: NameNode(value: 'mstrManufacturerId'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lot'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stockQuantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedUnitId'),
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
                        name: NameNode(value: 'mstrItemProvisionsByMstrItemId'),
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
                                      value: 'mstrItemProvisionId',
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
Mutation$ItemEdit _parserFn$Mutation$ItemEdit(Map<String, dynamic> data) =>
    Mutation$ItemEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ItemEdit?);

class Options$Mutation$ItemEdit
    extends graphql.MutationOptions<Mutation$ItemEdit> {
  Options$Mutation$ItemEdit({
    String? operationName,
    required Variables$Mutation$ItemEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemEdit,
         parserFn: _parserFn$Mutation$ItemEdit,
       );

  final OnMutationCompleted$Mutation$ItemEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemEdit
    extends graphql.WatchQueryOptions<Mutation$ItemEdit> {
  WatchOptions$Mutation$ItemEdit({
    String? operationName,
    required Variables$Mutation$ItemEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemEdit,
       );
}

extension ClientExtension$Mutation$ItemEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemEdit>> mutate$ItemEdit(
    Options$Mutation$ItemEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemEdit> watchMutation$ItemEdit(
    WatchOptions$Mutation$ItemEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemEdit$HookResult {
  Mutation$ItemEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemEdit runMutation;

  final graphql.QueryResult<Mutation$ItemEdit> result;
}

Mutation$ItemEdit$HookResult useMutation$ItemEdit([
  WidgetOptions$Mutation$ItemEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemEdit(),
  );
  return Mutation$ItemEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemEdit> useWatchMutation$ItemEdit(
  WatchOptions$Mutation$ItemEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemEdit
    extends graphql.MutationOptions<Mutation$ItemEdit> {
  WidgetOptions$Mutation$ItemEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemEdit,
         parserFn: _parserFn$Mutation$ItemEdit,
       );

  final OnMutationCompleted$Mutation$ItemEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemEdit =
    graphql.MultiSourceResult<Mutation$ItemEdit> Function(
      Variables$Mutation$ItemEdit, {
      Object? optimisticResult,
      Mutation$ItemEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ItemEdit,
      graphql.QueryResult<Mutation$ItemEdit>?,
    );

class Mutation$ItemEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemEdit> {
  Mutation$ItemEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemEdit? options,
    required Builder$Mutation$ItemEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemEdit(),
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

class Mutation$ItemEdit$updateMstrItemByMstrItemId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId({
    this.mstrItem,
    this.$__typename = 'UpdateMstrItemPayload',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItem = json['mstrItem'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId(
      mstrItem: l$mstrItem == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.fromJson(
              (l$mstrItem as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem;

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
    if (other is! Mutation$ItemEdit$updateMstrItemByMstrItemId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId
    on Mutation$ItemEdit$updateMstrItemByMstrItemId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId instance,
    TRes Function(Mutation$ItemEdit$updateMstrItemByMstrItemId) then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId;

  TRes call({
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem,
    String? $__typename,
  });
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem;
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes>
    implements CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes> {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId _instance;

  final TRes Function(Mutation$ItemEdit$updateMstrItemByMstrItemId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItem = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId(
      mstrItem: mstrItem == _undefined
          ? _instance.mstrItem
          : (mstrItem
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem {
    final local$mstrItem = _instance.mstrItem;
    return local$mstrItem == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
            local$mstrItem,
            (e) => call(mstrItem: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes>
    implements CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId<TRes> {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId(this._res);

  TRes _res;

  call({
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem? mstrItem,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
  get mstrItem =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.stub(_res);
}

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem({
    required this.mstrItemId,
    this.mstrItemKindId,
    required this.code,
    this.identification,
    this.controlCode,
    this.mstrManufacturerId,
    this.labelCode,
    this.description,
    this.lot,
    this.stockQuantity,
    this.sharedUnitId,
    this.remarks,
    required this.mstrItemProvisionsByMstrItemId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$controlCode = json['controlCode'];
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$labelCode = json['labelCode'];
    final l$description = json['description'];
    final l$lot = json['lot'];
    final l$stockQuantity = json['stockQuantity'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$remarks = json['remarks'];
    final l$mstrItemProvisionsByMstrItemId =
        json['mstrItemProvisionsByMstrItemId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
      mstrItemId: (l$mstrItemId as String),
      mstrItemKindId: (l$mstrItemKindId as String?),
      code: (l$code as String),
      identification: (l$identification as String?),
      controlCode: (l$controlCode as String?),
      mstrManufacturerId: (l$mstrManufacturerId as String?),
      labelCode: (l$labelCode as String?),
      description: (l$description as String?),
      lot: (l$lot as bool?),
      stockQuantity: (l$stockQuantity as String?),
      sharedUnitId: (l$sharedUnitId as String?),
      remarks: (l$remarks as String?),
      mstrItemProvisionsByMstrItemId:
          Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId.fromJson(
            (l$mstrItemProvisionsByMstrItemId as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String? mstrItemKindId;

  final String code;

  final String? identification;

  final String? controlCode;

  final String? mstrManufacturerId;

  final String? labelCode;

  final String? description;

  final bool? lot;

  final String? stockQuantity;

  final String? sharedUnitId;

  final String? remarks;

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId
  mstrItemProvisionsByMstrItemId;

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$lot = lot;
    _resultData['lot'] = l$lot;
    final l$stockQuantity = stockQuantity;
    _resultData['stockQuantity'] = l$stockQuantity;
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    _resultData['mstrItemProvisionsByMstrItemId'] =
        l$mstrItemProvisionsByMstrItemId.toJson();
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$labelCode = labelCode;
    final l$description = description;
    final l$lot = lot;
    final l$stockQuantity = stockQuantity;
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemKindId,
      l$code,
      l$identification,
      l$controlCode,
      l$mstrManufacturerId,
      l$labelCode,
      l$description,
      l$lot,
      l$stockQuantity,
      l$sharedUnitId,
      l$remarks,
      l$mstrItemProvisionsByMstrItemId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem ||
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
      return false;
    }
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$lot = lot;
    final lOther$lot = other.lot;
    if (l$lot != lOther$lot) {
      return false;
    }
    final l$stockQuantity = stockQuantity;
    final lOther$stockQuantity = other.stockQuantity;
    if (l$stockQuantity != lOther$stockQuantity) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    final lOther$mstrItemProvisionsByMstrItemId =
        other.mstrItemProvisionsByMstrItemId;
    if (l$mstrItemProvisionsByMstrItemId !=
        lOther$mstrItemProvisionsByMstrItemId) {
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem
    on Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem instance,
    TRes Function(Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem) then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? mstrManufacturerId,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
    String? remarks,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId?
    mstrItemProvisionsByMstrItemId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId;
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes> {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem _instance;

  final TRes Function(Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? mstrManufacturerId = _undefined,
    Object? labelCode = _undefined,
    Object? description = _undefined,
    Object? lot = _undefined,
    Object? stockQuantity = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? mstrItemProvisionsByMstrItemId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemKindId: mstrItemKindId == _undefined
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      mstrManufacturerId: mstrManufacturerId == _undefined
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      lot: lot == _undefined ? _instance.lot : (lot as bool?),
      stockQuantity: stockQuantity == _undefined
          ? _instance.stockQuantity
          : (stockQuantity as String?),
      sharedUnitId: sharedUnitId == _undefined
          ? _instance.sharedUnitId
          : (sharedUnitId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      mstrItemProvisionsByMstrItemId:
          mstrItemProvisionsByMstrItemId == _undefined ||
              mstrItemProvisionsByMstrItemId == null
          ? _instance.mstrItemProvisionsByMstrItemId
          : (mstrItemProvisionsByMstrItemId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId {
    final local$mstrItemProvisionsByMstrItemId =
        _instance.mstrItemProvisionsByMstrItemId;
    return CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
      local$mstrItemProvisionsByMstrItemId,
      (e) => call(mstrItemProvisionsByMstrItemId: e),
    );
  }

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem<TRes> {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? mstrManufacturerId,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
    String? remarks,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId?
    mstrItemProvisionsByMstrItemId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId.stub(
        _res,
      );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId({
    required this.nodes,
    this.$__typename = 'MstrItemProvisionsConnection',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId;

  TRes call({
    List<
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
          Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
          Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes({
    required this.mstrItemProvisionId,
    required this.infoProvisionId,
    this.$__typename = 'MstrItemProvision',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemProvisionId = json['mstrItemProvisionId'];
    final l$infoProvisionId = json['infoProvisionId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
      mstrItemProvisionId: (l$mstrItemProvisionId as String),
      infoProvisionId: (l$infoProvisionId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemProvisionId;

  final String infoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemProvisionId = mstrItemProvisionId;
    _resultData['mstrItemProvisionId'] = l$mstrItemProvisionId;
    final l$infoProvisionId = infoProvisionId;
    _resultData['infoProvisionId'] = l$infoProvisionId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemProvisionId = mstrItemProvisionId;
    final l$infoProvisionId = infoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemProvisionId,
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemProvisionId = mstrItemProvisionId;
    final lOther$mstrItemProvisionId = other.mstrItemProvisionId;
    if (l$mstrItemProvisionId != lOther$mstrItemProvisionId) {
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes;

  TRes call({
    String? mstrItemProvisionId,
    String? infoProvisionId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemProvisionId = _undefined,
    Object? infoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
      mstrItemProvisionId:
          mstrItemProvisionId == _undefined || mstrItemProvisionId == null
          ? _instance.mstrItemProvisionId
          : (mstrItemProvisionId as String),
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$mstrItemProvisionsByMstrItemId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemProvisionId,
    String? infoProvisionId,
    String? $__typename,
  }) => _res;
}

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId,
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
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemEdit$updateMstrItemByMstrItemId$mstrItem$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
