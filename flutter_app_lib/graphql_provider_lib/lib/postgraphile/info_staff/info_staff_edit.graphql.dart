import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$InfoStaffEdit {
  factory Variables$Mutation$InfoStaffEdit({
    required String infoStaffId,
    String? code,
    String? infoOfficeId,
    String? privatePhone,
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
  }) => Variables$Mutation$InfoStaffEdit._({
    r'infoStaffId': infoStaffId,
    if (code != null) r'code': code,
    if (infoOfficeId != null) r'infoOfficeId': infoOfficeId,
    if (privatePhone != null) r'privatePhone': privatePhone,
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

  Variables$Mutation$InfoStaffEdit._(this._$data);

  factory Variables$Mutation$InfoStaffEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoStaffId = data['infoStaffId'];
    result$data['infoStaffId'] = (l$infoStaffId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('infoOfficeId')) {
      final l$infoOfficeId = data['infoOfficeId'];
      result$data['infoOfficeId'] = (l$infoOfficeId as String?);
    }
    if (data.containsKey('privatePhone')) {
      final l$privatePhone = data['privatePhone'];
      result$data['privatePhone'] = (l$privatePhone as String?);
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
    return Variables$Mutation$InfoStaffEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoStaffId => (_$data['infoStaffId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get infoOfficeId => (_$data['infoOfficeId'] as String?);

  String? get privatePhone => (_$data['privatePhone'] as String?);

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
    final l$infoStaffId = infoStaffId;
    result$data['infoStaffId'] = l$infoStaffId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('infoOfficeId')) {
      final l$infoOfficeId = infoOfficeId;
      result$data['infoOfficeId'] = l$infoOfficeId;
    }
    if (_$data.containsKey('privatePhone')) {
      final l$privatePhone = privatePhone;
      result$data['privatePhone'] = l$privatePhone;
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

  CopyWith$Variables$Mutation$InfoStaffEdit<Variables$Mutation$InfoStaffEdit>
  get copyWith => CopyWith$Variables$Mutation$InfoStaffEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InfoStaffEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
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
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (_$data.containsKey('infoOfficeId') !=
        other._$data.containsKey('infoOfficeId')) {
      return false;
    }
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (_$data.containsKey('privatePhone') !=
        other._$data.containsKey('privatePhone')) {
      return false;
    }
    if (l$privatePhone != lOther$privatePhone) {
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
    final l$infoStaffId = infoStaffId;
    final l$code = code;
    final l$infoOfficeId = infoOfficeId;
    final l$privatePhone = privatePhone;
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
      l$infoStaffId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('infoOfficeId') ? l$infoOfficeId : const {},
      _$data.containsKey('privatePhone') ? l$privatePhone : const {},
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

abstract class CopyWith$Variables$Mutation$InfoStaffEdit<TRes> {
  factory CopyWith$Variables$Mutation$InfoStaffEdit(
    Variables$Mutation$InfoStaffEdit instance,
    TRes Function(Variables$Mutation$InfoStaffEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$InfoStaffEdit;

  factory CopyWith$Variables$Mutation$InfoStaffEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InfoStaffEdit;

  TRes call({
    String? infoStaffId,
    String? code,
    String? infoOfficeId,
    String? privatePhone,
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

class _CopyWithImpl$Variables$Mutation$InfoStaffEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoStaffEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$InfoStaffEdit(this._instance, this._then);

  final Variables$Mutation$InfoStaffEdit _instance;

  final TRes Function(Variables$Mutation$InfoStaffEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? code = _undefined,
    Object? infoOfficeId = _undefined,
    Object? privatePhone = _undefined,
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
    Variables$Mutation$InfoStaffEdit._({
      ..._instance._$data,
      if (infoStaffId != _undefined && infoStaffId != null)
        'infoStaffId': (infoStaffId as String),
      if (code != _undefined) 'code': (code as String?),
      if (infoOfficeId != _undefined) 'infoOfficeId': (infoOfficeId as String?),
      if (privatePhone != _undefined) 'privatePhone': (privatePhone as String?),
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

class _CopyWithStubImpl$Variables$Mutation$InfoStaffEdit<TRes>
    implements CopyWith$Variables$Mutation$InfoStaffEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InfoStaffEdit(this._res);

  TRes _res;

  call({
    String? infoStaffId,
    String? code,
    String? infoOfficeId,
    String? privatePhone,
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

class Mutation$InfoStaffEdit {
  Mutation$InfoStaffEdit({
    this.updateInfoStaffByInfoStaffId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InfoStaffEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoStaffByInfoStaffId = json['updateInfoStaffByInfoStaffId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit(
      updateInfoStaffByInfoStaffId: l$updateInfoStaffByInfoStaffId == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId.fromJson(
              (l$updateInfoStaffByInfoStaffId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId?
  updateInfoStaffByInfoStaffId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoStaffByInfoStaffId = updateInfoStaffByInfoStaffId;
    _resultData['updateInfoStaffByInfoStaffId'] = l$updateInfoStaffByInfoStaffId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoStaffByInfoStaffId = updateInfoStaffByInfoStaffId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInfoStaffByInfoStaffId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoStaffEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoStaffByInfoStaffId = updateInfoStaffByInfoStaffId;
    final lOther$updateInfoStaffByInfoStaffId =
        other.updateInfoStaffByInfoStaffId;
    if (l$updateInfoStaffByInfoStaffId != lOther$updateInfoStaffByInfoStaffId) {
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

extension UtilityExtension$Mutation$InfoStaffEdit on Mutation$InfoStaffEdit {
  CopyWith$Mutation$InfoStaffEdit<Mutation$InfoStaffEdit> get copyWith =>
      CopyWith$Mutation$InfoStaffEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$InfoStaffEdit<TRes> {
  factory CopyWith$Mutation$InfoStaffEdit(
    Mutation$InfoStaffEdit instance,
    TRes Function(Mutation$InfoStaffEdit) then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit;

  factory CopyWith$Mutation$InfoStaffEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InfoStaffEdit;

  TRes call({
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId?
    updateInfoStaffByInfoStaffId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId;
}

class _CopyWithImpl$Mutation$InfoStaffEdit<TRes>
    implements CopyWith$Mutation$InfoStaffEdit<TRes> {
  _CopyWithImpl$Mutation$InfoStaffEdit(this._instance, this._then);

  final Mutation$InfoStaffEdit _instance;

  final TRes Function(Mutation$InfoStaffEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoStaffByInfoStaffId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit(
      updateInfoStaffByInfoStaffId: updateInfoStaffByInfoStaffId == _undefined
          ? _instance.updateInfoStaffByInfoStaffId
          : (updateInfoStaffByInfoStaffId
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId {
    final local$updateInfoStaffByInfoStaffId =
        _instance.updateInfoStaffByInfoStaffId;
    return local$updateInfoStaffByInfoStaffId == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
            local$updateInfoStaffByInfoStaffId,
            (e) => call(updateInfoStaffByInfoStaffId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoStaffEdit<TRes>
    implements CopyWith$Mutation$InfoStaffEdit<TRes> {
  _CopyWithStubImpl$Mutation$InfoStaffEdit(this._res);

  TRes _res;

  call({
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId?
    updateInfoStaffByInfoStaffId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId.stub(_res);
}

const documentNodeMutationInfoStaffEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InfoStaffEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoStaffId')),
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
          variable: VariableNode(name: NameNode(value: 'infoOfficeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'privatePhone')),
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
            name: NameNode(value: 'updateInfoStaffByInfoStaffId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoStaffId'),
                      value: VariableNode(name: NameNode(value: 'infoStaffId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoStaffPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoOfficeId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoOfficeId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'privatePhone'),
                            value: VariableNode(
                              name: NameNode(value: 'privatePhone'),
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
                  name: NameNode(value: 'infoStaff'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoStaffId'),
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
                        name: NameNode(value: 'infoOfficeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'privatePhone'),
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
Mutation$InfoStaffEdit _parserFn$Mutation$InfoStaffEdit(
  Map<String, dynamic> data,
) => Mutation$InfoStaffEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$InfoStaffEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$InfoStaffEdit?);

class Options$Mutation$InfoStaffEdit
    extends graphql.MutationOptions<Mutation$InfoStaffEdit> {
  Options$Mutation$InfoStaffEdit({
    String? operationName,
    required Variables$Mutation$InfoStaffEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoStaffEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoStaffEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoStaffEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoStaffEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoStaffEdit,
         parserFn: _parserFn$Mutation$InfoStaffEdit,
       );

  final OnMutationCompleted$Mutation$InfoStaffEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$InfoStaffEdit
    extends graphql.WatchQueryOptions<Mutation$InfoStaffEdit> {
  WatchOptions$Mutation$InfoStaffEdit({
    String? operationName,
    required Variables$Mutation$InfoStaffEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoStaffEdit? typedOptimisticResult,
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
         document: documentNodeMutationInfoStaffEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$InfoStaffEdit,
       );
}

extension ClientExtension$Mutation$InfoStaffEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InfoStaffEdit>> mutate$InfoStaffEdit(
    Options$Mutation$InfoStaffEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$InfoStaffEdit> watchMutation$InfoStaffEdit(
    WatchOptions$Mutation$InfoStaffEdit options,
  ) => this.watchMutation(options);
}

class Mutation$InfoStaffEdit$HookResult {
  Mutation$InfoStaffEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$InfoStaffEdit runMutation;

  final graphql.QueryResult<Mutation$InfoStaffEdit> result;
}

Mutation$InfoStaffEdit$HookResult useMutation$InfoStaffEdit([
  WidgetOptions$Mutation$InfoStaffEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$InfoStaffEdit(),
  );
  return Mutation$InfoStaffEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InfoStaffEdit> useWatchMutation$InfoStaffEdit(
  WatchOptions$Mutation$InfoStaffEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InfoStaffEdit
    extends graphql.MutationOptions<Mutation$InfoStaffEdit> {
  WidgetOptions$Mutation$InfoStaffEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InfoStaffEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InfoStaffEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$InfoStaffEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$InfoStaffEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationInfoStaffEdit,
         parserFn: _parserFn$Mutation$InfoStaffEdit,
       );

  final OnMutationCompleted$Mutation$InfoStaffEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$InfoStaffEdit =
    graphql.MultiSourceResult<Mutation$InfoStaffEdit> Function(
      Variables$Mutation$InfoStaffEdit, {
      Object? optimisticResult,
      Mutation$InfoStaffEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$InfoStaffEdit =
    widgets.Widget Function(
      RunMutation$Mutation$InfoStaffEdit,
      graphql.QueryResult<Mutation$InfoStaffEdit>?,
    );

class Mutation$InfoStaffEdit$Widget
    extends graphql_flutter.Mutation<Mutation$InfoStaffEdit> {
  Mutation$InfoStaffEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InfoStaffEdit? options,
    required Builder$Mutation$InfoStaffEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$InfoStaffEdit(),
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

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId({
    this.infoStaff,
    this.$__typename = 'UpdateInfoStaffPayload',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaff = json['infoStaff'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
      infoStaff: l$infoStaff == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
              (l$infoStaff as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff?
  infoStaff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoStaff = infoStaff;
    _resultData['infoStaff'] = l$infoStaff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoStaff = infoStaff;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoStaff, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaff = infoStaff;
    final lOther$infoStaff = other.infoStaff;
    if (l$infoStaff != lOther$infoStaff) {
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId
    on Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId
  >
  get copyWith => CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId instance,
    TRes Function(Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId) then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId;

  TRes call({
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff? infoStaff,
    String? $__typename,
  });
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff;
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes> {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId _instance;

  final TRes Function(Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaff = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
      infoStaff: infoStaff == _undefined
          ? _instance.infoStaff
          : (infoStaff
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff {
    final local$infoStaff = _instance.infoStaff;
    return local$infoStaff == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
            local$infoStaff,
            (e) => call(infoStaff: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId<TRes> {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff? infoStaff,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
        _res,
      );
}

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff({
    required this.infoStaffId,
    this.code,
    this.infoOfficeId,
    this.privatePhone,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoStaff',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaffId = json['infoStaffId'];
    final l$code = json['code'];
    final l$infoOfficeId = json['infoOfficeId'];
    final l$privatePhone = json['privatePhone'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
      infoStaffId: (l$infoStaffId as String),
      code: (l$code as String?),
      infoOfficeId: (l$infoOfficeId as String?),
      privatePhone: (l$privatePhone as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoStaffId;

  final String? code;

  final String? infoOfficeId;

  final String? privatePhone;

  final String? remarks;

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
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
    final l$infoStaffId = infoStaffId;
    final l$code = code;
    final l$infoOfficeId = infoOfficeId;
    final l$privatePhone = privatePhone;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoStaffId,
      l$code,
      l$infoOfficeId,
      l$privatePhone,
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
            is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff
    on Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff
  >
  get copyWith =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff instance,
    TRes Function(Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff)
    then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff;

  TRes call({
    String? infoStaffId,
    String? code,
    String? infoOfficeId,
    String? privatePhone,
    String? remarks,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff _instance;

  final TRes Function(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? code = _undefined,
    Object? infoOfficeId = _undefined,
    Object? privatePhone = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      infoOfficeId: infoOfficeId == _undefined
          ? _instance.infoOfficeId
          : (infoOfficeId as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff(
    this._res,
  );

  TRes _res;

  call({
    String? infoStaffId,
    String? code,
    String? infoOfficeId,
    String? privatePhone,
    String? remarks,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId
    on
        Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId,
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
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$InfoStaffEdit$updateInfoStaffByInfoStaffId$infoStaff$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
