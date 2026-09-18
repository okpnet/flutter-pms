import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$EquipmentInspectionOperationEditorEdit {
  factory Variables$Mutation$EquipmentInspectionOperationEditorEdit({
    required String mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? remarks,
    String? symbol,
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
  }) => Variables$Mutation$EquipmentInspectionOperationEditorEdit._({
    r'mstrInspectionOperationId': mstrInspectionOperationId,
    if (code != null) r'code': code,
    if (mstrEquipmentId != null) r'mstrEquipmentId': mstrEquipmentId,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
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

  Variables$Mutation$EquipmentInspectionOperationEditorEdit._(this._$data);

  factory Variables$Mutation$EquipmentInspectionOperationEditorEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionOperationId = data['mstrInspectionOperationId'];
    result$data['mstrInspectionOperationId'] =
        (l$mstrInspectionOperationId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('mstrEquipmentId')) {
      final l$mstrEquipmentId = data['mstrEquipmentId'];
      result$data['mstrEquipmentId'] = (l$mstrEquipmentId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
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
    return Variables$Mutation$EquipmentInspectionOperationEditorEdit._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionOperationId =>
      (_$data['mstrInspectionOperationId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get mstrEquipmentId => (_$data['mstrEquipmentId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

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
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    result$data['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('mstrEquipmentId')) {
      final l$mstrEquipmentId = mstrEquipmentId;
      result$data['mstrEquipmentId'] = l$mstrEquipmentId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    if (_$data.containsKey('symbol')) {
      final l$symbol = symbol;
      result$data['symbol'] = l$symbol;
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

  CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
    Variables$Mutation$EquipmentInspectionOperationEditorEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$EquipmentInspectionOperationEditorEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
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
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (_$data.containsKey('mstrEquipmentId') !=
        other._$data.containsKey('mstrEquipmentId')) {
      return false;
    }
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (_$data.containsKey('symbol') != other._$data.containsKey('symbol')) {
      return false;
    }
    if (l$symbol != lOther$symbol) {
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
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$code = code;
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$remarks = remarks;
    final l$symbol = symbol;
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
      l$mstrInspectionOperationId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('mstrEquipmentId') ? l$mstrEquipmentId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
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

abstract class CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
  TRes
> {
  factory CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit(
    Variables$Mutation$EquipmentInspectionOperationEditorEdit instance,
    TRes Function(Variables$Mutation$EquipmentInspectionOperationEditorEdit)
    then,
  ) = _CopyWithImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit;

  factory CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit;

  TRes call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? remarks,
    String? symbol,
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

class _CopyWithImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
  TRes
>
    implements
        CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
          TRes
        > {
  _CopyWithImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EquipmentInspectionOperationEditorEdit _instance;

  final TRes Function(Variables$Mutation$EquipmentInspectionOperationEditorEdit)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationId = _undefined,
    Object? code = _undefined,
    Object? mstrEquipmentId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
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
    Variables$Mutation$EquipmentInspectionOperationEditorEdit._({
      ..._instance._$data,
      if (mstrInspectionOperationId != _undefined &&
          mstrInspectionOperationId != null)
        'mstrInspectionOperationId': (mstrInspectionOperationId as String),
      if (code != _undefined) 'code': (code as String?),
      if (mstrEquipmentId != _undefined)
        'mstrEquipmentId': (mstrEquipmentId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
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

class _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
  TRes
>
    implements
        CopyWith$Variables$Mutation$EquipmentInspectionOperationEditorEdit<
          TRes
        > {
  _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionOperationEditorEdit(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? remarks,
    String? symbol,
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

class Mutation$EquipmentInspectionOperationEditorEdit {
  Mutation$EquipmentInspectionOperationEditorEdit({
    this.updateMstrInspectionOperationByMstrInspectionOperationId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrInspectionOperationByMstrInspectionOperationId =
        json['updateMstrInspectionOperationByMstrInspectionOperationId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit(
      updateMstrInspectionOperationByMstrInspectionOperationId:
          l$updateMstrInspectionOperationByMstrInspectionOperationId == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId.fromJson(
              (l$updateMstrInspectionOperationByMstrInspectionOperationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId?
  updateMstrInspectionOperationByMstrInspectionOperationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrInspectionOperationByMstrInspectionOperationId =
        updateMstrInspectionOperationByMstrInspectionOperationId;
    _resultData['updateMstrInspectionOperationByMstrInspectionOperationId'] =
        l$updateMstrInspectionOperationByMstrInspectionOperationId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrInspectionOperationByMstrInspectionOperationId =
        updateMstrInspectionOperationByMstrInspectionOperationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrInspectionOperationByMstrInspectionOperationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$EquipmentInspectionOperationEditorEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrInspectionOperationByMstrInspectionOperationId =
        updateMstrInspectionOperationByMstrInspectionOperationId;
    final lOther$updateMstrInspectionOperationByMstrInspectionOperationId =
        other.updateMstrInspectionOperationByMstrInspectionOperationId;
    if (l$updateMstrInspectionOperationByMstrInspectionOperationId !=
        lOther$updateMstrInspectionOperationByMstrInspectionOperationId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit
    on Mutation$EquipmentInspectionOperationEditorEdit {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit<
    Mutation$EquipmentInspectionOperationEditorEdit
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit<TRes> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit(
    Mutation$EquipmentInspectionOperationEditorEdit instance,
    TRes Function(Mutation$EquipmentInspectionOperationEditorEdit) then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit;

  TRes call({
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId?
    updateMstrInspectionOperationByMstrInspectionOperationId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get updateMstrInspectionOperationByMstrInspectionOperationId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionOperationEditorEdit<TRes> {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit _instance;

  final TRes Function(Mutation$EquipmentInspectionOperationEditorEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrInspectionOperationByMstrInspectionOperationId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit(
      updateMstrInspectionOperationByMstrInspectionOperationId:
          updateMstrInspectionOperationByMstrInspectionOperationId == _undefined
          ? _instance.updateMstrInspectionOperationByMstrInspectionOperationId
          : (updateMstrInspectionOperationByMstrInspectionOperationId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get updateMstrInspectionOperationByMstrInspectionOperationId {
    final local$updateMstrInspectionOperationByMstrInspectionOperationId =
        _instance.updateMstrInspectionOperationByMstrInspectionOperationId;
    return local$updateMstrInspectionOperationByMstrInspectionOperationId ==
            null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
            local$updateMstrInspectionOperationByMstrInspectionOperationId,
            (e) => call(
              updateMstrInspectionOperationByMstrInspectionOperationId: e,
            ),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionOperationEditorEdit<TRes> {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit(this._res);

  TRes _res;

  call({
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId?
    updateMstrInspectionOperationByMstrInspectionOperationId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get updateMstrInspectionOperationByMstrInspectionOperationId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId.stub(
        _res,
      );
}

const documentNodeMutationEquipmentInspectionOperationEditorEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'EquipmentInspectionOperationEditorEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrInspectionOperationId'),
          ),
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
          variable: VariableNode(name: NameNode(value: 'mstrEquipmentId')),
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
          variable: VariableNode(name: NameNode(value: 'symbol')),
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
            name: NameNode(
              value: 'updateMstrInspectionOperationByMstrInspectionOperationId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionOperationId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrInspectionOperationId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionOperationPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrEquipmentId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrEquipmentId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'symbol'),
                            value: VariableNode(
                              name: NameNode(value: 'symbol'),
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
                  name: NameNode(value: 'mstrInspectionOperation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionOperationId'),
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
                        name: NameNode(value: 'mstrEquipmentId'),
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
                        name: NameNode(value: 'symbol'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'mstrInspectionOperationTasksByMstrInspectionOperationId',
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
                                      value: 'mstrInspectionOperationTaskId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrInspectionId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sequence'),
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
Mutation$EquipmentInspectionOperationEditorEdit
_parserFn$Mutation$EquipmentInspectionOperationEditorEdit(
  Map<String, dynamic> data,
) => Mutation$EquipmentInspectionOperationEditorEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$EquipmentInspectionOperationEditorEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$EquipmentInspectionOperationEditorEdit?,
    );

class Options$Mutation$EquipmentInspectionOperationEditorEdit
    extends
        graphql.MutationOptions<
          Mutation$EquipmentInspectionOperationEditorEdit
        > {
  Options$Mutation$EquipmentInspectionOperationEditorEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionOperationEditorEdit
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionOperationEditorEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionOperationEditorEdit?
    onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionOperationEditorEdit>?
    update,
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
                     : _parserFn$Mutation$EquipmentInspectionOperationEditorEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionOperationEditorEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionOperationEditorEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionOperationEditorEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$EquipmentInspectionOperationEditorEdit
    extends
        graphql.WatchQueryOptions<
          Mutation$EquipmentInspectionOperationEditorEdit
        > {
  WatchOptions$Mutation$EquipmentInspectionOperationEditorEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionOperationEditorEdit
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionOperationEditorEdit? typedOptimisticResult,
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
         document: documentNodeMutationEquipmentInspectionOperationEditorEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$EquipmentInspectionOperationEditorEdit,
       );
}

extension ClientExtension$Mutation$EquipmentInspectionOperationEditorEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EquipmentInspectionOperationEditorEdit>>
  mutate$EquipmentInspectionOperationEditorEdit(
    Options$Mutation$EquipmentInspectionOperationEditorEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$EquipmentInspectionOperationEditorEdit>
  watchMutation$EquipmentInspectionOperationEditorEdit(
    WatchOptions$Mutation$EquipmentInspectionOperationEditorEdit options,
  ) => this.watchMutation(options);
}

class Mutation$EquipmentInspectionOperationEditorEdit$HookResult {
  Mutation$EquipmentInspectionOperationEditorEdit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$EquipmentInspectionOperationEditorEdit runMutation;

  final graphql.QueryResult<Mutation$EquipmentInspectionOperationEditorEdit>
  result;
}

Mutation$EquipmentInspectionOperationEditorEdit$HookResult
useMutation$EquipmentInspectionOperationEditorEdit([
  WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit(),
  );
  return Mutation$EquipmentInspectionOperationEditorEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EquipmentInspectionOperationEditorEdit>
useWatchMutation$EquipmentInspectionOperationEditorEdit(
  WatchOptions$Mutation$EquipmentInspectionOperationEditorEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit
    extends
        graphql.MutationOptions<
          Mutation$EquipmentInspectionOperationEditorEdit
        > {
  WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionOperationEditorEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionOperationEditorEdit?
    onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionOperationEditorEdit>?
    update,
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
                     : _parserFn$Mutation$EquipmentInspectionOperationEditorEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionOperationEditorEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionOperationEditorEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionOperationEditorEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$EquipmentInspectionOperationEditorEdit =
    graphql.MultiSourceResult<Mutation$EquipmentInspectionOperationEditorEdit>
    Function(
      Variables$Mutation$EquipmentInspectionOperationEditorEdit, {
      Object? optimisticResult,
      Mutation$EquipmentInspectionOperationEditorEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$EquipmentInspectionOperationEditorEdit =
    widgets.Widget Function(
      RunMutation$Mutation$EquipmentInspectionOperationEditorEdit,
      graphql.QueryResult<Mutation$EquipmentInspectionOperationEditorEdit>?,
    );

class Mutation$EquipmentInspectionOperationEditorEdit$Widget
    extends
        graphql_flutter.Mutation<
          Mutation$EquipmentInspectionOperationEditorEdit
        > {
  Mutation$EquipmentInspectionOperationEditorEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit? options,
    required Builder$Mutation$EquipmentInspectionOperationEditorEdit builder,
  }) : super(
         key: key,
         options:
             options ??
             WidgetOptions$Mutation$EquipmentInspectionOperationEditorEdit(),
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

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId({
    this.mstrInspectionOperation,
    this.$__typename = 'UpdateMstrInspectionOperationPayload',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperation = json['mstrInspectionOperation'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
      mstrInspectionOperation: l$mstrInspectionOperation == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.fromJson(
              (l$mstrInspectionOperation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation?
  mstrInspectionOperation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperation = mstrInspectionOperation;
    _resultData['mstrInspectionOperation'] = l$mstrInspectionOperation
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionOperation = mstrInspectionOperation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrInspectionOperation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperation = mstrInspectionOperation;
    final lOther$mstrInspectionOperation = other.mstrInspectionOperation;
    if (l$mstrInspectionOperation != lOther$mstrInspectionOperation) {
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId;

  TRes call({
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation?
    mstrInspectionOperation,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
    TRes
  >
  get mstrInspectionOperation;
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
      mstrInspectionOperation: mstrInspectionOperation == _undefined
          ? _instance.mstrInspectionOperation
          : (mstrInspectionOperation
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
    TRes
  >
  get mstrInspectionOperation {
    final local$mstrInspectionOperation = _instance.mstrInspectionOperation;
    return local$mstrInspectionOperation == null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
            local$mstrInspectionOperation,
            (e) => call(mstrInspectionOperation: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation?
    mstrInspectionOperation,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
    TRes
  >
  get mstrInspectionOperation =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation({
    required this.mstrInspectionOperationId,
    required this.code,
    required this.mstrEquipmentId,
    this.remarks,
    this.symbol,
    required this.mstrInspectionOperationTasksByMstrInspectionOperationId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrInspectionOperation',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationId = json['mstrInspectionOperationId'];
    final l$code = json['code'];
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        json['mstrInspectionOperationTasksByMstrInspectionOperationId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
      mstrInspectionOperationId: (l$mstrInspectionOperationId as String),
      code: (l$code as String),
      mstrEquipmentId: (l$mstrEquipmentId as String),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      mstrInspectionOperationTasksByMstrInspectionOperationId:
          Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId.fromJson(
            (l$mstrInspectionOperationTasksByMstrInspectionOperationId
                as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationId;

  final String code;

  final String mstrEquipmentId;

  final String? remarks;

  final String? symbol;

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId
  mstrInspectionOperationTasksByMstrInspectionOperationId;

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    _resultData['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    _resultData['mstrInspectionOperationTasksByMstrInspectionOperationId'] =
        l$mstrInspectionOperationTasksByMstrInspectionOperationId.toJson();
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
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$code = code;
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationId,
      l$code,
      l$mstrEquipmentId,
      l$remarks,
      l$symbol,
      l$mstrInspectionOperationTasksByMstrInspectionOperationId,
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    final lOther$mstrInspectionOperationTasksByMstrInspectionOperationId =
        other.mstrInspectionOperationTasksByMstrInspectionOperationId;
    if (l$mstrInspectionOperationTasksByMstrInspectionOperationId !=
        lOther$mstrInspectionOperationTasksByMstrInspectionOperationId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation;

  TRes call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId?
    mstrInspectionOperationTasksByMstrInspectionOperationId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId;
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationId = _undefined,
    Object? code = _undefined,
    Object? mstrEquipmentId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? mstrInspectionOperationTasksByMstrInspectionOperationId =
        _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
      mstrInspectionOperationId:
          mstrInspectionOperationId == _undefined ||
              mstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationId
          : (mstrInspectionOperationId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      mstrInspectionOperationTasksByMstrInspectionOperationId:
          mstrInspectionOperationTasksByMstrInspectionOperationId ==
                  _undefined ||
              mstrInspectionOperationTasksByMstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationTasksByMstrInspectionOperationId
          : (mstrInspectionOperationTasksByMstrInspectionOperationId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId {
    final local$mstrInspectionOperationTasksByMstrInspectionOperationId =
        _instance.mstrInspectionOperationTasksByMstrInspectionOperationId;
    return CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
      local$mstrInspectionOperationTasksByMstrInspectionOperationId,
      (e) => call(mstrInspectionOperationTasksByMstrInspectionOperationId: e),
    );
  }

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId?
    mstrInspectionOperationTasksByMstrInspectionOperationId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId({
    required this.nodes,
    this.$__typename = 'MstrInspectionOperationTasksConnection',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId;

  TRes call({
    List<
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
          Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
          Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes({
    required this.mstrInspectionOperationTaskId,
    required this.mstrInspectionId,
    this.sequence,
    this.$__typename = 'MstrInspectionOperationTask',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationTaskId =
        json['mstrInspectionOperationTaskId'];
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$sequence = json['sequence'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
      mstrInspectionOperationTaskId:
          (l$mstrInspectionOperationTaskId as String),
      mstrInspectionId: (l$mstrInspectionId as String),
      sequence: (l$sequence as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationTaskId;

  final String mstrInspectionId;

  final int? sequence;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    _resultData['mstrInspectionOperationTaskId'] =
        l$mstrInspectionOperationTaskId;
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final l$mstrInspectionId = mstrInspectionId;
    final l$sequence = sequence;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationTaskId,
      l$mstrInspectionId,
      l$sequence,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final lOther$mstrInspectionOperationTaskId =
        other.mstrInspectionOperationTaskId;
    if (l$mstrInspectionOperationTaskId !=
        lOther$mstrInspectionOperationTaskId) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes;

  TRes call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionId,
    int? sequence,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationTaskId = _undefined,
    Object? mstrInspectionId = _undefined,
    Object? sequence = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
      mstrInspectionOperationTaskId:
          mstrInspectionOperationTaskId == _undefined ||
              mstrInspectionOperationTaskId == null
          ? _instance.mstrInspectionOperationTaskId
          : (mstrInspectionOperationTaskId as String),
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$mstrInspectionOperationTasksByMstrInspectionOperationId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionId,
    int? sequence,
    String? $__typename,
  }) => _res;
}

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId,
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
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionOperationEditorEdit$updateMstrInspectionOperationByMstrInspectionOperationId$mstrInspectionOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
