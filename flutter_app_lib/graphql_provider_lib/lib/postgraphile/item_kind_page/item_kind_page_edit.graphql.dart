import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemKindPageEdit {
  factory Variables$Mutation$ItemKindPageEdit({
    required String mstrItemKindId,
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
  }) => Variables$Mutation$ItemKindPageEdit._({
    r'mstrItemKindId': mstrItemKindId,
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

  Variables$Mutation$ItemKindPageEdit._(this._$data);

  factory Variables$Mutation$ItemKindPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemKindId = data['mstrItemKindId'];
    result$data['mstrItemKindId'] = (l$mstrItemKindId as String);
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
    return Variables$Mutation$ItemKindPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemKindId => (_$data['mstrItemKindId'] as String);

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
    final l$mstrItemKindId = mstrItemKindId;
    result$data['mstrItemKindId'] = l$mstrItemKindId;
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

  CopyWith$Variables$Mutation$ItemKindPageEdit<
    Variables$Mutation$ItemKindPageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ItemKindPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemKindPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
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
    final l$mstrItemKindId = mstrItemKindId;
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
      l$mstrItemKindId,
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

abstract class CopyWith$Variables$Mutation$ItemKindPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemKindPageEdit(
    Variables$Mutation$ItemKindPageEdit instance,
    TRes Function(Variables$Mutation$ItemKindPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemKindPageEdit;

  factory CopyWith$Variables$Mutation$ItemKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemKindPageEdit;

  TRes call({
    String? mstrItemKindId,
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

class _CopyWithImpl$Variables$Mutation$ItemKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemKindPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemKindPageEdit(this._instance, this._then);

  final Variables$Mutation$ItemKindPageEdit _instance;

  final TRes Function(Variables$Mutation$ItemKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
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
    Variables$Mutation$ItemKindPageEdit._({
      ..._instance._$data,
      if (mstrItemKindId != _undefined && mstrItemKindId != null)
        'mstrItemKindId': (mstrItemKindId as String),
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

class _CopyWithStubImpl$Variables$Mutation$ItemKindPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemKindPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemKindPageEdit(this._res);

  TRes _res;

  call({
    String? mstrItemKindId,
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

class Mutation$ItemKindPageEdit {
  Mutation$ItemKindPageEdit({
    this.updateMstrItemKindByMstrItemKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemKindPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemKindByMstrItemKindId =
        json['updateMstrItemKindByMstrItemKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit(
      updateMstrItemKindByMstrItemKindId:
          l$updateMstrItemKindByMstrItemKindId == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId.fromJson(
              (l$updateMstrItemKindByMstrItemKindId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId?
  updateMstrItemKindByMstrItemKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemKindByMstrItemKindId =
        updateMstrItemKindByMstrItemKindId;
    _resultData['updateMstrItemKindByMstrItemKindId'] =
        l$updateMstrItemKindByMstrItemKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemKindByMstrItemKindId =
        updateMstrItemKindByMstrItemKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrItemKindByMstrItemKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemKindPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemKindByMstrItemKindId =
        updateMstrItemKindByMstrItemKindId;
    final lOther$updateMstrItemKindByMstrItemKindId =
        other.updateMstrItemKindByMstrItemKindId;
    if (l$updateMstrItemKindByMstrItemKindId !=
        lOther$updateMstrItemKindByMstrItemKindId) {
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

extension UtilityExtension$Mutation$ItemKindPageEdit
    on Mutation$ItemKindPageEdit {
  CopyWith$Mutation$ItemKindPageEdit<Mutation$ItemKindPageEdit> get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemKindPageEdit<TRes> {
  factory CopyWith$Mutation$ItemKindPageEdit(
    Mutation$ItemKindPageEdit instance,
    TRes Function(Mutation$ItemKindPageEdit) then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit;

  factory CopyWith$Mutation$ItemKindPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemKindPageEdit;

  TRes call({
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId?
    updateMstrItemKindByMstrItemKindId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit<TRes>
    implements CopyWith$Mutation$ItemKindPageEdit<TRes> {
  _CopyWithImpl$Mutation$ItemKindPageEdit(this._instance, this._then);

  final Mutation$ItemKindPageEdit _instance;

  final TRes Function(Mutation$ItemKindPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemKindByMstrItemKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit(
      updateMstrItemKindByMstrItemKindId:
          updateMstrItemKindByMstrItemKindId == _undefined
          ? _instance.updateMstrItemKindByMstrItemKindId
          : (updateMstrItemKindByMstrItemKindId
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId {
    final local$updateMstrItemKindByMstrItemKindId =
        _instance.updateMstrItemKindByMstrItemKindId;
    return local$updateMstrItemKindByMstrItemKindId == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
            local$updateMstrItemKindByMstrItemKindId,
            (e) => call(updateMstrItemKindByMstrItemKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit<TRes>
    implements CopyWith$Mutation$ItemKindPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId?
    updateMstrItemKindByMstrItemKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId.stub(
        _res,
      );
}

const documentNodeMutationItemKindPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemKindPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
            name: NameNode(value: 'updateMstrItemKindByMstrItemKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemKindId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrItemKindId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemKindPatch'),
                      value: ObjectValueNode(
                        fields: [
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
                  name: NameNode(value: 'mstrItemKind'),
                  alias: null,
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
Mutation$ItemKindPageEdit _parserFn$Mutation$ItemKindPageEdit(
  Map<String, dynamic> data,
) => Mutation$ItemKindPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemKindPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ItemKindPageEdit?);

class Options$Mutation$ItemKindPageEdit
    extends graphql.MutationOptions<Mutation$ItemKindPageEdit> {
  Options$Mutation$ItemKindPageEdit({
    String? operationName,
    required Variables$Mutation$ItemKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemKindPageEdit>? update,
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
                     : _parserFn$Mutation$ItemKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemKindPageEdit,
         parserFn: _parserFn$Mutation$ItemKindPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemKindPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemKindPageEdit
    extends graphql.WatchQueryOptions<Mutation$ItemKindPageEdit> {
  WatchOptions$Mutation$ItemKindPageEdit({
    String? operationName,
    required Variables$Mutation$ItemKindPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemKindPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemKindPageEdit,
       );
}

extension ClientExtension$Mutation$ItemKindPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemKindPageEdit>>
  mutate$ItemKindPageEdit(Options$Mutation$ItemKindPageEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemKindPageEdit>
  watchMutation$ItemKindPageEdit(
    WatchOptions$Mutation$ItemKindPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemKindPageEdit$HookResult {
  Mutation$ItemKindPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemKindPageEdit runMutation;

  final graphql.QueryResult<Mutation$ItemKindPageEdit> result;
}

Mutation$ItemKindPageEdit$HookResult useMutation$ItemKindPageEdit([
  WidgetOptions$Mutation$ItemKindPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemKindPageEdit(),
  );
  return Mutation$ItemKindPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemKindPageEdit>
useWatchMutation$ItemKindPageEdit(
  WatchOptions$Mutation$ItemKindPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemKindPageEdit
    extends graphql.MutationOptions<Mutation$ItemKindPageEdit> {
  WidgetOptions$Mutation$ItemKindPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemKindPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemKindPageEdit>? update,
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
                     : _parserFn$Mutation$ItemKindPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemKindPageEdit,
         parserFn: _parserFn$Mutation$ItemKindPageEdit,
       );

  final OnMutationCompleted$Mutation$ItemKindPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemKindPageEdit =
    graphql.MultiSourceResult<Mutation$ItemKindPageEdit> Function(
      Variables$Mutation$ItemKindPageEdit, {
      Object? optimisticResult,
      Mutation$ItemKindPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemKindPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ItemKindPageEdit,
      graphql.QueryResult<Mutation$ItemKindPageEdit>?,
    );

class Mutation$ItemKindPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemKindPageEdit> {
  Mutation$ItemKindPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemKindPageEdit? options,
    required Builder$Mutation$ItemKindPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemKindPageEdit(),
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

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId({
    this.mstrItemKind,
    this.$__typename = 'UpdateMstrItemKindPayload',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKind = json['mstrItemKind'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
      mstrItemKind: l$mstrItemKind == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
              (l$mstrItemKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
  mstrItemKind;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKind = mstrItemKind;
    _resultData['mstrItemKind'] = l$mstrItemKind?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemKind = mstrItemKind;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemKind, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemKind = mstrItemKind;
    final lOther$mstrItemKind = other.mstrItemKind;
    if (l$mstrItemKind != lOther$mstrItemKind) {
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId
    on Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId instance,
    TRes Function(Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId)
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId;

  TRes call({
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
    mstrItemKind,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
      mstrItemKind: mstrItemKind == _undefined
          ? _instance.mstrItemKind
          : (mstrItemKind
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind {
    final local$mstrItemKind = _instance.mstrItemKind;
    return local$mstrItemKind == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
            local$mstrItemKind,
            (e) => call(mstrItemKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
    mstrItemKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind({
    required this.mstrItemKindId,
    this.code,
    this.remarks,
    this.labels,
    this.$__typename = 'MstrItemKind',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final String? remarks;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemKindId,
      l$code,
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
    on Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind;

  TRes call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels.fromJson(
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
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels,
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
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindPageEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
