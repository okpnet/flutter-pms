import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TaskGroupEdit {
  factory Variables$Mutation$TaskGroupEdit({
    required String mstrTaskGroupId,
    String? code,
    String? details,
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
  }) => Variables$Mutation$TaskGroupEdit._({
    r'mstrTaskGroupId': mstrTaskGroupId,
    if (code != null) r'code': code,
    if (details != null) r'details': details,
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

  Variables$Mutation$TaskGroupEdit._(this._$data);

  factory Variables$Mutation$TaskGroupEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskGroupId = data['mstrTaskGroupId'];
    result$data['mstrTaskGroupId'] = (l$mstrTaskGroupId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('details')) {
      final l$details = data['details'];
      result$data['details'] = (l$details as String?);
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
    return Variables$Mutation$TaskGroupEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskGroupId => (_$data['mstrTaskGroupId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get details => (_$data['details'] as String?);

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
    final l$mstrTaskGroupId = mstrTaskGroupId;
    result$data['mstrTaskGroupId'] = l$mstrTaskGroupId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('details')) {
      final l$details = details;
      result$data['details'] = l$details;
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

  CopyWith$Variables$Mutation$TaskGroupEdit<Variables$Mutation$TaskGroupEdit>
  get copyWith => CopyWith$Variables$Mutation$TaskGroupEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TaskGroupEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
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
    final l$details = details;
    final lOther$details = other.details;
    if (_$data.containsKey('details') != other._$data.containsKey('details')) {
      return false;
    }
    if (l$details != lOther$details) {
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
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
    final l$details = details;
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
      l$mstrTaskGroupId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('details') ? l$details : const {},
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

abstract class CopyWith$Variables$Mutation$TaskGroupEdit<TRes> {
  factory CopyWith$Variables$Mutation$TaskGroupEdit(
    Variables$Mutation$TaskGroupEdit instance,
    TRes Function(Variables$Mutation$TaskGroupEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$TaskGroupEdit;

  factory CopyWith$Variables$Mutation$TaskGroupEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TaskGroupEdit;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    String? details,
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

class _CopyWithImpl$Variables$Mutation$TaskGroupEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskGroupEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$TaskGroupEdit(this._instance, this._then);

  final Variables$Mutation$TaskGroupEdit _instance;

  final TRes Function(Variables$Mutation$TaskGroupEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
    Object? details = _undefined,
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
    Variables$Mutation$TaskGroupEdit._({
      ..._instance._$data,
      if (mstrTaskGroupId != _undefined && mstrTaskGroupId != null)
        'mstrTaskGroupId': (mstrTaskGroupId as String),
      if (code != _undefined) 'code': (code as String?),
      if (details != _undefined) 'details': (details as String?),
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

class _CopyWithStubImpl$Variables$Mutation$TaskGroupEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskGroupEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TaskGroupEdit(this._res);

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    String? details,
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

class Mutation$TaskGroupEdit {
  Mutation$TaskGroupEdit({
    this.updateMstrTaskGroupByMstrTaskGroupId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TaskGroupEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrTaskGroupByMstrTaskGroupId =
        json['updateMstrTaskGroupByMstrTaskGroupId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit(
      updateMstrTaskGroupByMstrTaskGroupId:
          l$updateMstrTaskGroupByMstrTaskGroupId == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId.fromJson(
              (l$updateMstrTaskGroupByMstrTaskGroupId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId?
  updateMstrTaskGroupByMstrTaskGroupId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrTaskGroupByMstrTaskGroupId =
        updateMstrTaskGroupByMstrTaskGroupId;
    _resultData['updateMstrTaskGroupByMstrTaskGroupId'] =
        l$updateMstrTaskGroupByMstrTaskGroupId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrTaskGroupByMstrTaskGroupId =
        updateMstrTaskGroupByMstrTaskGroupId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrTaskGroupByMstrTaskGroupId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskGroupEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrTaskGroupByMstrTaskGroupId =
        updateMstrTaskGroupByMstrTaskGroupId;
    final lOther$updateMstrTaskGroupByMstrTaskGroupId =
        other.updateMstrTaskGroupByMstrTaskGroupId;
    if (l$updateMstrTaskGroupByMstrTaskGroupId !=
        lOther$updateMstrTaskGroupByMstrTaskGroupId) {
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

extension UtilityExtension$Mutation$TaskGroupEdit on Mutation$TaskGroupEdit {
  CopyWith$Mutation$TaskGroupEdit<Mutation$TaskGroupEdit> get copyWith =>
      CopyWith$Mutation$TaskGroupEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskGroupEdit<TRes> {
  factory CopyWith$Mutation$TaskGroupEdit(
    Mutation$TaskGroupEdit instance,
    TRes Function(Mutation$TaskGroupEdit) then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit;

  factory CopyWith$Mutation$TaskGroupEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TaskGroupEdit;

  TRes call({
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId?
    updateMstrTaskGroupByMstrTaskGroupId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<TRes>
  get updateMstrTaskGroupByMstrTaskGroupId;
}

class _CopyWithImpl$Mutation$TaskGroupEdit<TRes>
    implements CopyWith$Mutation$TaskGroupEdit<TRes> {
  _CopyWithImpl$Mutation$TaskGroupEdit(this._instance, this._then);

  final Mutation$TaskGroupEdit _instance;

  final TRes Function(Mutation$TaskGroupEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrTaskGroupByMstrTaskGroupId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit(
      updateMstrTaskGroupByMstrTaskGroupId:
          updateMstrTaskGroupByMstrTaskGroupId == _undefined
          ? _instance.updateMstrTaskGroupByMstrTaskGroupId
          : (updateMstrTaskGroupByMstrTaskGroupId
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<TRes>
  get updateMstrTaskGroupByMstrTaskGroupId {
    final local$updateMstrTaskGroupByMstrTaskGroupId =
        _instance.updateMstrTaskGroupByMstrTaskGroupId;
    return local$updateMstrTaskGroupByMstrTaskGroupId == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
            local$updateMstrTaskGroupByMstrTaskGroupId,
            (e) => call(updateMstrTaskGroupByMstrTaskGroupId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskGroupEdit<TRes>
    implements CopyWith$Mutation$TaskGroupEdit<TRes> {
  _CopyWithStubImpl$Mutation$TaskGroupEdit(this._res);

  TRes _res;

  call({
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId?
    updateMstrTaskGroupByMstrTaskGroupId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<TRes>
  get updateMstrTaskGroupByMstrTaskGroupId =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId.stub(
        _res,
      );
}

const documentNodeMutationTaskGroupEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TaskGroupEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskGroupId')),
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
          variable: VariableNode(name: NameNode(value: 'details')),
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
            name: NameNode(value: 'updateMstrTaskGroupByMstrTaskGroupId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskGroupId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrTaskGroupId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskGroupPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'details'),
                            value: VariableNode(
                              name: NameNode(value: 'details'),
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
                  name: NameNode(value: 'mstrTaskGroup'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrTaskGroupId'),
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
                        name: NameNode(value: 'details'),
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
Mutation$TaskGroupEdit _parserFn$Mutation$TaskGroupEdit(
  Map<String, dynamic> data,
) => Mutation$TaskGroupEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$TaskGroupEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$TaskGroupEdit?);

class Options$Mutation$TaskGroupEdit
    extends graphql.MutationOptions<Mutation$TaskGroupEdit> {
  Options$Mutation$TaskGroupEdit({
    String? operationName,
    required Variables$Mutation$TaskGroupEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskGroupEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskGroupEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskGroupEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskGroupEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskGroupEdit,
         parserFn: _parserFn$Mutation$TaskGroupEdit,
       );

  final OnMutationCompleted$Mutation$TaskGroupEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$TaskGroupEdit
    extends graphql.WatchQueryOptions<Mutation$TaskGroupEdit> {
  WatchOptions$Mutation$TaskGroupEdit({
    String? operationName,
    required Variables$Mutation$TaskGroupEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskGroupEdit? typedOptimisticResult,
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
         document: documentNodeMutationTaskGroupEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$TaskGroupEdit,
       );
}

extension ClientExtension$Mutation$TaskGroupEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TaskGroupEdit>> mutate$TaskGroupEdit(
    Options$Mutation$TaskGroupEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$TaskGroupEdit> watchMutation$TaskGroupEdit(
    WatchOptions$Mutation$TaskGroupEdit options,
  ) => this.watchMutation(options);
}

class Mutation$TaskGroupEdit$HookResult {
  Mutation$TaskGroupEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$TaskGroupEdit runMutation;

  final graphql.QueryResult<Mutation$TaskGroupEdit> result;
}

Mutation$TaskGroupEdit$HookResult useMutation$TaskGroupEdit([
  WidgetOptions$Mutation$TaskGroupEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$TaskGroupEdit(),
  );
  return Mutation$TaskGroupEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TaskGroupEdit> useWatchMutation$TaskGroupEdit(
  WatchOptions$Mutation$TaskGroupEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TaskGroupEdit
    extends graphql.MutationOptions<Mutation$TaskGroupEdit> {
  WidgetOptions$Mutation$TaskGroupEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskGroupEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskGroupEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskGroupEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskGroupEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskGroupEdit,
         parserFn: _parserFn$Mutation$TaskGroupEdit,
       );

  final OnMutationCompleted$Mutation$TaskGroupEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$TaskGroupEdit =
    graphql.MultiSourceResult<Mutation$TaskGroupEdit> Function(
      Variables$Mutation$TaskGroupEdit, {
      Object? optimisticResult,
      Mutation$TaskGroupEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$TaskGroupEdit =
    widgets.Widget Function(
      RunMutation$Mutation$TaskGroupEdit,
      graphql.QueryResult<Mutation$TaskGroupEdit>?,
    );

class Mutation$TaskGroupEdit$Widget
    extends graphql_flutter.Mutation<Mutation$TaskGroupEdit> {
  Mutation$TaskGroupEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TaskGroupEdit? options,
    required Builder$Mutation$TaskGroupEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$TaskGroupEdit(),
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

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId({
    this.mstrTaskGroup,
    this.$__typename = 'UpdateMstrTaskGroupPayload',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskGroup = json['mstrTaskGroup'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
      mstrTaskGroup: l$mstrTaskGroup == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.fromJson(
              (l$mstrTaskGroup as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup?
  mstrTaskGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskGroup = mstrTaskGroup;
    _resultData['mstrTaskGroup'] = l$mstrTaskGroup?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskGroup = mstrTaskGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskGroup, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskGroup = mstrTaskGroup;
    final lOther$mstrTaskGroup = other.mstrTaskGroup;
    if (l$mstrTaskGroup != lOther$mstrTaskGroup) {
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

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId
    on Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId instance,
    TRes Function(Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId)
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId;

  TRes call({
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup?
    mstrTaskGroup,
    String? $__typename,
  });
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
    TRes
  >
  get mstrTaskGroup;
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
      mstrTaskGroup: mstrTaskGroup == _undefined
          ? _instance.mstrTaskGroup
          : (mstrTaskGroup
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
    TRes
  >
  get mstrTaskGroup {
    final local$mstrTaskGroup = _instance.mstrTaskGroup;
    return local$mstrTaskGroup == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
            local$mstrTaskGroup,
            (e) => call(mstrTaskGroup: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup?
    mstrTaskGroup,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
    TRes
  >
  get mstrTaskGroup =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.stub(
        _res,
      );
}

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup({
    required this.mstrTaskGroupId,
    required this.code,
    this.details,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrTaskGroup',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$code = json['code'];
    final l$details = json['details'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      details: (l$details as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final String? details;

  final String? remarks;

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$details = details;
    _resultData['details'] = l$details;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
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
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
    final l$details = details;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskGroupId,
      l$code,
      l$details,
      l$remarks,
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
            is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup
    on Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup
    instance,
    TRes Function(
      Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    String? details,
    String? remarks,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup
  _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
    Object? details = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      details: details == _undefined ? _instance.details : (details as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    String? details,
    String? remarks,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId
    on
        Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId,
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
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskGroupEdit$updateMstrTaskGroupByMstrTaskGroupId$mstrTaskGroup$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
