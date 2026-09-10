import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$InfoPostionEdit {
  factory Variables$Mutation$InfoPostionEdit({
    required String infoPositionId,
    int? priority,
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
  }) => Variables$Mutation$InfoPostionEdit._({
    r'infoPositionId': infoPositionId,
    if (priority != null) r'priority': priority,
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

  Variables$Mutation$InfoPostionEdit._(this._$data);

  factory Variables$Mutation$InfoPostionEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoPositionId = data['infoPositionId'];
    result$data['infoPositionId'] = (l$infoPositionId as String);
    if (data.containsKey('priority')) {
      final l$priority = data['priority'];
      result$data['priority'] = (l$priority as int?);
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
    return Variables$Mutation$InfoPostionEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoPositionId => (_$data['infoPositionId'] as String);

  int? get priority => (_$data['priority'] as int?);

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
    final l$infoPositionId = infoPositionId;
    result$data['infoPositionId'] = l$infoPositionId;
    if (_$data.containsKey('priority')) {
      final l$priority = priority;
      result$data['priority'] = l$priority;
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

  CopyWith$Variables$Mutation$InfoPostionEdit<
    Variables$Mutation$InfoPostionEdit
  >
  get copyWith => CopyWith$Variables$Mutation$InfoPostionEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InfoPostionEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (_$data.containsKey('priority') !=
        other._$data.containsKey('priority')) {
      return false;
    }
    if (l$priority != lOther$priority) {
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
    final l$infoPositionId = infoPositionId;
    final l$priority = priority;
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
      l$infoPositionId,
      _$data.containsKey('priority') ? l$priority : const {},
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

abstract class CopyWith$Variables$Mutation$InfoPostionEdit<TRes> {
  factory CopyWith$Variables$Mutation$InfoPostionEdit(
    Variables$Mutation$InfoPostionEdit instance,
    TRes Function(Variables$Mutation$InfoPostionEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$InfoPostionEdit;

  factory CopyWith$Variables$Mutation$InfoPostionEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InfoPostionEdit;

  TRes call({
    String? infoPositionId,
    int? priority,
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

class _CopyWithImpl$Variables$Mutation$InfoPostionEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoPostionEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$InfoPostionEdit(this._instance, this._then);

  final Variables$Mutation$InfoPostionEdit _instance;

  final TRes Function(Variables$Mutation$InfoPostionEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoPositionId = _undefined,
    Object? priority = _undefined,
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
    Variables$Mutation$InfoPostionEdit._({
      ..._instance._$data,
      if (infoPositionId != _undefined && infoPositionId != null)
        'infoPositionId': (infoPositionId as String),
      if (priority != _undefined) 'priority': (priority as int?),
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

class _CopyWithStubImpl$Variables$Mutation$InfoPostionEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoPostionEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InfoPostionEdit(this._res);

  TRes _res;

  call({
    String? infoPositionId,
    int? priority,
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

class Mutation$InfoPostionEdit {
  Mutation$InfoPostionEdit({
    this.updateInfoPositionByInfoPositionId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InfoPostionEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoPositionByInfoPositionId =
        json['updateInfoPositionByInfoPositionId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit(
      updateInfoPositionByInfoPositionId:
          l$updateInfoPositionByInfoPositionId == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId.fromJson(
              (l$updateInfoPositionByInfoPositionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId?
  updateInfoPositionByInfoPositionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoPositionByInfoPositionId =
        updateInfoPositionByInfoPositionId;
    _resultData['updateInfoPositionByInfoPositionId'] =
        l$updateInfoPositionByInfoPositionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoPositionByInfoPositionId =
        updateInfoPositionByInfoPositionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateInfoPositionByInfoPositionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoPostionEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoPositionByInfoPositionId =
        updateInfoPositionByInfoPositionId;
    final lOther$updateInfoPositionByInfoPositionId =
        other.updateInfoPositionByInfoPositionId;
    if (l$updateInfoPositionByInfoPositionId !=
        lOther$updateInfoPositionByInfoPositionId) {
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

extension UtilityExtension$Mutation$InfoPostionEdit
    on Mutation$InfoPostionEdit {
  CopyWith$Mutation$InfoPostionEdit<Mutation$InfoPostionEdit> get copyWith =>
      CopyWith$Mutation$InfoPostionEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$InfoPostionEdit<TRes> {
  factory CopyWith$Mutation$InfoPostionEdit(
    Mutation$InfoPostionEdit instance,
    TRes Function(Mutation$InfoPostionEdit) then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit;

  factory CopyWith$Mutation$InfoPostionEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InfoPostionEdit;

  TRes call({
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId?
    updateInfoPositionByInfoPositionId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<TRes>
  get updateInfoPositionByInfoPositionId;
}

class _CopyWithImpl$Mutation$InfoPostionEdit<TRes>
    implements CopyWith$Mutation$InfoPostionEdit<TRes> {
  _CopyWithImpl$Mutation$InfoPostionEdit(this._instance, this._then);

  final Mutation$InfoPostionEdit _instance;

  final TRes Function(Mutation$InfoPostionEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoPositionByInfoPositionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit(
      updateInfoPositionByInfoPositionId:
          updateInfoPositionByInfoPositionId == _undefined
          ? _instance.updateInfoPositionByInfoPositionId
          : (updateInfoPositionByInfoPositionId
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<TRes>
  get updateInfoPositionByInfoPositionId {
    final local$updateInfoPositionByInfoPositionId =
        _instance.updateInfoPositionByInfoPositionId;
    return local$updateInfoPositionByInfoPositionId == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
            local$updateInfoPositionByInfoPositionId,
            (e) => call(updateInfoPositionByInfoPositionId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoPostionEdit<TRes>
    implements CopyWith$Mutation$InfoPostionEdit<TRes> {
  _CopyWithStubImpl$Mutation$InfoPostionEdit(this._res);

  TRes _res;

  call({
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId?
    updateInfoPositionByInfoPositionId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<TRes>
  get updateInfoPositionByInfoPositionId =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId.stub(
        _res,
      );
}

const documentNodeMutationInfoPostionEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InfoPostionEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoPositionId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'priority')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
            name: NameNode(value: 'updateInfoPositionByInfoPositionId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoPositionId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoPositionId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoPositionPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'priority'),
                            value: VariableNode(
                              name: NameNode(value: 'priority'),
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
                  name: NameNode(value: 'infoPosition'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoPositionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priority'),
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
Mutation$InfoPostionEdit _parserFn$Mutation$InfoPostionEdit(
  Map<String, dynamic> data,
) => Mutation$InfoPostionEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$InfoPostionEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$InfoPostionEdit?);

class Options$Mutation$InfoPostionEdit
    extends graphql.MutationOptions<Mutation$InfoPostionEdit> {
  Options$Mutation$InfoPostionEdit({
    String? operationName,
    required Variables$Mutation$InfoPostionEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoPostionEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoPostionEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoPostionEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoPostionEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoPostionEdit,
         parserFn: _parserFn$Mutation$InfoPostionEdit,
       );

  final OnMutationCompleted$Mutation$InfoPostionEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InfoPostionEdit
    extends graphql.WatchQueryOptions<Mutation$InfoPostionEdit> {
  WatchOptions$Mutation$InfoPostionEdit({
    String? operationName,
    required Variables$Mutation$InfoPostionEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoPostionEdit? typedOptimisticResult,
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
         document: documentNodeMutationInfoPostionEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InfoPostionEdit,
       );
}

extension ClientExtension$Mutation$InfoPostionEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InfoPostionEdit>> mutate$InfoPostionEdit(
    Options$Mutation$InfoPostionEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InfoPostionEdit>
  watchMutation$InfoPostionEdit(
    WatchOptions$Mutation$InfoPostionEdit options,
  ) => this.watchMutation(options);
}

class Mutation$InfoPostionEdit$HookResult {
  Mutation$InfoPostionEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InfoPostionEdit runMutation;

  final graphql.QueryResult<Mutation$InfoPostionEdit> result;
}

Mutation$InfoPostionEdit$HookResult useMutation$InfoPostionEdit([
  WidgetOptions$Mutation$InfoPostionEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InfoPostionEdit(),
  );
  return Mutation$InfoPostionEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InfoPostionEdit>
useWatchMutation$InfoPostionEdit(
  WatchOptions$Mutation$InfoPostionEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InfoPostionEdit
    extends graphql.MutationOptions<Mutation$InfoPostionEdit> {
  WidgetOptions$Mutation$InfoPostionEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoPostionEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoPostionEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoPostionEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoPostionEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoPostionEdit,
         parserFn: _parserFn$Mutation$InfoPostionEdit,
       );

  final OnMutationCompleted$Mutation$InfoPostionEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InfoPostionEdit =
    graphql.MultiSourceResult<Mutation$InfoPostionEdit> Function(
      Variables$Mutation$InfoPostionEdit, {
      Object? optimisticResult,
      Mutation$InfoPostionEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$InfoPostionEdit =
    widgets.Widget Function(
      RunMutation$Mutation$InfoPostionEdit,
      graphql.QueryResult<Mutation$InfoPostionEdit>?,
    );

class Mutation$InfoPostionEdit$Widget
    extends graphql_flutter.Mutation<Mutation$InfoPostionEdit> {
  Mutation$InfoPostionEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InfoPostionEdit? options,
    required Builder$Mutation$InfoPostionEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InfoPostionEdit(),
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

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId({
    this.infoPosition,
    this.$__typename = 'UpdateInfoPositionPayload',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoPosition = json['infoPosition'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
      infoPosition: l$infoPosition == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.fromJson(
              (l$infoPosition as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition?
  infoPosition;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoPosition = infoPosition;
    _resultData['infoPosition'] = l$infoPosition?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoPosition = infoPosition;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoPosition, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoPosition = infoPosition;
    final lOther$infoPosition = other.infoPosition;
    if (l$infoPosition != lOther$infoPosition) {
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId
    on Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId instance,
    TRes Function(Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId)
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId;

  TRes call({
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition?
    infoPosition,
    String? $__typename,
  });
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
    TRes
  >
  get infoPosition;
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoPosition = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
      infoPosition: infoPosition == _undefined
          ? _instance.infoPosition
          : (infoPosition
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
    TRes
  >
  get infoPosition {
    final local$infoPosition = _instance.infoPosition;
    return local$infoPosition == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
            local$infoPosition,
            (e) => call(infoPosition: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition?
    infoPosition,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
    TRes
  >
  get infoPosition =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.stub(
        _res,
      );
}

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition({
    required this.infoPositionId,
    required this.priority,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoPosition',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoPositionId = json['infoPositionId'];
    final l$priority = json['priority'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
      infoPositionId: (l$infoPositionId as String),
      priority: (l$priority as int),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoPositionId;

  final int priority;

  final String? remarks;

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoPositionId = infoPositionId;
    _resultData['infoPositionId'] = l$infoPositionId;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
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
    final l$infoPositionId = infoPositionId;
    final l$priority = priority;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoPositionId,
      l$priority,
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
            is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition
    on Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition
    instance,
    TRes Function(
      Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition;

  TRes call({
    String? infoPositionId,
    int? priority,
    String? remarks,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition
  _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoPositionId = _undefined,
    Object? priority = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
      infoPositionId: infoPositionId == _undefined || infoPositionId == null
          ? _instance.infoPositionId
          : (infoPositionId as String),
      priority: priority == _undefined || priority == null
          ? _instance.priority
          : (priority as int),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition(
    this._res,
  );

  TRes _res;

  call({
    String? infoPositionId,
    int? priority,
    String? remarks,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId
    on
        Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId,
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
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoPostionEdit$updateInfoPositionByInfoPositionId$infoPosition$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
