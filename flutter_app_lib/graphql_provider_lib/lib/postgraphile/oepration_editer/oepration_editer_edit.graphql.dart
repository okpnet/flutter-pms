import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OeprationEditerEdit {
  factory Variables$Mutation$OeprationEditerEdit({
    required String mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? symbol,
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
  }) => Variables$Mutation$OeprationEditerEdit._({
    r'mstrOperationId': mstrOperationId,
    if (controlCode != null) r'controlCode': controlCode,
    if (detail != null) r'detail': detail,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
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

  Variables$Mutation$OeprationEditerEdit._(this._$data);

  factory Variables$Mutation$OeprationEditerEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrOperationId = data['mstrOperationId'];
    result$data['mstrOperationId'] = (l$mstrOperationId as String);
    if (data.containsKey('controlCode')) {
      final l$controlCode = data['controlCode'];
      result$data['controlCode'] = (l$controlCode as String?);
    }
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = (l$detail as String?);
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
    return Variables$Mutation$OeprationEditerEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrOperationId => (_$data['mstrOperationId'] as String);

  String? get controlCode => (_$data['controlCode'] as String?);

  String? get detail => (_$data['detail'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

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
    final l$mstrOperationId = mstrOperationId;
    result$data['mstrOperationId'] = l$mstrOperationId;
    if (_$data.containsKey('controlCode')) {
      final l$controlCode = controlCode;
      result$data['controlCode'] = l$controlCode;
    }
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail;
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

  CopyWith$Variables$Mutation$OeprationEditerEdit<
    Variables$Mutation$OeprationEditerEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$OeprationEditerEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OeprationEditerEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperationId = mstrOperationId;
    final lOther$mstrOperationId = other.mstrOperationId;
    if (l$mstrOperationId != lOther$mstrOperationId) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (_$data.containsKey('controlCode') !=
        other._$data.containsKey('controlCode')) {
      return false;
    }
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (_$data.containsKey('detail') != other._$data.containsKey('detail')) {
      return false;
    }
    if (l$detail != lOther$detail) {
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
    final l$mstrOperationId = mstrOperationId;
    final l$controlCode = controlCode;
    final l$detail = detail;
    final l$remarks = remarks;
    final l$symbol = symbol;
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
      l$mstrOperationId,
      _$data.containsKey('controlCode') ? l$controlCode : const {},
      _$data.containsKey('detail') ? l$detail : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
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

abstract class CopyWith$Variables$Mutation$OeprationEditerEdit<TRes> {
  factory CopyWith$Variables$Mutation$OeprationEditerEdit(
    Variables$Mutation$OeprationEditerEdit instance,
    TRes Function(Variables$Mutation$OeprationEditerEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OeprationEditerEdit;

  factory CopyWith$Variables$Mutation$OeprationEditerEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OeprationEditerEdit;

  TRes call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? symbol,
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

class _CopyWithImpl$Variables$Mutation$OeprationEditerEdit<TRes>
    implements CopyWith$Variables$Mutation$OeprationEditerEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OeprationEditerEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$OeprationEditerEdit _instance;

  final TRes Function(Variables$Mutation$OeprationEditerEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperationId = _undefined,
    Object? controlCode = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
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
    Variables$Mutation$OeprationEditerEdit._({
      ..._instance._$data,
      if (mstrOperationId != _undefined && mstrOperationId != null)
        'mstrOperationId': (mstrOperationId as String),
      if (controlCode != _undefined) 'controlCode': (controlCode as String?),
      if (detail != _undefined) 'detail': (detail as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
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

class _CopyWithStubImpl$Variables$Mutation$OeprationEditerEdit<TRes>
    implements CopyWith$Variables$Mutation$OeprationEditerEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OeprationEditerEdit(this._res);

  TRes _res;

  call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? symbol,
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

class Mutation$OeprationEditerEdit {
  Mutation$OeprationEditerEdit({
    this.updateMstrOperationByMstrOperationId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OeprationEditerEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrOperationByMstrOperationId =
        json['updateMstrOperationByMstrOperationId'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit(
      updateMstrOperationByMstrOperationId:
          l$updateMstrOperationByMstrOperationId == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId.fromJson(
              (l$updateMstrOperationByMstrOperationId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId?
  updateMstrOperationByMstrOperationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrOperationByMstrOperationId =
        updateMstrOperationByMstrOperationId;
    _resultData['updateMstrOperationByMstrOperationId'] =
        l$updateMstrOperationByMstrOperationId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrOperationByMstrOperationId =
        updateMstrOperationByMstrOperationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrOperationByMstrOperationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OeprationEditerEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrOperationByMstrOperationId =
        updateMstrOperationByMstrOperationId;
    final lOther$updateMstrOperationByMstrOperationId =
        other.updateMstrOperationByMstrOperationId;
    if (l$updateMstrOperationByMstrOperationId !=
        lOther$updateMstrOperationByMstrOperationId) {
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

extension UtilityExtension$Mutation$OeprationEditerEdit
    on Mutation$OeprationEditerEdit {
  CopyWith$Mutation$OeprationEditerEdit<Mutation$OeprationEditerEdit>
  get copyWith => CopyWith$Mutation$OeprationEditerEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OeprationEditerEdit<TRes> {
  factory CopyWith$Mutation$OeprationEditerEdit(
    Mutation$OeprationEditerEdit instance,
    TRes Function(Mutation$OeprationEditerEdit) then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit;

  factory CopyWith$Mutation$OeprationEditerEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OeprationEditerEdit;

  TRes call({
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId?
    updateMstrOperationByMstrOperationId,
    String? $__typename,
  });
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
    TRes
  >
  get updateMstrOperationByMstrOperationId;
}

class _CopyWithImpl$Mutation$OeprationEditerEdit<TRes>
    implements CopyWith$Mutation$OeprationEditerEdit<TRes> {
  _CopyWithImpl$Mutation$OeprationEditerEdit(this._instance, this._then);

  final Mutation$OeprationEditerEdit _instance;

  final TRes Function(Mutation$OeprationEditerEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrOperationByMstrOperationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit(
      updateMstrOperationByMstrOperationId:
          updateMstrOperationByMstrOperationId == _undefined
          ? _instance.updateMstrOperationByMstrOperationId
          : (updateMstrOperationByMstrOperationId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
    TRes
  >
  get updateMstrOperationByMstrOperationId {
    final local$updateMstrOperationByMstrOperationId =
        _instance.updateMstrOperationByMstrOperationId;
    return local$updateMstrOperationByMstrOperationId == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
            local$updateMstrOperationByMstrOperationId,
            (e) => call(updateMstrOperationByMstrOperationId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit<TRes>
    implements CopyWith$Mutation$OeprationEditerEdit<TRes> {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit(this._res);

  TRes _res;

  call({
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId?
    updateMstrOperationByMstrOperationId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
    TRes
  >
  get updateMstrOperationByMstrOperationId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId.stub(
        _res,
      );
}

const documentNodeMutationOeprationEditerEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OeprationEditerEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrOperationId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'controlCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detail')),
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
            name: NameNode(value: 'updateMstrOperationByMstrOperationId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrOperationId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrOperationId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrOperationPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'detail'),
                            value: VariableNode(
                              name: NameNode(value: 'detail'),
                            ),
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
                  name: NameNode(value: 'mstrOperation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrOperationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'detail'),
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
                          value: 'mstrOperationTasksByMstrOperationId',
                        ),
                        alias: null,
                        arguments: [],
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
                                      value: 'mstrOperationTaskId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrTaskId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sequence'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'mstrItemOperationTasksByMstrOperationTaskId',
                                    ),
                                    alias: null,
                                    arguments: [],
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
                                                  value:
                                                      'mstrItemOperationTaskId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'mstrItemId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sequence',
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
Mutation$OeprationEditerEdit _parserFn$Mutation$OeprationEditerEdit(
  Map<String, dynamic> data,
) => Mutation$OeprationEditerEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OeprationEditerEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$OeprationEditerEdit?,
    );

class Options$Mutation$OeprationEditerEdit
    extends graphql.MutationOptions<Mutation$OeprationEditerEdit> {
  Options$Mutation$OeprationEditerEdit({
    String? operationName,
    required Variables$Mutation$OeprationEditerEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OeprationEditerEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OeprationEditerEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OeprationEditerEdit>? update,
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
                     : _parserFn$Mutation$OeprationEditerEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOeprationEditerEdit,
         parserFn: _parserFn$Mutation$OeprationEditerEdit,
       );

  final OnMutationCompleted$Mutation$OeprationEditerEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OeprationEditerEdit
    extends graphql.WatchQueryOptions<Mutation$OeprationEditerEdit> {
  WatchOptions$Mutation$OeprationEditerEdit({
    String? operationName,
    required Variables$Mutation$OeprationEditerEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OeprationEditerEdit? typedOptimisticResult,
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
         document: documentNodeMutationOeprationEditerEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OeprationEditerEdit,
       );
}

extension ClientExtension$Mutation$OeprationEditerEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OeprationEditerEdit>>
  mutate$OeprationEditerEdit(
    Options$Mutation$OeprationEditerEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OeprationEditerEdit>
  watchMutation$OeprationEditerEdit(
    WatchOptions$Mutation$OeprationEditerEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OeprationEditerEdit$HookResult {
  Mutation$OeprationEditerEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OeprationEditerEdit runMutation;

  final graphql.QueryResult<Mutation$OeprationEditerEdit> result;
}

Mutation$OeprationEditerEdit$HookResult useMutation$OeprationEditerEdit([
  WidgetOptions$Mutation$OeprationEditerEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OeprationEditerEdit(),
  );
  return Mutation$OeprationEditerEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OeprationEditerEdit>
useWatchMutation$OeprationEditerEdit(
  WatchOptions$Mutation$OeprationEditerEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OeprationEditerEdit
    extends graphql.MutationOptions<Mutation$OeprationEditerEdit> {
  WidgetOptions$Mutation$OeprationEditerEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OeprationEditerEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OeprationEditerEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OeprationEditerEdit>? update,
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
                     : _parserFn$Mutation$OeprationEditerEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOeprationEditerEdit,
         parserFn: _parserFn$Mutation$OeprationEditerEdit,
       );

  final OnMutationCompleted$Mutation$OeprationEditerEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OeprationEditerEdit =
    graphql.MultiSourceResult<Mutation$OeprationEditerEdit> Function(
      Variables$Mutation$OeprationEditerEdit, {
      Object? optimisticResult,
      Mutation$OeprationEditerEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OeprationEditerEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OeprationEditerEdit,
      graphql.QueryResult<Mutation$OeprationEditerEdit>?,
    );

class Mutation$OeprationEditerEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OeprationEditerEdit> {
  Mutation$OeprationEditerEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OeprationEditerEdit? options,
    required Builder$Mutation$OeprationEditerEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OeprationEditerEdit(),
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

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId({
    this.mstrOperation,
    this.$__typename = 'UpdateMstrOperationPayload',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrOperation = json['mstrOperation'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
      mstrOperation: l$mstrOperation == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.fromJson(
              (l$mstrOperation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation?
  mstrOperation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrOperation = mstrOperation;
    _resultData['mstrOperation'] = l$mstrOperation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrOperation = mstrOperation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrOperation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperation = mstrOperation;
    final lOther$mstrOperation = other.mstrOperation;
    if (l$mstrOperation != lOther$mstrOperation) {
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId
    on Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId;

  TRes call({
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation?
    mstrOperation,
    String? $__typename,
  });
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
    TRes
  >
  get mstrOperation;
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
      mstrOperation: mstrOperation == _undefined
          ? _instance.mstrOperation
          : (mstrOperation
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
    TRes
  >
  get mstrOperation {
    final local$mstrOperation = _instance.mstrOperation;
    return local$mstrOperation == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
            local$mstrOperation,
            (e) => call(mstrOperation: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation?
    mstrOperation,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
    TRes
  >
  get mstrOperation =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.stub(
        _res,
      );
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation({
    required this.mstrOperationId,
    this.controlCode,
    this.detail,
    this.remarks,
    this.symbol,
    required this.mstrOperationTasksByMstrOperationId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrOperation',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrOperationId = json['mstrOperationId'];
    final l$controlCode = json['controlCode'];
    final l$detail = json['detail'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$mstrOperationTasksByMstrOperationId =
        json['mstrOperationTasksByMstrOperationId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
      mstrOperationId: (l$mstrOperationId as String),
      controlCode: (l$controlCode as String?),
      detail: (l$detail as String?),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      mstrOperationTasksByMstrOperationId:
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId.fromJson(
            (l$mstrOperationTasksByMstrOperationId as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrOperationId;

  final String? controlCode;

  final String? detail;

  final String? remarks;

  final String? symbol;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId
  mstrOperationTasksByMstrOperationId;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrOperationId = mstrOperationId;
    _resultData['mstrOperationId'] = l$mstrOperationId;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    _resultData['mstrOperationTasksByMstrOperationId'] =
        l$mstrOperationTasksByMstrOperationId.toJson();
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
    final l$mstrOperationId = mstrOperationId;
    final l$controlCode = controlCode;
    final l$detail = detail;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrOperationId,
      l$controlCode,
      l$detail,
      l$remarks,
      l$symbol,
      l$mstrOperationTasksByMstrOperationId,
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperationId = mstrOperationId;
    final lOther$mstrOperationId = other.mstrOperationId;
    if (l$mstrOperationId != lOther$mstrOperationId) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
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
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    final lOther$mstrOperationTasksByMstrOperationId =
        other.mstrOperationTasksByMstrOperationId;
    if (l$mstrOperationTasksByMstrOperationId !=
        lOther$mstrOperationTasksByMstrOperationId) {
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation;

  TRes call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? symbol,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId?
    mstrOperationTasksByMstrOperationId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId;
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperationId = _undefined,
    Object? controlCode = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? mstrOperationTasksByMstrOperationId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
      mstrOperationId: mstrOperationId == _undefined || mstrOperationId == null
          ? _instance.mstrOperationId
          : (mstrOperationId as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      mstrOperationTasksByMstrOperationId:
          mstrOperationTasksByMstrOperationId == _undefined ||
              mstrOperationTasksByMstrOperationId == null
          ? _instance.mstrOperationTasksByMstrOperationId
          : (mstrOperationTasksByMstrOperationId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId {
    final local$mstrOperationTasksByMstrOperationId =
        _instance.mstrOperationTasksByMstrOperationId;
    return CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
      local$mstrOperationTasksByMstrOperationId,
      (e) => call(mstrOperationTasksByMstrOperationId: e),
    );
  }

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation(
    this._res,
  );

  TRes _res;

  call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? symbol,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId?
    mstrOperationTasksByMstrOperationId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId.stub(
        _res,
      );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId({
    required this.nodes,
    this.$__typename = 'MstrOperationTasksConnection',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId;

  TRes call({
    List<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes({
    required this.mstrOperationTaskId,
    required this.mstrTaskId,
    this.sequence,
    required this.mstrItemOperationTasksByMstrOperationTaskId,
    this.$__typename = 'MstrOperationTask',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrOperationTaskId = json['mstrOperationTaskId'];
    final l$mstrTaskId = json['mstrTaskId'];
    final l$sequence = json['sequence'];
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        json['mstrItemOperationTasksByMstrOperationTaskId'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
      mstrOperationTaskId: (l$mstrOperationTaskId as String),
      mstrTaskId: (l$mstrTaskId as String),
      sequence: (l$sequence as int?),
      mstrItemOperationTasksByMstrOperationTaskId:
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.fromJson(
            (l$mstrItemOperationTasksByMstrOperationTaskId
                as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrOperationTaskId;

  final String mstrTaskId;

  final int? sequence;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  mstrItemOperationTasksByMstrOperationTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrOperationTaskId = mstrOperationTaskId;
    _resultData['mstrOperationTaskId'] = l$mstrOperationTaskId;
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    _resultData['mstrItemOperationTasksByMstrOperationTaskId'] =
        l$mstrItemOperationTasksByMstrOperationTaskId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrOperationTaskId = mstrOperationTaskId;
    final l$mstrTaskId = mstrTaskId;
    final l$sequence = sequence;
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrOperationTaskId,
      l$mstrTaskId,
      l$sequence,
      l$mstrItemOperationTasksByMstrOperationTaskId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperationTaskId = mstrOperationTaskId;
    final lOther$mstrOperationTaskId = other.mstrOperationTaskId;
    if (l$mstrOperationTaskId != lOther$mstrOperationTaskId) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    final lOther$mstrItemOperationTasksByMstrOperationTaskId =
        other.mstrItemOperationTasksByMstrOperationTaskId;
    if (l$mstrItemOperationTasksByMstrOperationTaskId !=
        lOther$mstrItemOperationTasksByMstrOperationTaskId) {
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes;

  TRes call({
    String? mstrOperationTaskId,
    String? mstrTaskId,
    int? sequence,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId?
    mstrItemOperationTasksByMstrOperationTaskId,
    String? $__typename,
  });
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId;
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperationTaskId = _undefined,
    Object? mstrTaskId = _undefined,
    Object? sequence = _undefined,
    Object? mstrItemOperationTasksByMstrOperationTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
      mstrOperationTaskId:
          mstrOperationTaskId == _undefined || mstrOperationTaskId == null
          ? _instance.mstrOperationTaskId
          : (mstrOperationTaskId as String),
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      mstrItemOperationTasksByMstrOperationTaskId:
          mstrItemOperationTasksByMstrOperationTaskId == _undefined ||
              mstrItemOperationTasksByMstrOperationTaskId == null
          ? _instance.mstrItemOperationTasksByMstrOperationTaskId
          : (mstrItemOperationTasksByMstrOperationTaskId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId {
    final local$mstrItemOperationTasksByMstrOperationTaskId =
        _instance.mstrItemOperationTasksByMstrOperationTaskId;
    return CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      local$mstrItemOperationTasksByMstrOperationTaskId,
      (e) => call(mstrItemOperationTasksByMstrOperationTaskId: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrOperationTaskId,
    String? mstrTaskId,
    int? sequence,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId?
    mstrItemOperationTasksByMstrOperationTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.stub(
        _res,
      );
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId({
    required this.nodes,
    this.$__typename = 'MstrItemOperationTasksConnection',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId;

  TRes call({
    List<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes({
    required this.mstrItemOperationTaskId,
    required this.mstrItemId,
    this.sequence,
    this.$__typename = 'MstrItemOperationTask',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemOperationTaskId = json['mstrItemOperationTaskId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$sequence = json['sequence'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
      mstrItemOperationTaskId: (l$mstrItemOperationTaskId as String),
      mstrItemId: (l$mstrItemId as String),
      sequence: (l$sequence as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemOperationTaskId;

  final String mstrItemId;

  final int? sequence;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    _resultData['mstrItemOperationTaskId'] = l$mstrItemOperationTaskId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    final l$mstrItemId = mstrItemId;
    final l$sequence = sequence;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemOperationTaskId,
      l$mstrItemId,
      l$sequence,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    final lOther$mstrItemOperationTaskId = other.mstrItemOperationTaskId;
    if (l$mstrItemOperationTaskId != lOther$mstrItemOperationTaskId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes;

  TRes call({
    String? mstrItemOperationTaskId,
    String? mstrItemId,
    int? sequence,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemOperationTaskId = _undefined,
    Object? mstrItemId = _undefined,
    Object? sequence = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
      mstrItemOperationTaskId:
          mstrItemOperationTaskId == _undefined ||
              mstrItemOperationTaskId == null
          ? _instance.mstrItemOperationTaskId
          : (mstrItemOperationTaskId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemOperationTaskId,
    String? mstrItemId,
    int? sequence,
    String? $__typename,
  }) => _res;
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId,
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
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OeprationEditerEdit$updateMstrOperationByMstrOperationId$mstrOperation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
