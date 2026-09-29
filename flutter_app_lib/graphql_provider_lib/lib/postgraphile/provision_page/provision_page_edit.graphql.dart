import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ProvisionPageEdit {
  factory Variables$Mutation$ProvisionPageEdit({
    required String infoProvisionId,
    String? details,
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
  }) => Variables$Mutation$ProvisionPageEdit._({
    r'infoProvisionId': infoProvisionId,
    if (details != null) r'details': details,
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

  Variables$Mutation$ProvisionPageEdit._(this._$data);

  factory Variables$Mutation$ProvisionPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoProvisionId = data['infoProvisionId'];
    result$data['infoProvisionId'] = (l$infoProvisionId as String);
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
    return Variables$Mutation$ProvisionPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoProvisionId => (_$data['infoProvisionId'] as String);

  String? get details => (_$data['details'] as String?);

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
    final l$infoProvisionId = infoProvisionId;
    result$data['infoProvisionId'] = l$infoProvisionId;
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

  CopyWith$Variables$Mutation$ProvisionPageEdit<
    Variables$Mutation$ProvisionPageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ProvisionPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ProvisionPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
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
    final l$infoProvisionId = infoProvisionId;
    final l$details = details;
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
      l$infoProvisionId,
      _$data.containsKey('details') ? l$details : const {},
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

abstract class CopyWith$Variables$Mutation$ProvisionPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ProvisionPageEdit(
    Variables$Mutation$ProvisionPageEdit instance,
    TRes Function(Variables$Mutation$ProvisionPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ProvisionPageEdit;

  factory CopyWith$Variables$Mutation$ProvisionPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ProvisionPageEdit;

  TRes call({
    String? infoProvisionId,
    String? details,
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

class _CopyWithImpl$Variables$Mutation$ProvisionPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ProvisionPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ProvisionPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ProvisionPageEdit _instance;

  final TRes Function(Variables$Mutation$ProvisionPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? details = _undefined,
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
    Variables$Mutation$ProvisionPageEdit._({
      ..._instance._$data,
      if (infoProvisionId != _undefined && infoProvisionId != null)
        'infoProvisionId': (infoProvisionId as String),
      if (details != _undefined) 'details': (details as String?),
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

class _CopyWithStubImpl$Variables$Mutation$ProvisionPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ProvisionPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ProvisionPageEdit(this._res);

  TRes _res;

  call({
    String? infoProvisionId,
    String? details,
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

class Mutation$ProvisionPageEdit {
  Mutation$ProvisionPageEdit({
    this.updateInfoProvisionByInfoProvisionId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ProvisionPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoProvisionByInfoProvisionId =
        json['updateInfoProvisionByInfoProvisionId'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit(
      updateInfoProvisionByInfoProvisionId:
          l$updateInfoProvisionByInfoProvisionId == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId.fromJson(
              (l$updateInfoProvisionByInfoProvisionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId?
  updateInfoProvisionByInfoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoProvisionByInfoProvisionId =
        updateInfoProvisionByInfoProvisionId;
    _resultData['updateInfoProvisionByInfoProvisionId'] =
        l$updateInfoProvisionByInfoProvisionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoProvisionByInfoProvisionId =
        updateInfoProvisionByInfoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateInfoProvisionByInfoProvisionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ProvisionPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoProvisionByInfoProvisionId =
        updateInfoProvisionByInfoProvisionId;
    final lOther$updateInfoProvisionByInfoProvisionId =
        other.updateInfoProvisionByInfoProvisionId;
    if (l$updateInfoProvisionByInfoProvisionId !=
        lOther$updateInfoProvisionByInfoProvisionId) {
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

extension UtilityExtension$Mutation$ProvisionPageEdit
    on Mutation$ProvisionPageEdit {
  CopyWith$Mutation$ProvisionPageEdit<Mutation$ProvisionPageEdit>
  get copyWith => CopyWith$Mutation$ProvisionPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ProvisionPageEdit<TRes> {
  factory CopyWith$Mutation$ProvisionPageEdit(
    Mutation$ProvisionPageEdit instance,
    TRes Function(Mutation$ProvisionPageEdit) then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit;

  factory CopyWith$Mutation$ProvisionPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ProvisionPageEdit;

  TRes call({
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId?
    updateInfoProvisionByInfoProvisionId,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<TRes>
  get updateInfoProvisionByInfoProvisionId;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit<TRes>
    implements CopyWith$Mutation$ProvisionPageEdit<TRes> {
  _CopyWithImpl$Mutation$ProvisionPageEdit(this._instance, this._then);

  final Mutation$ProvisionPageEdit _instance;

  final TRes Function(Mutation$ProvisionPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoProvisionByInfoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit(
      updateInfoProvisionByInfoProvisionId:
          updateInfoProvisionByInfoProvisionId == _undefined
          ? _instance.updateInfoProvisionByInfoProvisionId
          : (updateInfoProvisionByInfoProvisionId
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<TRes>
  get updateInfoProvisionByInfoProvisionId {
    final local$updateInfoProvisionByInfoProvisionId =
        _instance.updateInfoProvisionByInfoProvisionId;
    return local$updateInfoProvisionByInfoProvisionId == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
            local$updateInfoProvisionByInfoProvisionId,
            (e) => call(updateInfoProvisionByInfoProvisionId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit<TRes>
    implements CopyWith$Mutation$ProvisionPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId?
    updateInfoProvisionByInfoProvisionId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<TRes>
  get updateInfoProvisionByInfoProvisionId =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId.stub(
        _res,
      );
}

const documentNodeMutationProvisionPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ProvisionPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoProvisionId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
            name: NameNode(value: 'updateInfoProvisionByInfoProvisionId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoProvisionId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoProvisionId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoProvisionPatch'),
                      value: ObjectValueNode(
                        fields: [
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
                  name: NameNode(value: 'infoProvision'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoProvisionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'infoCompanyId'),
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
Mutation$ProvisionPageEdit _parserFn$Mutation$ProvisionPageEdit(
  Map<String, dynamic> data,
) => Mutation$ProvisionPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ProvisionPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ProvisionPageEdit?);

class Options$Mutation$ProvisionPageEdit
    extends graphql.MutationOptions<Mutation$ProvisionPageEdit> {
  Options$Mutation$ProvisionPageEdit({
    String? operationName,
    required Variables$Mutation$ProvisionPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ProvisionPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ProvisionPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ProvisionPageEdit>? update,
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
                     : _parserFn$Mutation$ProvisionPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationProvisionPageEdit,
         parserFn: _parserFn$Mutation$ProvisionPageEdit,
       );

  final OnMutationCompleted$Mutation$ProvisionPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ProvisionPageEdit
    extends graphql.WatchQueryOptions<Mutation$ProvisionPageEdit> {
  WatchOptions$Mutation$ProvisionPageEdit({
    String? operationName,
    required Variables$Mutation$ProvisionPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ProvisionPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationProvisionPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ProvisionPageEdit,
       );
}

extension ClientExtension$Mutation$ProvisionPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ProvisionPageEdit>>
  mutate$ProvisionPageEdit(Options$Mutation$ProvisionPageEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ProvisionPageEdit>
  watchMutation$ProvisionPageEdit(
    WatchOptions$Mutation$ProvisionPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ProvisionPageEdit$HookResult {
  Mutation$ProvisionPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ProvisionPageEdit runMutation;

  final graphql.QueryResult<Mutation$ProvisionPageEdit> result;
}

Mutation$ProvisionPageEdit$HookResult useMutation$ProvisionPageEdit([
  WidgetOptions$Mutation$ProvisionPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ProvisionPageEdit(),
  );
  return Mutation$ProvisionPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ProvisionPageEdit>
useWatchMutation$ProvisionPageEdit(
  WatchOptions$Mutation$ProvisionPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ProvisionPageEdit
    extends graphql.MutationOptions<Mutation$ProvisionPageEdit> {
  WidgetOptions$Mutation$ProvisionPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ProvisionPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ProvisionPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ProvisionPageEdit>? update,
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
                     : _parserFn$Mutation$ProvisionPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationProvisionPageEdit,
         parserFn: _parserFn$Mutation$ProvisionPageEdit,
       );

  final OnMutationCompleted$Mutation$ProvisionPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ProvisionPageEdit =
    graphql.MultiSourceResult<Mutation$ProvisionPageEdit> Function(
      Variables$Mutation$ProvisionPageEdit, {
      Object? optimisticResult,
      Mutation$ProvisionPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ProvisionPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ProvisionPageEdit,
      graphql.QueryResult<Mutation$ProvisionPageEdit>?,
    );

class Mutation$ProvisionPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ProvisionPageEdit> {
  Mutation$ProvisionPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ProvisionPageEdit? options,
    required Builder$Mutation$ProvisionPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ProvisionPageEdit(),
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

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId({
    this.infoProvision,
    this.$__typename = 'UpdateInfoProvisionPayload',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoProvision = json['infoProvision'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
      infoProvision: l$infoProvision == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision.fromJson(
              (l$infoProvision as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision?
  infoProvision;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoProvision = infoProvision;
    _resultData['infoProvision'] = l$infoProvision?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoProvision = infoProvision;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoProvision, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvision = infoProvision;
    final lOther$infoProvision = other.infoProvision;
    if (l$infoProvision != lOther$infoProvision) {
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId
    on Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId;

  TRes call({
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision?
    infoProvision,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
    TRes
  >
  get infoProvision;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvision = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
      infoProvision: infoProvision == _undefined
          ? _instance.infoProvision
          : (infoProvision
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
    TRes
  >
  get infoProvision {
    final local$infoProvision = _instance.infoProvision;
    return local$infoProvision == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
            local$infoProvision,
            (e) => call(infoProvision: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision?
    infoProvision,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
    TRes
  >
  get infoProvision =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision({
    required this.infoProvisionId,
    required this.infoCompanyId,
    required this.code,
    this.details,
    this.remarks,
    this.labels,
    this.$__typename = 'InfoProvision',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoProvisionId = json['infoProvisionId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$details = json['details'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
      infoProvisionId: (l$infoProvisionId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      details: (l$details as String?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoProvisionId;

  final String infoCompanyId;

  final String code;

  final String? details;

  final String? remarks;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoProvisionId = infoProvisionId;
    _resultData['infoProvisionId'] = l$infoProvisionId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$details = details;
    _resultData['details'] = l$details;
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
    final l$infoProvisionId = infoProvisionId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$details = details;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoProvisionId,
      l$infoCompanyId,
      l$code,
      l$details,
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision
    on Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision;

  TRes call({
    String? infoProvisionId,
    String? infoCompanyId,
    String? code,
    String? details,
    String? remarks,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? details = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      details: details == _undefined ? _instance.details : (details as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision(
    this._res,
  );

  TRes _res;

  call({
    String? infoProvisionId,
    String? infoCompanyId,
    String? code,
    String? details,
    String? remarks,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels.fromJson(
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
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels,
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
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ProvisionPageEdit$updateInfoProvisionByInfoProvisionId$infoProvision$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
