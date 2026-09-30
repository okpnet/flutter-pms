import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UnitPageEdit {
  factory Variables$Mutation$UnitPageEdit({
    required String sharedUnitId,
    String? description,
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
  }) => Variables$Mutation$UnitPageEdit._({
    r'sharedUnitId': sharedUnitId,
    if (description != null) r'description': description,
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

  Variables$Mutation$UnitPageEdit._(this._$data);

  factory Variables$Mutation$UnitPageEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$sharedUnitId = data['sharedUnitId'];
    result$data['sharedUnitId'] = (l$sharedUnitId as String);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
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
    return Variables$Mutation$UnitPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedUnitId => (_$data['sharedUnitId'] as String);

  String? get description => (_$data['description'] as String?);

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
    final l$sharedUnitId = sharedUnitId;
    result$data['sharedUnitId'] = l$sharedUnitId;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
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

  CopyWith$Variables$Mutation$UnitPageEdit<Variables$Mutation$UnitPageEdit>
  get copyWith => CopyWith$Variables$Mutation$UnitPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UnitPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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
    final l$sharedUnitId = sharedUnitId;
    final l$description = description;
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
      l$sharedUnitId,
      _$data.containsKey('description') ? l$description : const {},
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

abstract class CopyWith$Variables$Mutation$UnitPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$UnitPageEdit(
    Variables$Mutation$UnitPageEdit instance,
    TRes Function(Variables$Mutation$UnitPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$UnitPageEdit;

  factory CopyWith$Variables$Mutation$UnitPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnitPageEdit;

  TRes call({
    String? sharedUnitId,
    String? description,
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

class _CopyWithImpl$Variables$Mutation$UnitPageEdit<TRes>
    implements CopyWith$Variables$Mutation$UnitPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$UnitPageEdit(this._instance, this._then);

  final Variables$Mutation$UnitPageEdit _instance;

  final TRes Function(Variables$Mutation$UnitPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? description = _undefined,
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
    Variables$Mutation$UnitPageEdit._({
      ..._instance._$data,
      if (sharedUnitId != _undefined && sharedUnitId != null)
        'sharedUnitId': (sharedUnitId as String),
      if (description != _undefined) 'description': (description as String?),
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

class _CopyWithStubImpl$Variables$Mutation$UnitPageEdit<TRes>
    implements CopyWith$Variables$Mutation$UnitPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnitPageEdit(this._res);

  TRes _res;

  call({
    String? sharedUnitId,
    String? description,
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

class Mutation$UnitPageEdit {
  Mutation$UnitPageEdit({
    this.updateSharedUnitBySharedUnitId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnitPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateSharedUnitBySharedUnitId =
        json['updateSharedUnitBySharedUnitId'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit(
      updateSharedUnitBySharedUnitId: l$updateSharedUnitBySharedUnitId == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId.fromJson(
              (l$updateSharedUnitBySharedUnitId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId?
  updateSharedUnitBySharedUnitId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateSharedUnitBySharedUnitId = updateSharedUnitBySharedUnitId;
    _resultData['updateSharedUnitBySharedUnitId'] =
        l$updateSharedUnitBySharedUnitId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateSharedUnitBySharedUnitId = updateSharedUnitBySharedUnitId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateSharedUnitBySharedUnitId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnitPageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateSharedUnitBySharedUnitId = updateSharedUnitBySharedUnitId;
    final lOther$updateSharedUnitBySharedUnitId =
        other.updateSharedUnitBySharedUnitId;
    if (l$updateSharedUnitBySharedUnitId !=
        lOther$updateSharedUnitBySharedUnitId) {
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

extension UtilityExtension$Mutation$UnitPageEdit on Mutation$UnitPageEdit {
  CopyWith$Mutation$UnitPageEdit<Mutation$UnitPageEdit> get copyWith =>
      CopyWith$Mutation$UnitPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$UnitPageEdit<TRes> {
  factory CopyWith$Mutation$UnitPageEdit(
    Mutation$UnitPageEdit instance,
    TRes Function(Mutation$UnitPageEdit) then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit;

  factory CopyWith$Mutation$UnitPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnitPageEdit;

  TRes call({
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId?
    updateSharedUnitBySharedUnitId,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes>
  get updateSharedUnitBySharedUnitId;
}

class _CopyWithImpl$Mutation$UnitPageEdit<TRes>
    implements CopyWith$Mutation$UnitPageEdit<TRes> {
  _CopyWithImpl$Mutation$UnitPageEdit(this._instance, this._then);

  final Mutation$UnitPageEdit _instance;

  final TRes Function(Mutation$UnitPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateSharedUnitBySharedUnitId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit(
      updateSharedUnitBySharedUnitId:
          updateSharedUnitBySharedUnitId == _undefined
          ? _instance.updateSharedUnitBySharedUnitId
          : (updateSharedUnitBySharedUnitId
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes>
  get updateSharedUnitBySharedUnitId {
    final local$updateSharedUnitBySharedUnitId =
        _instance.updateSharedUnitBySharedUnitId;
    return local$updateSharedUnitBySharedUnitId == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
            local$updateSharedUnitBySharedUnitId,
            (e) => call(updateSharedUnitBySharedUnitId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit<TRes>
    implements CopyWith$Mutation$UnitPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$UnitPageEdit(this._res);

  TRes _res;

  call({
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId?
    updateSharedUnitBySharedUnitId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes>
  get updateSharedUnitBySharedUnitId =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId.stub(_res);
}

const documentNodeMutationUnitPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UnitPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedUnitId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
            name: NameNode(value: 'updateSharedUnitBySharedUnitId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'sharedUnitId'),
                      value: VariableNode(
                        name: NameNode(value: 'sharedUnitId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'sharedUnitPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'description'),
                            value: VariableNode(
                              name: NameNode(value: 'description'),
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
                  name: NameNode(value: 'sharedUnit'),
                  alias: null,
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
                        name: NameNode(value: 'description'),
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
Mutation$UnitPageEdit _parserFn$Mutation$UnitPageEdit(
  Map<String, dynamic> data,
) => Mutation$UnitPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$UnitPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$UnitPageEdit?);

class Options$Mutation$UnitPageEdit
    extends graphql.MutationOptions<Mutation$UnitPageEdit> {
  Options$Mutation$UnitPageEdit({
    String? operationName,
    required Variables$Mutation$UnitPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnitPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnitPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnitPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$UnitPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUnitPageEdit,
         parserFn: _parserFn$Mutation$UnitPageEdit,
       );

  final OnMutationCompleted$Mutation$UnitPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UnitPageEdit
    extends graphql.WatchQueryOptions<Mutation$UnitPageEdit> {
  WatchOptions$Mutation$UnitPageEdit({
    String? operationName,
    required Variables$Mutation$UnitPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnitPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationUnitPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UnitPageEdit,
       );
}

extension ClientExtension$Mutation$UnitPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnitPageEdit>> mutate$UnitPageEdit(
    Options$Mutation$UnitPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$UnitPageEdit> watchMutation$UnitPageEdit(
    WatchOptions$Mutation$UnitPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$UnitPageEdit$HookResult {
  Mutation$UnitPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UnitPageEdit runMutation;

  final graphql.QueryResult<Mutation$UnitPageEdit> result;
}

Mutation$UnitPageEdit$HookResult useMutation$UnitPageEdit([
  WidgetOptions$Mutation$UnitPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$UnitPageEdit(),
  );
  return Mutation$UnitPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UnitPageEdit> useWatchMutation$UnitPageEdit(
  WatchOptions$Mutation$UnitPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UnitPageEdit
    extends graphql.MutationOptions<Mutation$UnitPageEdit> {
  WidgetOptions$Mutation$UnitPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnitPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnitPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnitPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$UnitPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUnitPageEdit,
         parserFn: _parserFn$Mutation$UnitPageEdit,
       );

  final OnMutationCompleted$Mutation$UnitPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$UnitPageEdit =
    graphql.MultiSourceResult<Mutation$UnitPageEdit> Function(
      Variables$Mutation$UnitPageEdit, {
      Object? optimisticResult,
      Mutation$UnitPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$UnitPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$UnitPageEdit,
      graphql.QueryResult<Mutation$UnitPageEdit>?,
    );

class Mutation$UnitPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$UnitPageEdit> {
  Mutation$UnitPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UnitPageEdit? options,
    required Builder$Mutation$UnitPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$UnitPageEdit(),
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

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId({
    this.sharedUnit,
    this.$__typename = 'UpdateSharedUnitPayload',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnit = json['sharedUnit'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
      sharedUnit: l$sharedUnit == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit.fromJson(
              (l$sharedUnit as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit?
  sharedUnit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnit = sharedUnit;
    _resultData['sharedUnit'] = l$sharedUnit?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnit = sharedUnit;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedUnit, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnit = sharedUnit;
    final lOther$sharedUnit = other.sharedUnit;
    if (l$sharedUnit != lOther$sharedUnit) {
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId
    on Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId
  >
  get copyWith => CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId instance,
    TRes Function(Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId) then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId;

  TRes call({
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit? sharedUnit,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<TRes>
  get sharedUnit;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes> {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId _instance;

  final TRes Function(Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
      sharedUnit: sharedUnit == _undefined
          ? _instance.sharedUnit
          : (sharedUnit
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<TRes>
  get sharedUnit {
    final local$sharedUnit = _instance.sharedUnit;
    return local$sharedUnit == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
            local$sharedUnit,
            (e) => call(sharedUnit: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId<TRes> {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit? sharedUnit,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<TRes>
  get sharedUnit =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit({
    required this.sharedUnitId,
    this.description,
    this.remarks,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$description = json['description'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
      sharedUnitId: (l$sharedUnitId as String),
      description: (l$description as String?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final String? description;

  final String? remarks;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$sharedUnitId = sharedUnitId;
    final l$description = description;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedUnitId,
      l$description,
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit
    on Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit;

  TRes call({
    String? sharedUnitId,
    String? description,
    String? remarks,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? description = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    String? description,
    String? remarks,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels.fromJson(
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
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels
    on Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels,
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
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnitPageEdit$updateSharedUnitBySharedUnitId$sharedUnit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
