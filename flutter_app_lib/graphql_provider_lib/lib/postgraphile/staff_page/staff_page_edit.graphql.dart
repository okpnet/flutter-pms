import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$StaffPageEdit {
  factory Variables$Mutation$StaffPageEdit({
    required String infoStaffId,
    String? sex,
    String? phone,
    String? privatePhone,
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
  }) => Variables$Mutation$StaffPageEdit._({
    r'infoStaffId': infoStaffId,
    if (sex != null) r'sex': sex,
    if (phone != null) r'phone': phone,
    if (privatePhone != null) r'privatePhone': privatePhone,
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

  Variables$Mutation$StaffPageEdit._(this._$data);

  factory Variables$Mutation$StaffPageEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoStaffId = data['infoStaffId'];
    result$data['infoStaffId'] = (l$infoStaffId as String);
    if (data.containsKey('sex')) {
      final l$sex = data['sex'];
      result$data['sex'] = (l$sex as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
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
    return Variables$Mutation$StaffPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoStaffId => (_$data['infoStaffId'] as String);

  String? get sex => (_$data['sex'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get privatePhone => (_$data['privatePhone'] as String?);

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
    final l$infoStaffId = infoStaffId;
    result$data['infoStaffId'] = l$infoStaffId;
    if (_$data.containsKey('sex')) {
      final l$sex = sex;
      result$data['sex'] = l$sex;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
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

  CopyWith$Variables$Mutation$StaffPageEdit<Variables$Mutation$StaffPageEdit>
  get copyWith => CopyWith$Variables$Mutation$StaffPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$StaffPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (_$data.containsKey('sex') != other._$data.containsKey('sex')) {
      return false;
    }
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
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
    final l$infoStaffId = infoStaffId;
    final l$sex = sex;
    final l$phone = phone;
    final l$privatePhone = privatePhone;
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
      l$infoStaffId,
      _$data.containsKey('sex') ? l$sex : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('privatePhone') ? l$privatePhone : const {},
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

abstract class CopyWith$Variables$Mutation$StaffPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$StaffPageEdit(
    Variables$Mutation$StaffPageEdit instance,
    TRes Function(Variables$Mutation$StaffPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$StaffPageEdit;

  factory CopyWith$Variables$Mutation$StaffPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StaffPageEdit;

  TRes call({
    String? infoStaffId,
    String? sex,
    String? phone,
    String? privatePhone,
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

class _CopyWithImpl$Variables$Mutation$StaffPageEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$StaffPageEdit(this._instance, this._then);

  final Variables$Mutation$StaffPageEdit _instance;

  final TRes Function(Variables$Mutation$StaffPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? privatePhone = _undefined,
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
    Variables$Mutation$StaffPageEdit._({
      ..._instance._$data,
      if (infoStaffId != _undefined && infoStaffId != null)
        'infoStaffId': (infoStaffId as String),
      if (sex != _undefined) 'sex': (sex as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (privatePhone != _undefined) 'privatePhone': (privatePhone as String?),
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

class _CopyWithStubImpl$Variables$Mutation$StaffPageEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StaffPageEdit(this._res);

  TRes _res;

  call({
    String? infoStaffId,
    String? sex,
    String? phone,
    String? privatePhone,
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

class Mutation$StaffPageEdit {
  Mutation$StaffPageEdit({
    this.updateInfoStaffByInfoStaffId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StaffPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoStaffByInfoStaffId = json['updateInfoStaffByInfoStaffId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit(
      updateInfoStaffByInfoStaffId: l$updateInfoStaffByInfoStaffId == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId.fromJson(
              (l$updateInfoStaffByInfoStaffId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId?
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
    if (other is! Mutation$StaffPageEdit || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$StaffPageEdit on Mutation$StaffPageEdit {
  CopyWith$Mutation$StaffPageEdit<Mutation$StaffPageEdit> get copyWith =>
      CopyWith$Mutation$StaffPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$StaffPageEdit<TRes> {
  factory CopyWith$Mutation$StaffPageEdit(
    Mutation$StaffPageEdit instance,
    TRes Function(Mutation$StaffPageEdit) then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit;

  factory CopyWith$Mutation$StaffPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StaffPageEdit;

  TRes call({
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId?
    updateInfoStaffByInfoStaffId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId;
}

class _CopyWithImpl$Mutation$StaffPageEdit<TRes>
    implements CopyWith$Mutation$StaffPageEdit<TRes> {
  _CopyWithImpl$Mutation$StaffPageEdit(this._instance, this._then);

  final Mutation$StaffPageEdit _instance;

  final TRes Function(Mutation$StaffPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoStaffByInfoStaffId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit(
      updateInfoStaffByInfoStaffId: updateInfoStaffByInfoStaffId == _undefined
          ? _instance.updateInfoStaffByInfoStaffId
          : (updateInfoStaffByInfoStaffId
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId {
    final local$updateInfoStaffByInfoStaffId =
        _instance.updateInfoStaffByInfoStaffId;
    return local$updateInfoStaffByInfoStaffId == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
            local$updateInfoStaffByInfoStaffId,
            (e) => call(updateInfoStaffByInfoStaffId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit<TRes>
    implements CopyWith$Mutation$StaffPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$StaffPageEdit(this._res);

  TRes _res;

  call({
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId?
    updateInfoStaffByInfoStaffId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes>
  get updateInfoStaffByInfoStaffId =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId.stub(_res);
}

const documentNodeMutationStaffPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'StaffPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoStaffId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sex')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'phone')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
                            name: NameNode(value: 'sex'),
                            value: VariableNode(name: NameNode(value: 'sex')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'phone'),
                            value: VariableNode(name: NameNode(value: 'phone')),
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
                        name: NameNode(value: 'sex'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'phone'),
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
Mutation$StaffPageEdit _parserFn$Mutation$StaffPageEdit(
  Map<String, dynamic> data,
) => Mutation$StaffPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$StaffPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$StaffPageEdit?);

class Options$Mutation$StaffPageEdit
    extends graphql.MutationOptions<Mutation$StaffPageEdit> {
  Options$Mutation$StaffPageEdit({
    String? operationName,
    required Variables$Mutation$StaffPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$StaffPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffPageEdit,
         parserFn: _parserFn$Mutation$StaffPageEdit,
       );

  final OnMutationCompleted$Mutation$StaffPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$StaffPageEdit
    extends graphql.WatchQueryOptions<Mutation$StaffPageEdit> {
  WatchOptions$Mutation$StaffPageEdit({
    String? operationName,
    required Variables$Mutation$StaffPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationStaffPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$StaffPageEdit,
       );
}

extension ClientExtension$Mutation$StaffPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StaffPageEdit>> mutate$StaffPageEdit(
    Options$Mutation$StaffPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$StaffPageEdit> watchMutation$StaffPageEdit(
    WatchOptions$Mutation$StaffPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$StaffPageEdit$HookResult {
  Mutation$StaffPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$StaffPageEdit runMutation;

  final graphql.QueryResult<Mutation$StaffPageEdit> result;
}

Mutation$StaffPageEdit$HookResult useMutation$StaffPageEdit([
  WidgetOptions$Mutation$StaffPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$StaffPageEdit(),
  );
  return Mutation$StaffPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$StaffPageEdit> useWatchMutation$StaffPageEdit(
  WatchOptions$Mutation$StaffPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$StaffPageEdit
    extends graphql.MutationOptions<Mutation$StaffPageEdit> {
  WidgetOptions$Mutation$StaffPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$StaffPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffPageEdit,
         parserFn: _parserFn$Mutation$StaffPageEdit,
       );

  final OnMutationCompleted$Mutation$StaffPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$StaffPageEdit =
    graphql.MultiSourceResult<Mutation$StaffPageEdit> Function(
      Variables$Mutation$StaffPageEdit, {
      Object? optimisticResult,
      Mutation$StaffPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$StaffPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$StaffPageEdit,
      graphql.QueryResult<Mutation$StaffPageEdit>?,
    );

class Mutation$StaffPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$StaffPageEdit> {
  Mutation$StaffPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$StaffPageEdit? options,
    required Builder$Mutation$StaffPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$StaffPageEdit(),
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

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId({
    this.infoStaff,
    this.$__typename = 'UpdateInfoStaffPayload',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaff = json['infoStaff'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
      infoStaff: l$infoStaff == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
              (l$infoStaff as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff?
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
    if (other is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId
    on Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId
  >
  get copyWith => CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId instance,
    TRes Function(Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId) then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId;

  TRes call({
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff? infoStaff,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes> {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId _instance;

  final TRes Function(Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaff = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
      infoStaff: infoStaff == _undefined
          ? _instance.infoStaff
          : (infoStaff
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff {
    final local$infoStaff = _instance.infoStaff;
    return local$infoStaff == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
            local$infoStaff,
            (e) => call(infoStaff: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId<TRes> {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff? infoStaff,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<TRes>
  get infoStaff =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff({
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.privatePhone,
    this.remarks,
    this.labels,
    this.$__typename = 'InfoStaff',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$privatePhone = json['privatePhone'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      privatePhone: (l$privatePhone as String?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? privatePhone;

  final String? remarks;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
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
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$privatePhone = privatePhone;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$privatePhone,
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
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
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff
    on Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff instance,
    TRes Function(Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff)
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff;

  TRes call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? remarks,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? privatePhone = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff(
    this._res,
  );

  TRes _res;

  call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? remarks,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels.fromJson(
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
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels
    on Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels,
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
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffPageEdit$updateInfoStaffByInfoStaffId$infoStaff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
