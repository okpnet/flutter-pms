import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemKindEdit {
  factory Variables$Mutation$ItemKindEdit({
    required String mstrItemKindId,
    String? code,
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
  }) => Variables$Mutation$ItemKindEdit._({
    r'mstrItemKindId': mstrItemKindId,
    if (code != null) r'code': code,
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

  Variables$Mutation$ItemKindEdit._(this._$data);

  factory Variables$Mutation$ItemKindEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrItemKindId = data['mstrItemKindId'];
    result$data['mstrItemKindId'] = (l$mstrItemKindId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
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
    return Variables$Mutation$ItemKindEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemKindId => (_$data['mstrItemKindId'] as String);

  String? get code => (_$data['code'] as String?);

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
    final l$mstrItemKindId = mstrItemKindId;
    result$data['mstrItemKindId'] = l$mstrItemKindId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
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

  CopyWith$Variables$Mutation$ItemKindEdit<Variables$Mutation$ItemKindEdit>
  get copyWith => CopyWith$Variables$Mutation$ItemKindEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemKindEdit ||
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
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
      l$mstrItemKindId,
      _$data.containsKey('code') ? l$code : const {},
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

abstract class CopyWith$Variables$Mutation$ItemKindEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemKindEdit(
    Variables$Mutation$ItemKindEdit instance,
    TRes Function(Variables$Mutation$ItemKindEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemKindEdit;

  factory CopyWith$Variables$Mutation$ItemKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemKindEdit;

  TRes call({
    String? mstrItemKindId,
    String? code,
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

class _CopyWithImpl$Variables$Mutation$ItemKindEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemKindEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemKindEdit(this._instance, this._then);

  final Variables$Mutation$ItemKindEdit _instance;

  final TRes Function(Variables$Mutation$ItemKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
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
    Variables$Mutation$ItemKindEdit._({
      ..._instance._$data,
      if (mstrItemKindId != _undefined && mstrItemKindId != null)
        'mstrItemKindId': (mstrItemKindId as String),
      if (code != _undefined) 'code': (code as String?),
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

class _CopyWithStubImpl$Variables$Mutation$ItemKindEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemKindEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemKindEdit(this._res);

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
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

class Mutation$ItemKindEdit {
  Mutation$ItemKindEdit({
    this.updateMstrItemKindByMstrItemKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemKindEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemKindByMstrItemKindId =
        json['updateMstrItemKindByMstrItemKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit(
      updateMstrItemKindByMstrItemKindId:
          l$updateMstrItemKindByMstrItemKindId == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId.fromJson(
              (l$updateMstrItemKindByMstrItemKindId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId?
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
    if (other is! Mutation$ItemKindEdit || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ItemKindEdit on Mutation$ItemKindEdit {
  CopyWith$Mutation$ItemKindEdit<Mutation$ItemKindEdit> get copyWith =>
      CopyWith$Mutation$ItemKindEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemKindEdit<TRes> {
  factory CopyWith$Mutation$ItemKindEdit(
    Mutation$ItemKindEdit instance,
    TRes Function(Mutation$ItemKindEdit) then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit;

  factory CopyWith$Mutation$ItemKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemKindEdit;

  TRes call({
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId?
    updateMstrItemKindByMstrItemKindId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId;
}

class _CopyWithImpl$Mutation$ItemKindEdit<TRes>
    implements CopyWith$Mutation$ItemKindEdit<TRes> {
  _CopyWithImpl$Mutation$ItemKindEdit(this._instance, this._then);

  final Mutation$ItemKindEdit _instance;

  final TRes Function(Mutation$ItemKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemKindByMstrItemKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit(
      updateMstrItemKindByMstrItemKindId:
          updateMstrItemKindByMstrItemKindId == _undefined
          ? _instance.updateMstrItemKindByMstrItemKindId
          : (updateMstrItemKindByMstrItemKindId
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId {
    final local$updateMstrItemKindByMstrItemKindId =
        _instance.updateMstrItemKindByMstrItemKindId;
    return local$updateMstrItemKindByMstrItemKindId == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
            local$updateMstrItemKindByMstrItemKindId,
            (e) => call(updateMstrItemKindByMstrItemKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindEdit<TRes>
    implements CopyWith$Mutation$ItemKindEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemKindEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId?
    updateMstrItemKindByMstrItemKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<TRes>
  get updateMstrItemKindByMstrItemKindId =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId.stub(
        _res,
      );
}

const documentNodeMutationItemKindEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemKindEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemKindId')),
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
Mutation$ItemKindEdit _parserFn$Mutation$ItemKindEdit(
  Map<String, dynamic> data,
) => Mutation$ItemKindEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemKindEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ItemKindEdit?);

class Options$Mutation$ItemKindEdit
    extends graphql.MutationOptions<Mutation$ItemKindEdit> {
  Options$Mutation$ItemKindEdit({
    String? operationName,
    required Variables$Mutation$ItemKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemKindEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemKindEdit,
         parserFn: _parserFn$Mutation$ItemKindEdit,
       );

  final OnMutationCompleted$Mutation$ItemKindEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemKindEdit
    extends graphql.WatchQueryOptions<Mutation$ItemKindEdit> {
  WatchOptions$Mutation$ItemKindEdit({
    String? operationName,
    required Variables$Mutation$ItemKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemKindEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemKindEdit,
       );
}

extension ClientExtension$Mutation$ItemKindEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemKindEdit>> mutate$ItemKindEdit(
    Options$Mutation$ItemKindEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemKindEdit> watchMutation$ItemKindEdit(
    WatchOptions$Mutation$ItemKindEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemKindEdit$HookResult {
  Mutation$ItemKindEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemKindEdit runMutation;

  final graphql.QueryResult<Mutation$ItemKindEdit> result;
}

Mutation$ItemKindEdit$HookResult useMutation$ItemKindEdit([
  WidgetOptions$Mutation$ItemKindEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemKindEdit(),
  );
  return Mutation$ItemKindEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemKindEdit> useWatchMutation$ItemKindEdit(
  WatchOptions$Mutation$ItemKindEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemKindEdit
    extends graphql.MutationOptions<Mutation$ItemKindEdit> {
  WidgetOptions$Mutation$ItemKindEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemKindEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ItemKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemKindEdit,
         parserFn: _parserFn$Mutation$ItemKindEdit,
       );

  final OnMutationCompleted$Mutation$ItemKindEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemKindEdit =
    graphql.MultiSourceResult<Mutation$ItemKindEdit> Function(
      Variables$Mutation$ItemKindEdit, {
      Object? optimisticResult,
      Mutation$ItemKindEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemKindEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ItemKindEdit,
      graphql.QueryResult<Mutation$ItemKindEdit>?,
    );

class Mutation$ItemKindEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemKindEdit> {
  Mutation$ItemKindEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemKindEdit? options,
    required Builder$Mutation$ItemKindEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemKindEdit(),
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

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId({
    this.mstrItemKind,
    this.$__typename = 'UpdateMstrItemKindPayload',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKind = json['mstrItemKind'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
      mstrItemKind: l$mstrItemKind == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
              (l$mstrItemKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
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
    if (other is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId
    on Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId instance,
    TRes Function(Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId)
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId;

  TRes call({
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
    mstrItemKind,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind;
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId _instance;

  final TRes Function(Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
      mstrItemKind: mstrItemKind == _undefined
          ? _instance.mstrItemKind
          : (mstrItemKind
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind {
    final local$mstrItemKind = _instance.mstrItemKind;
    return local$mstrItemKind == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
            local$mstrItemKind,
            (e) => call(mstrItemKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind?
    mstrItemKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    TRes
  >
  get mstrItemKind =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
        _res,
      );
}

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind({
    required this.mstrItemKindId,
    this.code,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItemKind',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final String? remarks;

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemKindId,
      l$code,
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
            is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
    on Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
    instance,
    TRes Function(
      Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind;

  TRes call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind
  _instance;

  final TRes Function(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId
    on
        Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId,
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
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemKindEdit$updateMstrItemKindByMstrItemKindId$mstrItemKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
