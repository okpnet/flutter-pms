import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OrgResEquipmentKindEdit {
  factory Variables$Mutation$OrgResEquipmentKindEdit({
    required String mstrEquipmentKindId,
    String? startAt,
    String? stopAt,
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
  }) => Variables$Mutation$OrgResEquipmentKindEdit._({
    r'mstrEquipmentKindId': mstrEquipmentKindId,
    if (startAt != null) r'startAt': startAt,
    if (stopAt != null) r'stopAt': stopAt,
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

  Variables$Mutation$OrgResEquipmentKindEdit._(this._$data);

  factory Variables$Mutation$OrgResEquipmentKindEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentKindId = data['mstrEquipmentKindId'];
    result$data['mstrEquipmentKindId'] = (l$mstrEquipmentKindId as String);
    if (data.containsKey('startAt')) {
      final l$startAt = data['startAt'];
      result$data['startAt'] = (l$startAt as String?);
    }
    if (data.containsKey('stopAt')) {
      final l$stopAt = data['stopAt'];
      result$data['stopAt'] = (l$stopAt as String?);
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
    return Variables$Mutation$OrgResEquipmentKindEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrEquipmentKindId => (_$data['mstrEquipmentKindId'] as String);

  String? get startAt => (_$data['startAt'] as String?);

  String? get stopAt => (_$data['stopAt'] as String?);

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
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    result$data['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
    if (_$data.containsKey('startAt')) {
      final l$startAt = startAt;
      result$data['startAt'] = l$startAt;
    }
    if (_$data.containsKey('stopAt')) {
      final l$stopAt = stopAt;
      result$data['stopAt'] = l$stopAt;
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

  CopyWith$Variables$Mutation$OrgResEquipmentKindEdit<
    Variables$Mutation$OrgResEquipmentKindEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$OrgResEquipmentKindEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OrgResEquipmentKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (_$data.containsKey('startAt') != other._$data.containsKey('startAt')) {
      return false;
    }
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$stopAt = stopAt;
    final lOther$stopAt = other.stopAt;
    if (_$data.containsKey('stopAt') != other._$data.containsKey('stopAt')) {
      return false;
    }
    if (l$stopAt != lOther$stopAt) {
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
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
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
      l$mstrEquipmentKindId,
      _$data.containsKey('startAt') ? l$startAt : const {},
      _$data.containsKey('stopAt') ? l$stopAt : const {},
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

abstract class CopyWith$Variables$Mutation$OrgResEquipmentKindEdit<TRes> {
  factory CopyWith$Variables$Mutation$OrgResEquipmentKindEdit(
    Variables$Mutation$OrgResEquipmentKindEdit instance,
    TRes Function(Variables$Mutation$OrgResEquipmentKindEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OrgResEquipmentKindEdit;

  factory CopyWith$Variables$Mutation$OrgResEquipmentKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentKindEdit;

  TRes call({
    String? mstrEquipmentKindId,
    String? startAt,
    String? stopAt,
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

class _CopyWithImpl$Variables$Mutation$OrgResEquipmentKindEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResEquipmentKindEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OrgResEquipmentKindEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$OrgResEquipmentKindEdit _instance;

  final TRes Function(Variables$Mutation$OrgResEquipmentKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
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
    Variables$Mutation$OrgResEquipmentKindEdit._({
      ..._instance._$data,
      if (mstrEquipmentKindId != _undefined && mstrEquipmentKindId != null)
        'mstrEquipmentKindId': (mstrEquipmentKindId as String),
      if (startAt != _undefined) 'startAt': (startAt as String?),
      if (stopAt != _undefined) 'stopAt': (stopAt as String?),
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

class _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentKindEdit<TRes>
    implements CopyWith$Variables$Mutation$OrgResEquipmentKindEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OrgResEquipmentKindEdit(this._res);

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? startAt,
    String? stopAt,
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

class Mutation$OrgResEquipmentKindEdit {
  Mutation$OrgResEquipmentKindEdit({
    this.updateMstrEquipmentKindByMstrEquipmentKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OrgResEquipmentKindEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrEquipmentKindByMstrEquipmentKindId =
        json['updateMstrEquipmentKindByMstrEquipmentKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit(
      updateMstrEquipmentKindByMstrEquipmentKindId:
          l$updateMstrEquipmentKindByMstrEquipmentKindId == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId.fromJson(
              (l$updateMstrEquipmentKindByMstrEquipmentKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
  updateMstrEquipmentKindByMstrEquipmentKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrEquipmentKindByMstrEquipmentKindId =
        updateMstrEquipmentKindByMstrEquipmentKindId;
    _resultData['updateMstrEquipmentKindByMstrEquipmentKindId'] =
        l$updateMstrEquipmentKindByMstrEquipmentKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrEquipmentKindByMstrEquipmentKindId =
        updateMstrEquipmentKindByMstrEquipmentKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrEquipmentKindByMstrEquipmentKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrgResEquipmentKindEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrEquipmentKindByMstrEquipmentKindId =
        updateMstrEquipmentKindByMstrEquipmentKindId;
    final lOther$updateMstrEquipmentKindByMstrEquipmentKindId =
        other.updateMstrEquipmentKindByMstrEquipmentKindId;
    if (l$updateMstrEquipmentKindByMstrEquipmentKindId !=
        lOther$updateMstrEquipmentKindByMstrEquipmentKindId) {
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit
    on Mutation$OrgResEquipmentKindEdit {
  CopyWith$Mutation$OrgResEquipmentKindEdit<Mutation$OrgResEquipmentKindEdit>
  get copyWith => CopyWith$Mutation$OrgResEquipmentKindEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit<TRes> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit(
    Mutation$OrgResEquipmentKindEdit instance,
    TRes Function(Mutation$OrgResEquipmentKindEdit) then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit;

  TRes call({
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
    updateMstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit<TRes>
    implements CopyWith$Mutation$OrgResEquipmentKindEdit<TRes> {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit(this._instance, this._then);

  final Mutation$OrgResEquipmentKindEdit _instance;

  final TRes Function(Mutation$OrgResEquipmentKindEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrEquipmentKindByMstrEquipmentKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit(
      updateMstrEquipmentKindByMstrEquipmentKindId:
          updateMstrEquipmentKindByMstrEquipmentKindId == _undefined
          ? _instance.updateMstrEquipmentKindByMstrEquipmentKindId
          : (updateMstrEquipmentKindByMstrEquipmentKindId
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId {
    final local$updateMstrEquipmentKindByMstrEquipmentKindId =
        _instance.updateMstrEquipmentKindByMstrEquipmentKindId;
    return local$updateMstrEquipmentKindByMstrEquipmentKindId == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
            local$updateMstrEquipmentKindByMstrEquipmentKindId,
            (e) => call(updateMstrEquipmentKindByMstrEquipmentKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit<TRes>
    implements CopyWith$Mutation$OrgResEquipmentKindEdit<TRes> {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit(this._res);

  TRes _res;

  call({
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
    updateMstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
        _res,
      );
}

const documentNodeMutationOrgResEquipmentKindEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OrgResEquipmentKindEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrEquipmentKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'startAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stopAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
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
            name: NameNode(
              value: 'updateMstrEquipmentKindByMstrEquipmentKindId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrEquipmentKindId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrEquipmentKindId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrEquipmentKindPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'startAt'),
                            value: VariableNode(
                              name: NameNode(value: 'startAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'stopAt'),
                            value: VariableNode(
                              name: NameNode(value: 'stopAt'),
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
                  name: NameNode(value: 'mstrEquipmentKind'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrEquipmentKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stopAt'),
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
Mutation$OrgResEquipmentKindEdit _parserFn$Mutation$OrgResEquipmentKindEdit(
  Map<String, dynamic> data,
) => Mutation$OrgResEquipmentKindEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OrgResEquipmentKindEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$OrgResEquipmentKindEdit?,
    );

class Options$Mutation$OrgResEquipmentKindEdit
    extends graphql.MutationOptions<Mutation$OrgResEquipmentKindEdit> {
  Options$Mutation$OrgResEquipmentKindEdit({
    String? operationName,
    required Variables$Mutation$OrgResEquipmentKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResEquipmentKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResEquipmentKindEdit>? update,
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
                     : _parserFn$Mutation$OrgResEquipmentKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResEquipmentKindEdit,
         parserFn: _parserFn$Mutation$OrgResEquipmentKindEdit,
       );

  final OnMutationCompleted$Mutation$OrgResEquipmentKindEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OrgResEquipmentKindEdit
    extends graphql.WatchQueryOptions<Mutation$OrgResEquipmentKindEdit> {
  WatchOptions$Mutation$OrgResEquipmentKindEdit({
    String? operationName,
    required Variables$Mutation$OrgResEquipmentKindEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentKindEdit? typedOptimisticResult,
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
         document: documentNodeMutationOrgResEquipmentKindEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OrgResEquipmentKindEdit,
       );
}

extension ClientExtension$Mutation$OrgResEquipmentKindEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OrgResEquipmentKindEdit>>
  mutate$OrgResEquipmentKindEdit(
    Options$Mutation$OrgResEquipmentKindEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OrgResEquipmentKindEdit>
  watchMutation$OrgResEquipmentKindEdit(
    WatchOptions$Mutation$OrgResEquipmentKindEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OrgResEquipmentKindEdit$HookResult {
  Mutation$OrgResEquipmentKindEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OrgResEquipmentKindEdit runMutation;

  final graphql.QueryResult<Mutation$OrgResEquipmentKindEdit> result;
}

Mutation$OrgResEquipmentKindEdit$HookResult
useMutation$OrgResEquipmentKindEdit([
  WidgetOptions$Mutation$OrgResEquipmentKindEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OrgResEquipmentKindEdit(),
  );
  return Mutation$OrgResEquipmentKindEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OrgResEquipmentKindEdit>
useWatchMutation$OrgResEquipmentKindEdit(
  WatchOptions$Mutation$OrgResEquipmentKindEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OrgResEquipmentKindEdit
    extends graphql.MutationOptions<Mutation$OrgResEquipmentKindEdit> {
  WidgetOptions$Mutation$OrgResEquipmentKindEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrgResEquipmentKindEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrgResEquipmentKindEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrgResEquipmentKindEdit>? update,
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
                     : _parserFn$Mutation$OrgResEquipmentKindEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrgResEquipmentKindEdit,
         parserFn: _parserFn$Mutation$OrgResEquipmentKindEdit,
       );

  final OnMutationCompleted$Mutation$OrgResEquipmentKindEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OrgResEquipmentKindEdit =
    graphql.MultiSourceResult<Mutation$OrgResEquipmentKindEdit> Function(
      Variables$Mutation$OrgResEquipmentKindEdit, {
      Object? optimisticResult,
      Mutation$OrgResEquipmentKindEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OrgResEquipmentKindEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OrgResEquipmentKindEdit,
      graphql.QueryResult<Mutation$OrgResEquipmentKindEdit>?,
    );

class Mutation$OrgResEquipmentKindEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OrgResEquipmentKindEdit> {
  Mutation$OrgResEquipmentKindEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OrgResEquipmentKindEdit? options,
    required Builder$Mutation$OrgResEquipmentKindEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OrgResEquipmentKindEdit(),
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

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId({
    this.mstrEquipmentKind,
    this.$__typename = 'UpdateMstrEquipmentKindPayload',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKind = json['mstrEquipmentKind'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
      mstrEquipmentKind: l$mstrEquipmentKind == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.fromJson(
              (l$mstrEquipmentKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
  mstrEquipmentKind;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentKind = mstrEquipmentKind;
    _resultData['mstrEquipmentKind'] = l$mstrEquipmentKind?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentKind = mstrEquipmentKind;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrEquipmentKind, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKind = mstrEquipmentKind;
    final lOther$mstrEquipmentKind = other.mstrEquipmentKind;
    if (l$mstrEquipmentKind != lOther$mstrEquipmentKind) {
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId
    on Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId;

  TRes call({
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
    mstrEquipmentKind,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind;
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
      mstrEquipmentKind: mstrEquipmentKind == _undefined
          ? _instance.mstrEquipmentKind
          : (mstrEquipmentKind
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind {
    final local$mstrEquipmentKind = _instance.mstrEquipmentKind;
    return local$mstrEquipmentKind == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
            local$mstrEquipmentKind,
            (e) => call(mstrEquipmentKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
    mstrEquipmentKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind({
    required this.mstrEquipmentKindId,
    this.startAt,
    this.stopAt,
    this.remarks,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrEquipmentKind',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKindId = json['mstrEquipmentKindId'];
    final l$startAt = json['startAt'];
    final l$stopAt = json['stopAt'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
      mstrEquipmentKindId: (l$mstrEquipmentKindId as String),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String?),
      remarks: (l$remarks as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentKindId;

  final String? startAt;

  final String? stopAt;

  final String? remarks;

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    _resultData['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
    final l$startAt = startAt;
    _resultData['startAt'] = l$startAt;
    final l$stopAt = stopAt;
    _resultData['stopAt'] = l$stopAt;
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
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$remarks = remarks;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentKindId,
      l$startAt,
      l$stopAt,
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
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$stopAt = stopAt;
    final lOther$stopAt = other.stopAt;
    if (l$stopAt != lOther$stopAt) {
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
    on
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind;

  TRes call({
    String? mstrEquipmentKindId,
    String? startAt,
    String? stopAt,
    String? remarks,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
      mstrEquipmentKindId:
          mstrEquipmentKindId == _undefined || mstrEquipmentKindId == null
          ? _instance.mstrEquipmentKindId
          : (mstrEquipmentKindId as String),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      stopAt: stopAt == _undefined ? _instance.stopAt : (stopAt as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? startAt,
    String? stopAt,
    String? remarks,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId
    on
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId,
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
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrgResEquipmentKindEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
