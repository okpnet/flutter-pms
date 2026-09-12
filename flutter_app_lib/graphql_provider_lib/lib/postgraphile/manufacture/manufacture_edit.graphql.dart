import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ManufactureEdit {
  factory Variables$Mutation$ManufactureEdit({
    required String mstrManufacturerId,
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
  }) => Variables$Mutation$ManufactureEdit._({
    r'mstrManufacturerId': mstrManufacturerId,
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

  Variables$Mutation$ManufactureEdit._(this._$data);

  factory Variables$Mutation$ManufactureEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrManufacturerId = data['mstrManufacturerId'];
    result$data['mstrManufacturerId'] = (l$mstrManufacturerId as String);
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
    return Variables$Mutation$ManufactureEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrManufacturerId => (_$data['mstrManufacturerId'] as String);

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
    final l$mstrManufacturerId = mstrManufacturerId;
    result$data['mstrManufacturerId'] = l$mstrManufacturerId;
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

  CopyWith$Variables$Mutation$ManufactureEdit<
    Variables$Mutation$ManufactureEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ManufactureEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ManufactureEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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
    final l$mstrManufacturerId = mstrManufacturerId;
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
      l$mstrManufacturerId,
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

abstract class CopyWith$Variables$Mutation$ManufactureEdit<TRes> {
  factory CopyWith$Variables$Mutation$ManufactureEdit(
    Variables$Mutation$ManufactureEdit instance,
    TRes Function(Variables$Mutation$ManufactureEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ManufactureEdit;

  factory CopyWith$Variables$Mutation$ManufactureEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ManufactureEdit;

  TRes call({
    String? mstrManufacturerId,
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

class _CopyWithImpl$Variables$Mutation$ManufactureEdit<TRes>
    implements CopyWith$Variables$Mutation$ManufactureEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ManufactureEdit(this._instance, this._then);

  final Variables$Mutation$ManufactureEdit _instance;

  final TRes Function(Variables$Mutation$ManufactureEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
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
    Variables$Mutation$ManufactureEdit._({
      ..._instance._$data,
      if (mstrManufacturerId != _undefined && mstrManufacturerId != null)
        'mstrManufacturerId': (mstrManufacturerId as String),
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

class _CopyWithStubImpl$Variables$Mutation$ManufactureEdit<TRes>
    implements CopyWith$Variables$Mutation$ManufactureEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ManufactureEdit(this._res);

  TRes _res;

  call({
    String? mstrManufacturerId,
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

class Mutation$ManufactureEdit {
  Mutation$ManufactureEdit({
    this.updateMstrManufacturerByMstrManufacturerId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ManufactureEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrManufacturerByMstrManufacturerId =
        json['updateMstrManufacturerByMstrManufacturerId'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit(
      updateMstrManufacturerByMstrManufacturerId:
          l$updateMstrManufacturerByMstrManufacturerId == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId.fromJson(
              (l$updateMstrManufacturerByMstrManufacturerId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId?
  updateMstrManufacturerByMstrManufacturerId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrManufacturerByMstrManufacturerId =
        updateMstrManufacturerByMstrManufacturerId;
    _resultData['updateMstrManufacturerByMstrManufacturerId'] =
        l$updateMstrManufacturerByMstrManufacturerId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrManufacturerByMstrManufacturerId =
        updateMstrManufacturerByMstrManufacturerId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrManufacturerByMstrManufacturerId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ManufactureEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrManufacturerByMstrManufacturerId =
        updateMstrManufacturerByMstrManufacturerId;
    final lOther$updateMstrManufacturerByMstrManufacturerId =
        other.updateMstrManufacturerByMstrManufacturerId;
    if (l$updateMstrManufacturerByMstrManufacturerId !=
        lOther$updateMstrManufacturerByMstrManufacturerId) {
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

extension UtilityExtension$Mutation$ManufactureEdit
    on Mutation$ManufactureEdit {
  CopyWith$Mutation$ManufactureEdit<Mutation$ManufactureEdit> get copyWith =>
      CopyWith$Mutation$ManufactureEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ManufactureEdit<TRes> {
  factory CopyWith$Mutation$ManufactureEdit(
    Mutation$ManufactureEdit instance,
    TRes Function(Mutation$ManufactureEdit) then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit;

  factory CopyWith$Mutation$ManufactureEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ManufactureEdit;

  TRes call({
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId?
    updateMstrManufacturerByMstrManufacturerId,
    String? $__typename,
  });
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
    TRes
  >
  get updateMstrManufacturerByMstrManufacturerId;
}

class _CopyWithImpl$Mutation$ManufactureEdit<TRes>
    implements CopyWith$Mutation$ManufactureEdit<TRes> {
  _CopyWithImpl$Mutation$ManufactureEdit(this._instance, this._then);

  final Mutation$ManufactureEdit _instance;

  final TRes Function(Mutation$ManufactureEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrManufacturerByMstrManufacturerId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit(
      updateMstrManufacturerByMstrManufacturerId:
          updateMstrManufacturerByMstrManufacturerId == _undefined
          ? _instance.updateMstrManufacturerByMstrManufacturerId
          : (updateMstrManufacturerByMstrManufacturerId
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
    TRes
  >
  get updateMstrManufacturerByMstrManufacturerId {
    final local$updateMstrManufacturerByMstrManufacturerId =
        _instance.updateMstrManufacturerByMstrManufacturerId;
    return local$updateMstrManufacturerByMstrManufacturerId == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
            local$updateMstrManufacturerByMstrManufacturerId,
            (e) => call(updateMstrManufacturerByMstrManufacturerId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManufactureEdit<TRes>
    implements CopyWith$Mutation$ManufactureEdit<TRes> {
  _CopyWithStubImpl$Mutation$ManufactureEdit(this._res);

  TRes _res;

  call({
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId?
    updateMstrManufacturerByMstrManufacturerId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
    TRes
  >
  get updateMstrManufacturerByMstrManufacturerId =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId.stub(
        _res,
      );
}

const documentNodeMutationManufactureEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ManufactureEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrManufacturerId')),
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
            name: NameNode(value: 'updateMstrManufacturerByMstrManufacturerId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrManufacturerId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrManufacturerId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrManufacturerPatch'),
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
                  name: NameNode(value: 'mstrManufacturer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrManufacturerId'),
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
Mutation$ManufactureEdit _parserFn$Mutation$ManufactureEdit(
  Map<String, dynamic> data,
) => Mutation$ManufactureEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ManufactureEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ManufactureEdit?);

class Options$Mutation$ManufactureEdit
    extends graphql.MutationOptions<Mutation$ManufactureEdit> {
  Options$Mutation$ManufactureEdit({
    String? operationName,
    required Variables$Mutation$ManufactureEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ManufactureEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ManufactureEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ManufactureEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ManufactureEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationManufactureEdit,
         parserFn: _parserFn$Mutation$ManufactureEdit,
       );

  final OnMutationCompleted$Mutation$ManufactureEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ManufactureEdit
    extends graphql.WatchQueryOptions<Mutation$ManufactureEdit> {
  WatchOptions$Mutation$ManufactureEdit({
    String? operationName,
    required Variables$Mutation$ManufactureEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ManufactureEdit? typedOptimisticResult,
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
         document: documentNodeMutationManufactureEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ManufactureEdit,
       );
}

extension ClientExtension$Mutation$ManufactureEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ManufactureEdit>> mutate$ManufactureEdit(
    Options$Mutation$ManufactureEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ManufactureEdit>
  watchMutation$ManufactureEdit(
    WatchOptions$Mutation$ManufactureEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ManufactureEdit$HookResult {
  Mutation$ManufactureEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ManufactureEdit runMutation;

  final graphql.QueryResult<Mutation$ManufactureEdit> result;
}

Mutation$ManufactureEdit$HookResult useMutation$ManufactureEdit([
  WidgetOptions$Mutation$ManufactureEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ManufactureEdit(),
  );
  return Mutation$ManufactureEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ManufactureEdit>
useWatchMutation$ManufactureEdit(
  WatchOptions$Mutation$ManufactureEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ManufactureEdit
    extends graphql.MutationOptions<Mutation$ManufactureEdit> {
  WidgetOptions$Mutation$ManufactureEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ManufactureEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ManufactureEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ManufactureEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ManufactureEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationManufactureEdit,
         parserFn: _parserFn$Mutation$ManufactureEdit,
       );

  final OnMutationCompleted$Mutation$ManufactureEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ManufactureEdit =
    graphql.MultiSourceResult<Mutation$ManufactureEdit> Function(
      Variables$Mutation$ManufactureEdit, {
      Object? optimisticResult,
      Mutation$ManufactureEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ManufactureEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ManufactureEdit,
      graphql.QueryResult<Mutation$ManufactureEdit>?,
    );

class Mutation$ManufactureEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ManufactureEdit> {
  Mutation$ManufactureEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ManufactureEdit? options,
    required Builder$Mutation$ManufactureEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ManufactureEdit(),
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

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId({
    this.mstrManufacturer,
    this.$__typename = 'UpdateMstrManufacturerPayload',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturer = json['mstrManufacturer'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
      mstrManufacturer: l$mstrManufacturer == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.fromJson(
              (l$mstrManufacturer as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer?
  mstrManufacturer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturer = mstrManufacturer;
    _resultData['mstrManufacturer'] = l$mstrManufacturer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrManufacturer = mstrManufacturer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrManufacturer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturer = mstrManufacturer;
    final lOther$mstrManufacturer = other.mstrManufacturer;
    if (l$mstrManufacturer != lOther$mstrManufacturer) {
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId
    on Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId;

  TRes call({
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer?
    mstrManufacturer,
    String? $__typename,
  });
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
    TRes
  >
  get mstrManufacturer;
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturer = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
      mstrManufacturer: mstrManufacturer == _undefined
          ? _instance.mstrManufacturer
          : (mstrManufacturer
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
    TRes
  >
  get mstrManufacturer {
    final local$mstrManufacturer = _instance.mstrManufacturer;
    return local$mstrManufacturer == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
            local$mstrManufacturer,
            (e) => call(mstrManufacturer: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer?
    mstrManufacturer,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
    TRes
  >
  get mstrManufacturer =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.stub(
        _res,
      );
}

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer({
    required this.mstrManufacturerId,
    this.code,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrManufacturer',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      code: (l$code as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final String? code;

  final String? remarks;

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$code = code;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
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
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer
    on
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer;

  TRes call({
    String? mstrManufacturerId,
    String? code,
    String? remarks,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? code,
    String? remarks,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId
    on
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId,
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
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManufactureEdit$updateMstrManufacturerByMstrManufacturerId$mstrManufacturer$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
