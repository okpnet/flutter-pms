import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ShippingKindEdit {
  factory Variables$Mutation$ShippingKindEdit({
    required String mstrShippingKindId,
    String? code,
    String? remarks,
    String? symbol,
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
  }) => Variables$Mutation$ShippingKindEdit._({
    r'mstrShippingKindId': mstrShippingKindId,
    if (code != null) r'code': code,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
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

  Variables$Mutation$ShippingKindEdit._(this._$data);

  factory Variables$Mutation$ShippingKindEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrShippingKindId = data['mstrShippingKindId'];
    result$data['mstrShippingKindId'] = (l$mstrShippingKindId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
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
    return Variables$Mutation$ShippingKindEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrShippingKindId => (_$data['mstrShippingKindId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

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
    final l$mstrShippingKindId = mstrShippingKindId;
    result$data['mstrShippingKindId'] = l$mstrShippingKindId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    if (_$data.containsKey('symbol')) {
      final l$symbol = symbol;
      result$data['symbol'] = l$symbol;
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

  CopyWith$Variables$Mutation$ShippingKindEdit<
    Variables$Mutation$ShippingKindEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ShippingKindEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ShippingKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (_$data.containsKey('symbol') != other._$data.containsKey('symbol')) {
      return false;
    }
    if (l$symbol != lOther$symbol) {
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
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$symbol = symbol;
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
      l$mstrShippingKindId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
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

abstract class CopyWith$Variables$Mutation$ShippingKindEdit<TRes> {
  factory CopyWith$Variables$Mutation$ShippingKindEdit(
    Variables$Mutation$ShippingKindEdit instance,
    TRes Function(Variables$Mutation$ShippingKindEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ShippingKindEdit;

  factory CopyWith$Variables$Mutation$ShippingKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ShippingKindEdit;

  TRes call({
    String? mstrShippingKindId,
    String? code,
    String? remarks,
    String? symbol,
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

class _CopyWithImpl$Variables$Mutation$ShippingKindEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingKindEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ShippingKindEdit(this._instance, this._then);

  final Variables$Mutation$ShippingKindEdit _instance;

  final TRes Function(Variables$Mutation$ShippingKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
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
    Variables$Mutation$ShippingKindEdit._({
      ..._instance._$data,
      if (mstrShippingKindId != _undefined && mstrShippingKindId != null)
        'mstrShippingKindId': (mstrShippingKindId as String),
      if (code != _undefined) 'code': (code as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
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

class _CopyWithStubImpl$Variables$Mutation$ShippingKindEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingKindEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ShippingKindEdit(this._res);

  TRes _res;

  call({
    String? mstrShippingKindId,
    String? code,
    String? remarks,
    String? symbol,
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

class Mutation$ShippingKindEdit {
  Mutation$ShippingKindEdit({
    this.updateMstrShippingKindByMstrShippingKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ShippingKindEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrShippingKindByMstrShippingKindId =
        json['updateMstrShippingKindByMstrShippingKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit(
      updateMstrShippingKindByMstrShippingKindId:
          l$updateMstrShippingKindByMstrShippingKindId == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId.fromJson(
              (l$updateMstrShippingKindByMstrShippingKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId?
  updateMstrShippingKindByMstrShippingKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrShippingKindByMstrShippingKindId =
        updateMstrShippingKindByMstrShippingKindId;
    _resultData['updateMstrShippingKindByMstrShippingKindId'] =
        l$updateMstrShippingKindByMstrShippingKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrShippingKindByMstrShippingKindId =
        updateMstrShippingKindByMstrShippingKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrShippingKindByMstrShippingKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ShippingKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrShippingKindByMstrShippingKindId =
        updateMstrShippingKindByMstrShippingKindId;
    final lOther$updateMstrShippingKindByMstrShippingKindId =
        other.updateMstrShippingKindByMstrShippingKindId;
    if (l$updateMstrShippingKindByMstrShippingKindId !=
        lOther$updateMstrShippingKindByMstrShippingKindId) {
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

extension UtilityExtension$Mutation$ShippingKindEdit
    on Mutation$ShippingKindEdit {
  CopyWith$Mutation$ShippingKindEdit<Mutation$ShippingKindEdit> get copyWith =>
      CopyWith$Mutation$ShippingKindEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ShippingKindEdit<TRes> {
  factory CopyWith$Mutation$ShippingKindEdit(
    Mutation$ShippingKindEdit instance,
    TRes Function(Mutation$ShippingKindEdit) then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit;

  factory CopyWith$Mutation$ShippingKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ShippingKindEdit;

  TRes call({
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId?
    updateMstrShippingKindByMstrShippingKindId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
    TRes
  >
  get updateMstrShippingKindByMstrShippingKindId;
}

class _CopyWithImpl$Mutation$ShippingKindEdit<TRes>
    implements CopyWith$Mutation$ShippingKindEdit<TRes> {
  _CopyWithImpl$Mutation$ShippingKindEdit(this._instance, this._then);

  final Mutation$ShippingKindEdit _instance;

  final TRes Function(Mutation$ShippingKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrShippingKindByMstrShippingKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit(
      updateMstrShippingKindByMstrShippingKindId:
          updateMstrShippingKindByMstrShippingKindId == _undefined
          ? _instance.updateMstrShippingKindByMstrShippingKindId
          : (updateMstrShippingKindByMstrShippingKindId
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
    TRes
  >
  get updateMstrShippingKindByMstrShippingKindId {
    final local$updateMstrShippingKindByMstrShippingKindId =
        _instance.updateMstrShippingKindByMstrShippingKindId;
    return local$updateMstrShippingKindByMstrShippingKindId == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
            local$updateMstrShippingKindByMstrShippingKindId,
            (e) => call(updateMstrShippingKindByMstrShippingKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit<TRes>
    implements CopyWith$Mutation$ShippingKindEdit<TRes> {
  _CopyWithStubImpl$Mutation$ShippingKindEdit(this._res);

  TRes _res;

  call({
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId?
    updateMstrShippingKindByMstrShippingKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
    TRes
  >
  get updateMstrShippingKindByMstrShippingKindId =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId.stub(
        _res,
      );
}

const documentNodeMutationShippingKindEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ShippingKindEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrShippingKindId')),
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
          variable: VariableNode(name: NameNode(value: 'symbol')),
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
            name: NameNode(value: 'updateMstrShippingKindByMstrShippingKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrShippingKindId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrShippingKindId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrShippingKindPatch'),
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
                            name: NameNode(value: 'symbol'),
                            value: VariableNode(
                              name: NameNode(value: 'symbol'),
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
                  name: NameNode(value: 'mstrShippingKind'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrShippingKindId'),
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
                        name: NameNode(value: 'symbol'),
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
Mutation$ShippingKindEdit _parserFn$Mutation$ShippingKindEdit(
  Map<String, dynamic> data,
) => Mutation$ShippingKindEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ShippingKindEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ShippingKindEdit?);

class Options$Mutation$ShippingKindEdit
    extends graphql.MutationOptions<Mutation$ShippingKindEdit> {
  Options$Mutation$ShippingKindEdit({
    String? operationName,
    required Variables$Mutation$ShippingKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingKindEdit>? update,
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
                     : _parserFn$Mutation$ShippingKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingKindEdit,
         parserFn: _parserFn$Mutation$ShippingKindEdit,
       );

  final OnMutationCompleted$Mutation$ShippingKindEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ShippingKindEdit
    extends graphql.WatchQueryOptions<Mutation$ShippingKindEdit> {
  WatchOptions$Mutation$ShippingKindEdit({
    String? operationName,
    required Variables$Mutation$ShippingKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingKindEdit? typedOptimisticResult,
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
         document: documentNodeMutationShippingKindEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ShippingKindEdit,
       );
}

extension ClientExtension$Mutation$ShippingKindEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ShippingKindEdit>>
  mutate$ShippingKindEdit(Options$Mutation$ShippingKindEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ShippingKindEdit>
  watchMutation$ShippingKindEdit(
    WatchOptions$Mutation$ShippingKindEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ShippingKindEdit$HookResult {
  Mutation$ShippingKindEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ShippingKindEdit runMutation;

  final graphql.QueryResult<Mutation$ShippingKindEdit> result;
}

Mutation$ShippingKindEdit$HookResult useMutation$ShippingKindEdit([
  WidgetOptions$Mutation$ShippingKindEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ShippingKindEdit(),
  );
  return Mutation$ShippingKindEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ShippingKindEdit>
useWatchMutation$ShippingKindEdit(
  WatchOptions$Mutation$ShippingKindEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ShippingKindEdit
    extends graphql.MutationOptions<Mutation$ShippingKindEdit> {
  WidgetOptions$Mutation$ShippingKindEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingKindEdit>? update,
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
                     : _parserFn$Mutation$ShippingKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingKindEdit,
         parserFn: _parserFn$Mutation$ShippingKindEdit,
       );

  final OnMutationCompleted$Mutation$ShippingKindEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ShippingKindEdit =
    graphql.MultiSourceResult<Mutation$ShippingKindEdit> Function(
      Variables$Mutation$ShippingKindEdit, {
      Object? optimisticResult,
      Mutation$ShippingKindEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ShippingKindEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ShippingKindEdit,
      graphql.QueryResult<Mutation$ShippingKindEdit>?,
    );

class Mutation$ShippingKindEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ShippingKindEdit> {
  Mutation$ShippingKindEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ShippingKindEdit? options,
    required Builder$Mutation$ShippingKindEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ShippingKindEdit(),
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

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId({
    this.mstrShippingKind,
    this.$__typename = 'UpdateMstrShippingKindPayload',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKind = json['mstrShippingKind'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
      mstrShippingKind: l$mstrShippingKind == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.fromJson(
              (l$mstrShippingKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind?
  mstrShippingKind;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrShippingKind = mstrShippingKind;
    _resultData['mstrShippingKind'] = l$mstrShippingKind?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrShippingKind = mstrShippingKind;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrShippingKind, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKind = mstrShippingKind;
    final lOther$mstrShippingKind = other.mstrShippingKind;
    if (l$mstrShippingKind != lOther$mstrShippingKind) {
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId
    on Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId;

  TRes call({
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind?
    mstrShippingKind,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
    TRes
  >
  get mstrShippingKind;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
      mstrShippingKind: mstrShippingKind == _undefined
          ? _instance.mstrShippingKind
          : (mstrShippingKind
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
    TRes
  >
  get mstrShippingKind {
    final local$mstrShippingKind = _instance.mstrShippingKind;
    return local$mstrShippingKind == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
            local$mstrShippingKind,
            (e) => call(mstrShippingKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind?
    mstrShippingKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
    TRes
  >
  get mstrShippingKind =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind({
    required this.mstrShippingKindId,
    required this.code,
    this.remarks,
    this.symbol,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrShippingKind',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
      mstrShippingKindId: (l$mstrShippingKindId as String),
      code: (l$code as String),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrShippingKindId;

  final String code;

  final String? remarks;

  final String? symbol;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
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
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrShippingKindId,
      l$code,
      l$remarks,
      l$symbol,
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind;

  TRes call({
    String? mstrShippingKindId,
    String? code,
    String? remarks,
    String? symbol,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
      mstrShippingKindId:
          mstrShippingKindId == _undefined || mstrShippingKindId == null
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrShippingKindId,
    String? code,
    String? remarks,
    String? symbol,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId,
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
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
