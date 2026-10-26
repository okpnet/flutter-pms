import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$InspectionKindPageEdit {
  factory Variables$Mutation$InspectionKindPageEdit({
    required String mstrInspectionKindId,
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
    String? remarks,
  }) => Variables$Mutation$InspectionKindPageEdit._({
    r'mstrInspectionKindId': mstrInspectionKindId,
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
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$InspectionKindPageEdit._(this._$data);

  factory Variables$Mutation$InspectionKindPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionKindId = data['mstrInspectionKindId'];
    result$data['mstrInspectionKindId'] = (l$mstrInspectionKindId as String);
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
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$InspectionKindPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionKindId => (_$data['mstrInspectionKindId'] as String);

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

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    result$data['mstrInspectionKindId'] = l$mstrInspectionKindId;
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
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$InspectionKindPageEdit<
    Variables$Mutation$InspectionKindPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$InspectionKindPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InspectionKindPageEdit ||
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
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
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrInspectionKindId,
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
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$InspectionKindPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$InspectionKindPageEdit(
    Variables$Mutation$InspectionKindPageEdit instance,
    TRes Function(Variables$Mutation$InspectionKindPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$InspectionKindPageEdit;

  factory CopyWith$Variables$Mutation$InspectionKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InspectionKindPageEdit;

  TRes call({
    String? mstrInspectionKindId,
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
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$InspectionKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$InspectionKindPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$InspectionKindPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InspectionKindPageEdit _instance;

  final TRes Function(Variables$Mutation$InspectionKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
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
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$InspectionKindPageEdit._({
      ..._instance._$data,
      if (mstrInspectionKindId != _undefined && mstrInspectionKindId != null)
        'mstrInspectionKindId': (mstrInspectionKindId as String),
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
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$InspectionKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$InspectionKindPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InspectionKindPageEdit(this._res);

  TRes _res;

  call({
    String? mstrInspectionKindId,
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
    String? remarks,
  }) => _res;
}

class Mutation$InspectionKindPageEdit {
  Mutation$InspectionKindPageEdit({
    this.updateMstrInspectionKindByMstrInspectionKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InspectionKindPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrInspectionKindByMstrInspectionKindId =
        json['updateMstrInspectionKindByMstrInspectionKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit(
      updateMstrInspectionKindByMstrInspectionKindId:
          l$updateMstrInspectionKindByMstrInspectionKindId == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId.fromJson(
              (l$updateMstrInspectionKindByMstrInspectionKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId?
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
    if (other is! Mutation$InspectionKindPageEdit ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit
    on Mutation$InspectionKindPageEdit {
  CopyWith$Mutation$InspectionKindPageEdit<Mutation$InspectionKindPageEdit>
  get copyWith => CopyWith$Mutation$InspectionKindPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$InspectionKindPageEdit<TRes> {
  factory CopyWith$Mutation$InspectionKindPageEdit(
    Mutation$InspectionKindPageEdit instance,
    TRes Function(Mutation$InspectionKindPageEdit) then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit;

  factory CopyWith$Mutation$InspectionKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InspectionKindPageEdit;

  TRes call({
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId?
    updateMstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit<TRes>
    implements CopyWith$Mutation$InspectionKindPageEdit<TRes> {
  _CopyWithImpl$Mutation$InspectionKindPageEdit(this._instance, this._then);

  final Mutation$InspectionKindPageEdit _instance;

  final TRes Function(Mutation$InspectionKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrInspectionKindByMstrInspectionKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit(
      updateMstrInspectionKindByMstrInspectionKindId:
          updateMstrInspectionKindByMstrInspectionKindId == _undefined
          ? _instance.updateMstrInspectionKindByMstrInspectionKindId
          : (updateMstrInspectionKindByMstrInspectionKindId
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId {
    final local$updateMstrInspectionKindByMstrInspectionKindId =
        _instance.updateMstrInspectionKindByMstrInspectionKindId;
    return local$updateMstrInspectionKindByMstrInspectionKindId == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
            local$updateMstrInspectionKindByMstrInspectionKindId,
            (e) => call(updateMstrInspectionKindByMstrInspectionKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit<TRes>
    implements CopyWith$Mutation$InspectionKindPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit(this._res);

  TRes _res;

  call({
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId?
    updateMstrInspectionKindByMstrInspectionKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
    TRes
  >
  get updateMstrInspectionKindByMstrInspectionKindId =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
        _res,
      );
}

const documentNodeMutationInspectionKindPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InspectionKindPageEdit'),
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
Mutation$InspectionKindPageEdit _parserFn$Mutation$InspectionKindPageEdit(
  Map<String, dynamic> data,
) => Mutation$InspectionKindPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$InspectionKindPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$InspectionKindPageEdit?,
    );

class Options$Mutation$InspectionKindPageEdit
    extends graphql.MutationOptions<Mutation$InspectionKindPageEdit> {
  Options$Mutation$InspectionKindPageEdit({
    String? operationName,
    required Variables$Mutation$InspectionKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InspectionKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InspectionKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InspectionKindPageEdit>? update,
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
                     : _parserFn$Mutation$InspectionKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInspectionKindPageEdit,
         parserFn: _parserFn$Mutation$InspectionKindPageEdit,
       );

  final OnMutationCompleted$Mutation$InspectionKindPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InspectionKindPageEdit
    extends graphql.WatchQueryOptions<Mutation$InspectionKindPageEdit> {
  WatchOptions$Mutation$InspectionKindPageEdit({
    String? operationName,
    required Variables$Mutation$InspectionKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InspectionKindPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationInspectionKindPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InspectionKindPageEdit,
       );
}

extension ClientExtension$Mutation$InspectionKindPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InspectionKindPageEdit>>
  mutate$InspectionKindPageEdit(
    Options$Mutation$InspectionKindPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InspectionKindPageEdit>
  watchMutation$InspectionKindPageEdit(
    WatchOptions$Mutation$InspectionKindPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$InspectionKindPageEdit$HookResult {
  Mutation$InspectionKindPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InspectionKindPageEdit runMutation;

  final graphql.QueryResult<Mutation$InspectionKindPageEdit> result;
}

Mutation$InspectionKindPageEdit$HookResult useMutation$InspectionKindPageEdit([
  WidgetOptions$Mutation$InspectionKindPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InspectionKindPageEdit(),
  );
  return Mutation$InspectionKindPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InspectionKindPageEdit>
useWatchMutation$InspectionKindPageEdit(
  WatchOptions$Mutation$InspectionKindPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InspectionKindPageEdit
    extends graphql.MutationOptions<Mutation$InspectionKindPageEdit> {
  WidgetOptions$Mutation$InspectionKindPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InspectionKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InspectionKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InspectionKindPageEdit>? update,
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
                     : _parserFn$Mutation$InspectionKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInspectionKindPageEdit,
         parserFn: _parserFn$Mutation$InspectionKindPageEdit,
       );

  final OnMutationCompleted$Mutation$InspectionKindPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InspectionKindPageEdit =
    graphql.MultiSourceResult<Mutation$InspectionKindPageEdit> Function(
      Variables$Mutation$InspectionKindPageEdit, {
      Object? optimisticResult,
      Mutation$InspectionKindPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$InspectionKindPageEdit = widgets.Widget Function(
  RunMutation$Mutation$InspectionKindPageEdit,
  graphql.QueryResult<Mutation$InspectionKindPageEdit>?,
);

class Mutation$InspectionKindPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$InspectionKindPageEdit> {
  Mutation$InspectionKindPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InspectionKindPageEdit? options,
    required Builder$Mutation$InspectionKindPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InspectionKindPageEdit(),
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

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId({
    this.mstrInspectionKind,
    this.$__typename = 'UpdateMstrInspectionKindPayload',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKind = json['mstrInspectionKind'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKind: l$mstrInspectionKind == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.fromJson(
              (l$mstrInspectionKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId
    on Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId;

  TRes call({
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
    mstrInspectionKind,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
      mstrInspectionKind: mstrInspectionKind == _undefined
          ? _instance.mstrInspectionKind
          : (mstrInspectionKind
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind {
    final local$mstrInspectionKind = _instance.mstrInspectionKind;
    return local$mstrInspectionKind == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
            local$mstrInspectionKind,
            (e) => call(mstrInspectionKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind?
    mstrInspectionKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    TRes
  >
  get mstrInspectionKind =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind({
    required this.mstrInspectionKindId,
    required this.code,
    this.labels,
    this.remarks,
    this.$__typename = 'MstrInspectionKind',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKindId = json['mstrInspectionKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
      mstrInspectionKindId: (l$mstrInspectionKindId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionKindId;

  final String code;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels?
  labels;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    _resultData['mstrInspectionKindId'] = l$mstrInspectionKindId;
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$code = code;
    final l$labels = labels;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionKindId,
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind;

  TRes call({
    String? mstrInspectionKindId,
    String? code,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels?
    labels,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
      mstrInspectionKindId:
          mstrInspectionKindId == _undefined || mstrInspectionKindId == null
          ? _instance.mstrInspectionKindId
          : (mstrInspectionKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionKindId,
    String? code,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels?
    labels,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels.fromJson(
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
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels,
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
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InspectionKindPageEdit$updateMstrInspectionKindByMstrInspectionKindId$mstrInspectionKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
