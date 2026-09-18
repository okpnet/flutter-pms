import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$EquipmentInspectionKindEdit {
  factory Variables$Mutation$EquipmentInspectionKindEdit({
    required String mstrInspectionKindId,
    String? code,
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
  }) => Variables$Mutation$EquipmentInspectionKindEdit._({
    r'mstrInspectionKindId': mstrInspectionKindId,
    if (code != null) r'code': code,
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

  Variables$Mutation$EquipmentInspectionKindEdit._(this._$data);

  factory Variables$Mutation$EquipmentInspectionKindEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionKindId = data['mstrInspectionKindId'];
    result$data['mstrInspectionKindId'] = (l$mstrInspectionKindId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
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
    return Variables$Mutation$EquipmentInspectionKindEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionKindId => (_$data['mstrInspectionKindId'] as String);

  String? get code => (_$data['code'] as String?);

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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    result$data['mstrInspectionKindId'] = l$mstrInspectionKindId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
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

  CopyWith$Variables$Mutation$EquipmentInspectionKindEdit<
    Variables$Mutation$EquipmentInspectionKindEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$EquipmentInspectionKindEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$EquipmentInspectionKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final lOther$mstrInspectionKindId = other.mstrInspectionKindId;
    if (l$mstrInspectionKindId != lOther$mstrInspectionKindId) {
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$code = code;
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
      l$mstrInspectionKindId,
      _$data.containsKey('code') ? l$code : const {},
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

abstract class CopyWith$Variables$Mutation$EquipmentInspectionKindEdit<TRes> {
  factory CopyWith$Variables$Mutation$EquipmentInspectionKindEdit(
    Variables$Mutation$EquipmentInspectionKindEdit instance,
    TRes Function(Variables$Mutation$EquipmentInspectionKindEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$EquipmentInspectionKindEdit;

  factory CopyWith$Variables$Mutation$EquipmentInspectionKindEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionKindEdit;

  TRes call({
    String? mstrInspectionKindId,
    String? code,
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

class _CopyWithImpl$Variables$Mutation$EquipmentInspectionKindEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentInspectionKindEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$EquipmentInspectionKindEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EquipmentInspectionKindEdit _instance;

  final TRes Function(Variables$Mutation$EquipmentInspectionKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? code = _undefined,
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
    Variables$Mutation$EquipmentInspectionKindEdit._({
      ..._instance._$data,
      if (mstrInspectionKindId != _undefined && mstrInspectionKindId != null)
        'mstrInspectionKindId': (mstrInspectionKindId as String),
      if (code != _undefined) 'code': (code as String?),
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

class _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionKindEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentInspectionKindEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionKindEdit(this._res);

  TRes _res;

  call({
    String? mstrInspectionKindId,
    String? code,
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

class Mutation$EquipmentInspectionKindEdit {
  Mutation$EquipmentInspectionKindEdit({
    this.updateMstrInspectionKindByMstrInspectionKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EquipmentInspectionKindEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrInspectionKindByMstrInspectionKindId =
        json['updateMstrInspectionKindByMstrInspectionKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit(
      updateMstrInspectionKindByMstrInspectionKindId:
          l$updateMstrInspectionKindByMstrInspectionKindId == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId.fromJson(
              (l$updateMstrInspectionKindByMstrInspectionKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId?
  updateMstrInspectionKindByMstrInspectionKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrInspectionKindByMstrInspectionKindId =
        updateMstrInspectionKindByMstrInspectionKindId;
    _resultData['updateMstrInspectionKindByMstrInspectionKindId'] =
        l$updateMstrInspectionKindByMstrInspectionKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrInspectionKindByMstrInspectionKindId =
        updateMstrInspectionKindByMstrInspectionKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrInspectionKindByMstrInspectionKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$EquipmentInspectionKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrInspectionKindByMstrInspectionKindId =
        updateMstrInspectionKindByMstrInspectionKindId;
    final lOther$updateMstrInspectionKindByMstrInspectionKindId =
        other.updateMstrInspectionKindByMstrInspectionKindId;
    if (l$updateMstrInspectionKindByMstrInspectionKindId !=
        lOther$updateMstrInspectionKindByMstrInspectionKindId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit
    on Mutation$EquipmentInspectionKindEdit {
  CopyWith$Mutation$EquipmentInspectionKindEdit<
    Mutation$EquipmentInspectionKindEdit
  >
  get copyWith => CopyWith$Mutation$EquipmentInspectionKindEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit<TRes> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit(
    Mutation$EquipmentInspectionKindEdit instance,
    TRes Function(Mutation$EquipmentInspectionKindEdit) then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit;

  TRes call({
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId?
    updateMstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionKindEdit<TRes> {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit _instance;

  final TRes Function(Mutation$EquipmentInspectionKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrInspectionKindByMstrInspectionKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit(
      updateMstrInspectionKindByMstrInspectionKindId:
          updateMstrInspectionKindByMstrInspectionKindId == _undefined
          ? _instance.updateMstrInspectionKindByMstrInspectionKindId
          : (updateMstrInspectionKindByMstrInspectionKindId
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId {
    final local$updateMstrInspectionKindByMstrInspectionKindId =
        _instance.updateMstrInspectionKindByMstrInspectionKindId;
    return local$updateMstrInspectionKindByMstrInspectionKindId == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
            local$updateMstrInspectionKindByMstrInspectionKindId,
            (e) => call(updateMstrInspectionKindByMstrInspectionKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionKindEdit<TRes> {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit(this._res);

  TRes _res;

  call({
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId?
    updateMstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
        _res,
      );
}

const documentNodeMutationEquipmentInspectionKindEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'EquipmentInspectionKindEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrInspectionKindId')),
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
              value: 'updateMstrInspectionKindByMstrInspectionKindId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionKindId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrInspectionKindId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionKindPatch'),
                      value: ObjectValueNode(
                        fields: [
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
                  name: NameNode(value: 'mstrInspectionKind'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionKindId'),
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
                        name: NameNode(value: 'symbol'),
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
Mutation$EquipmentInspectionKindEdit
_parserFn$Mutation$EquipmentInspectionKindEdit(Map<String, dynamic> data) =>
    Mutation$EquipmentInspectionKindEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$EquipmentInspectionKindEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$EquipmentInspectionKindEdit?,
    );

class Options$Mutation$EquipmentInspectionKindEdit
    extends graphql.MutationOptions<Mutation$EquipmentInspectionKindEdit> {
  Options$Mutation$EquipmentInspectionKindEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionKindEdit>? update,
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
                     : _parserFn$Mutation$EquipmentInspectionKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionKindEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionKindEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionKindEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$EquipmentInspectionKindEdit
    extends graphql.WatchQueryOptions<Mutation$EquipmentInspectionKindEdit> {
  WatchOptions$Mutation$EquipmentInspectionKindEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionKindEdit? typedOptimisticResult,
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
         document: documentNodeMutationEquipmentInspectionKindEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$EquipmentInspectionKindEdit,
       );
}

extension ClientExtension$Mutation$EquipmentInspectionKindEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EquipmentInspectionKindEdit>>
  mutate$EquipmentInspectionKindEdit(
    Options$Mutation$EquipmentInspectionKindEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$EquipmentInspectionKindEdit>
  watchMutation$EquipmentInspectionKindEdit(
    WatchOptions$Mutation$EquipmentInspectionKindEdit options,
  ) => this.watchMutation(options);
}

class Mutation$EquipmentInspectionKindEdit$HookResult {
  Mutation$EquipmentInspectionKindEdit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$EquipmentInspectionKindEdit runMutation;

  final graphql.QueryResult<Mutation$EquipmentInspectionKindEdit> result;
}

Mutation$EquipmentInspectionKindEdit$HookResult
useMutation$EquipmentInspectionKindEdit([
  WidgetOptions$Mutation$EquipmentInspectionKindEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$EquipmentInspectionKindEdit(),
  );
  return Mutation$EquipmentInspectionKindEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EquipmentInspectionKindEdit>
useWatchMutation$EquipmentInspectionKindEdit(
  WatchOptions$Mutation$EquipmentInspectionKindEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$EquipmentInspectionKindEdit
    extends graphql.MutationOptions<Mutation$EquipmentInspectionKindEdit> {
  WidgetOptions$Mutation$EquipmentInspectionKindEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionKindEdit>? update,
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
                     : _parserFn$Mutation$EquipmentInspectionKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionKindEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionKindEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionKindEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$EquipmentInspectionKindEdit =
    graphql.MultiSourceResult<Mutation$EquipmentInspectionKindEdit> Function(
      Variables$Mutation$EquipmentInspectionKindEdit, {
      Object? optimisticResult,
      Mutation$EquipmentInspectionKindEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$EquipmentInspectionKindEdit =
    widgets.Widget Function(
      RunMutation$Mutation$EquipmentInspectionKindEdit,
      graphql.QueryResult<Mutation$EquipmentInspectionKindEdit>?,
    );

class Mutation$EquipmentInspectionKindEdit$Widget
    extends graphql_flutter.Mutation<Mutation$EquipmentInspectionKindEdit> {
  Mutation$EquipmentInspectionKindEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EquipmentInspectionKindEdit? options,
    required Builder$Mutation$EquipmentInspectionKindEdit builder,
  }) : super(
         key: key,
         options:
             options ?? WidgetOptions$Mutation$EquipmentInspectionKindEdit(),
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

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId({
    this.mstrInspectionKind,
    this.$__typename = 'UpdateMstrInspectionKindPayload',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKind = json['mstrInspectionKind'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKind: l$mstrInspectionKind == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.fromJson(
              (l$mstrInspectionKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
  mstrInspectionKind;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKind = mstrInspectionKind;
    _resultData['mstrInspectionKind'] = l$mstrInspectionKind?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionKind = mstrInspectionKind;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrInspectionKind, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKind = mstrInspectionKind;
    final lOther$mstrInspectionKind = other.mstrInspectionKind;
    if (l$mstrInspectionKind != lOther$mstrInspectionKind) {
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId;

  TRes call({
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
    mstrInspectionKind,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind;
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKind: mstrInspectionKind == _undefined
          ? _instance.mstrInspectionKind
          : (mstrInspectionKind
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind {
    final local$mstrInspectionKind = _instance.mstrInspectionKind;
    return local$mstrInspectionKind == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
            local$mstrInspectionKind,
            (e) => call(mstrInspectionKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
    mstrInspectionKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind({
    required this.mstrInspectionKindId,
    required this.code,
    this.remarks,
    this.symbol,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrInspectionKind',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKindId = json['mstrInspectionKindId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
      mstrInspectionKindId: (l$mstrInspectionKindId as String),
      code: (l$code as String),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionKindId;

  final String code;

  final String? remarks;

  final String? symbol;

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    _resultData['mstrInspectionKindId'] = l$mstrInspectionKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionKindId,
      l$code,
      l$remarks,
      l$symbol,
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
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final lOther$mstrInspectionKindId = other.mstrInspectionKindId;
    if (l$mstrInspectionKindId != lOther$mstrInspectionKindId) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind;

  TRes call({
    String? mstrInspectionKindId,
    String? code,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
      mstrInspectionKindId:
          mstrInspectionKindId == _undefined || mstrInspectionKindId == null
          ? _instance.mstrInspectionKindId
          : (mstrInspectionKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionKindId,
    String? code,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId,
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
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionKindEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
