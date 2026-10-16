import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemSizeKindPageEdit {
  factory Variables$Mutation$ItemSizeKindPageEdit({
    required String mstrItemSizeKindId,
    String? code,
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
    String? sharedUnitId,
    String? remarks,
  }) => Variables$Mutation$ItemSizeKindPageEdit._({
    r'mstrItemSizeKindId': mstrItemSizeKindId,
    if (code != null) r'code': code,
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
    if (sharedUnitId != null) r'sharedUnitId': sharedUnitId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ItemSizeKindPageEdit._(this._$data);

  factory Variables$Mutation$ItemSizeKindPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemSizeKindId = data['mstrItemSizeKindId'];
    result$data['mstrItemSizeKindId'] = (l$mstrItemSizeKindId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
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
    if (data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = data['sharedUnitId'];
      result$data['sharedUnitId'] = (l$sharedUnitId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ItemSizeKindPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemSizeKindId => (_$data['mstrItemSizeKindId'] as String);

  String? get code => (_$data['code'] as String?);

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

  String? get sharedUnitId => (_$data['sharedUnitId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    result$data['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
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
    if (_$data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = sharedUnitId;
      result$data['sharedUnitId'] = l$sharedUnitId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemSizeKindPageEdit<
    Variables$Mutation$ItemSizeKindPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ItemSizeKindPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemSizeKindPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
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
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      _$data.containsKey('code') ? l$code : const {},
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
      _$data.containsKey('sharedUnitId') ? l$sharedUnitId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemSizeKindPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemSizeKindPageEdit(
    Variables$Mutation$ItemSizeKindPageEdit instance,
    TRes Function(Variables$Mutation$ItemSizeKindPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemSizeKindPageEdit;

  factory CopyWith$Variables$Mutation$ItemSizeKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemSizeKindPageEdit;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
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
    String? sharedUnitId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ItemSizeKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemSizeKindPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemSizeKindPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ItemSizeKindPageEdit _instance;

  final TRes Function(Variables$Mutation$ItemSizeKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
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
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ItemSizeKindPageEdit._({
      ..._instance._$data,
      if (mstrItemSizeKindId != _undefined && mstrItemSizeKindId != null)
        'mstrItemSizeKindId': (mstrItemSizeKindId as String),
      if (code != _undefined) 'code': (code as String?),
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
      if (sharedUnitId != _undefined) 'sharedUnitId': (sharedUnitId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemSizeKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemSizeKindPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemSizeKindPageEdit(this._res);

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
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
    String? sharedUnitId,
    String? remarks,
  }) => _res;
}

class Mutation$ItemSizeKindPageEdit {
  Mutation$ItemSizeKindPageEdit({
    this.updateMstrItemSizeKindByMstrItemSizeKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemSizeKindPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemSizeKindByMstrItemSizeKindId =
        json['updateMstrItemSizeKindByMstrItemSizeKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit(
      updateMstrItemSizeKindByMstrItemSizeKindId:
          l$updateMstrItemSizeKindByMstrItemSizeKindId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId.fromJson(
              (l$updateMstrItemSizeKindByMstrItemSizeKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId?
  updateMstrItemSizeKindByMstrItemSizeKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemSizeKindByMstrItemSizeKindId =
        updateMstrItemSizeKindByMstrItemSizeKindId;
    _resultData['updateMstrItemSizeKindByMstrItemSizeKindId'] =
        l$updateMstrItemSizeKindByMstrItemSizeKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemSizeKindByMstrItemSizeKindId =
        updateMstrItemSizeKindByMstrItemSizeKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrItemSizeKindByMstrItemSizeKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemSizeKindPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemSizeKindByMstrItemSizeKindId =
        updateMstrItemSizeKindByMstrItemSizeKindId;
    final lOther$updateMstrItemSizeKindByMstrItemSizeKindId =
        other.updateMstrItemSizeKindByMstrItemSizeKindId;
    if (l$updateMstrItemSizeKindByMstrItemSizeKindId !=
        lOther$updateMstrItemSizeKindByMstrItemSizeKindId) {
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit
    on Mutation$ItemSizeKindPageEdit {
  CopyWith$Mutation$ItemSizeKindPageEdit<Mutation$ItemSizeKindPageEdit>
  get copyWith => CopyWith$Mutation$ItemSizeKindPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit<TRes> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit(
    Mutation$ItemSizeKindPageEdit instance,
    TRes Function(Mutation$ItemSizeKindPageEdit) then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit;

  factory CopyWith$Mutation$ItemSizeKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit;

  TRes call({
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId?
    updateMstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get updateMstrItemSizeKindByMstrItemSizeKindId;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit<TRes>
    implements CopyWith$Mutation$ItemSizeKindPageEdit<TRes> {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit(this._instance, this._then);

  final Mutation$ItemSizeKindPageEdit _instance;

  final TRes Function(Mutation$ItemSizeKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemSizeKindByMstrItemSizeKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit(
      updateMstrItemSizeKindByMstrItemSizeKindId:
          updateMstrItemSizeKindByMstrItemSizeKindId == _undefined
          ? _instance.updateMstrItemSizeKindByMstrItemSizeKindId
          : (updateMstrItemSizeKindByMstrItemSizeKindId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get updateMstrItemSizeKindByMstrItemSizeKindId {
    final local$updateMstrItemSizeKindByMstrItemSizeKindId =
        _instance.updateMstrItemSizeKindByMstrItemSizeKindId;
    return local$updateMstrItemSizeKindByMstrItemSizeKindId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
            local$updateMstrItemSizeKindByMstrItemSizeKindId,
            (e) => call(updateMstrItemSizeKindByMstrItemSizeKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit<TRes>
    implements CopyWith$Mutation$ItemSizeKindPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId?
    updateMstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get updateMstrItemSizeKindByMstrItemSizeKindId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId.stub(
        _res,
      );
}

const documentNodeMutationItemSizeKindPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemSizeKindPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemSizeKindId')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrItemSizeKindByMstrItemSizeKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemSizeKindId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrItemSizeKindId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemSizeKindPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
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
                  name: NameNode(value: 'mstrItemSizeKind'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrItemSizeKindId'),
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value:
                                                          'sharedLanguageCodeId',
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
Mutation$ItemSizeKindPageEdit _parserFn$Mutation$ItemSizeKindPageEdit(
  Map<String, dynamic> data,
) => Mutation$ItemSizeKindPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemSizeKindPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ItemSizeKindPageEdit?,
    );

class Options$Mutation$ItemSizeKindPageEdit
    extends graphql.MutationOptions<Mutation$ItemSizeKindPageEdit> {
  Options$Mutation$ItemSizeKindPageEdit({
    String? operationName,
    required Variables$Mutation$ItemSizeKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizeKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemSizeKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemSizeKindPageEdit>? update,
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
                     : _parserFn$Mutation$ItemSizeKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemSizeKindPageEdit,
         parserFn: _parserFn$Mutation$ItemSizeKindPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemSizeKindPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemSizeKindPageEdit
    extends graphql.WatchQueryOptions<Mutation$ItemSizeKindPageEdit> {
  WatchOptions$Mutation$ItemSizeKindPageEdit({
    String? operationName,
    required Variables$Mutation$ItemSizeKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizeKindPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemSizeKindPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemSizeKindPageEdit,
       );
}

extension ClientExtension$Mutation$ItemSizeKindPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemSizeKindPageEdit>>
  mutate$ItemSizeKindPageEdit(
    Options$Mutation$ItemSizeKindPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemSizeKindPageEdit>
  watchMutation$ItemSizeKindPageEdit(
    WatchOptions$Mutation$ItemSizeKindPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemSizeKindPageEdit$HookResult {
  Mutation$ItemSizeKindPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemSizeKindPageEdit runMutation;

  final graphql.QueryResult<Mutation$ItemSizeKindPageEdit> result;
}

Mutation$ItemSizeKindPageEdit$HookResult useMutation$ItemSizeKindPageEdit([
  WidgetOptions$Mutation$ItemSizeKindPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemSizeKindPageEdit(),
  );
  return Mutation$ItemSizeKindPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemSizeKindPageEdit>
useWatchMutation$ItemSizeKindPageEdit(
  WatchOptions$Mutation$ItemSizeKindPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemSizeKindPageEdit
    extends graphql.MutationOptions<Mutation$ItemSizeKindPageEdit> {
  WidgetOptions$Mutation$ItemSizeKindPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizeKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemSizeKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemSizeKindPageEdit>? update,
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
                     : _parserFn$Mutation$ItemSizeKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemSizeKindPageEdit,
         parserFn: _parserFn$Mutation$ItemSizeKindPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemSizeKindPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemSizeKindPageEdit =
    graphql.MultiSourceResult<Mutation$ItemSizeKindPageEdit> Function(
      Variables$Mutation$ItemSizeKindPageEdit, {
      Object? optimisticResult,
      Mutation$ItemSizeKindPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemSizeKindPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ItemSizeKindPageEdit,
      graphql.QueryResult<Mutation$ItemSizeKindPageEdit>?,
    );

class Mutation$ItemSizeKindPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemSizeKindPageEdit> {
  Mutation$ItemSizeKindPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemSizeKindPageEdit? options,
    required Builder$Mutation$ItemSizeKindPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemSizeKindPageEdit(),
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

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId({
    this.mstrItemSizeKind,
    this.$__typename = 'UpdateMstrItemSizeKindPayload',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKind = json['mstrItemSizeKind'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKind: l$mstrItemSizeKind == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind.fromJson(
              (l$mstrItemSizeKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind?
  mstrItemSizeKind;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKind = mstrItemSizeKind;
    _resultData['mstrItemSizeKind'] = l$mstrItemSizeKind?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKind = mstrItemSizeKind;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemSizeKind, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKind = mstrItemSizeKind;
    final lOther$mstrItemSizeKind = other.mstrItemSizeKind;
    if (l$mstrItemSizeKind != lOther$mstrItemSizeKind) {
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId
    on Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId;

  TRes call({
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind?
    mstrItemSizeKind,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
    TRes
  >
  get mstrItemSizeKind;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKind: mstrItemSizeKind == _undefined
          ? _instance.mstrItemSizeKind
          : (mstrItemSizeKind
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
    TRes
  >
  get mstrItemSizeKind {
    final local$mstrItemSizeKind = _instance.mstrItemSizeKind;
    return local$mstrItemSizeKind == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
            local$mstrItemSizeKind,
            (e) => call(mstrItemSizeKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind?
    mstrItemSizeKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
    TRes
  >
  get mstrItemSizeKind =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind({
    required this.mstrItemSizeKindId,
    required this.code,
    this.labels,
    required this.sharedUnitId,
    this.unit,
    this.remarks,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels?
  labels;

  final String sharedUnitId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit?
  unit;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$labels = labels;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$code,
      l$labels,
      l$sharedUnitId,
      l$unit,
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels?
    labels,
    String? sharedUnitId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit?
    unit,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
    TRes
  >
  get unit;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels?),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels?
    labels,
    String? sharedUnitId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit?
    unit,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
    TRes
  >
  get unit =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels.fromJson(
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
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels,
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
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit;

  TRes call({
    String? sharedUnitId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels.fromJson(
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
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels,
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
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizeKindPageEdit$updateMstrItemSizeKindByMstrItemSizeKindId$mstrItemSizeKind$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
