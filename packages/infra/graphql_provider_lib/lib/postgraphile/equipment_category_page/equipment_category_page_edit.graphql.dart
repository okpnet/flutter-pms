import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$EquipmentCategoryPageEdit {
  factory Variables$Mutation$EquipmentCategoryPageEdit({
    required String mstrEquipmentKindId,
    String? kindCode,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
    required String nameJa,
    required String nameEn,
    required String pronunciationSharedDictionaryId,
    required String pronunciationJa,
    required String pronunciationEn,
    required String nicknameSharedDictionaryId,
    required String nicknameJa,
    required String nicknameEn,
    String? startAt,
    String? stopAt,
    String? remarks,
  }) => Variables$Mutation$EquipmentCategoryPageEdit._({
    r'mstrEquipmentKindId': mstrEquipmentKindId,
    if (kindCode != null) r'kindCode': kindCode,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
    r'nameJa': nameJa,
    r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    r'pronunciationJa': pronunciationJa,
    r'pronunciationEn': pronunciationEn,
    r'nicknameSharedDictionaryId': nicknameSharedDictionaryId,
    r'nicknameJa': nicknameJa,
    r'nicknameEn': nicknameEn,
    if (startAt != null) r'startAt': startAt,
    if (stopAt != null) r'stopAt': stopAt,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$EquipmentCategoryPageEdit._(this._$data);

  factory Variables$Mutation$EquipmentCategoryPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentKindId = data['mstrEquipmentKindId'];
    result$data['mstrEquipmentKindId'] = (l$mstrEquipmentKindId as String);
    if (data.containsKey('kindCode')) {
      final l$kindCode = data['kindCode'];
      result$data['kindCode'] = (l$kindCode as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$nameSharedDictionaryId = data['nameSharedDictionaryId'];
    result$data['nameSharedDictionaryId'] =
        (l$nameSharedDictionaryId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
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
    return Variables$Mutation$EquipmentCategoryPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrEquipmentKindId => (_$data['mstrEquipmentKindId'] as String);

  String? get kindCode => (_$data['kindCode'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  String get nameSharedDictionaryId =>
      (_$data['nameSharedDictionaryId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

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

  String? get startAt => (_$data['startAt'] as String?);

  String? get stopAt => (_$data['stopAt'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    result$data['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
    if (_$data.containsKey('kindCode')) {
      final l$kindCode = kindCode;
      result$data['kindCode'] = l$kindCode;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    result$data['nameSharedDictionaryId'] = l$nameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
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
    return result$data;
  }

  CopyWith$Variables$Mutation$EquipmentCategoryPageEdit<
    Variables$Mutation$EquipmentCategoryPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$EquipmentCategoryPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$EquipmentCategoryPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
      return false;
    }
    final l$kindCode = kindCode;
    final lOther$kindCode = other.kindCode;
    if (_$data.containsKey('kindCode') !=
        other._$data.containsKey('kindCode')) {
      return false;
    }
    if (l$kindCode != lOther$kindCode) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$kindCode = kindCode;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$nameJa = nameJa;
    final l$nameEn = nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    final l$nicknameSharedDictionaryId = nicknameSharedDictionaryId;
    final l$nicknameJa = nicknameJa;
    final l$nicknameEn = nicknameEn;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrEquipmentKindId,
      _$data.containsKey('kindCode') ? l$kindCode : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
      l$nameJa,
      l$nameEn,
      l$pronunciationSharedDictionaryId,
      l$pronunciationJa,
      l$pronunciationEn,
      l$nicknameSharedDictionaryId,
      l$nicknameJa,
      l$nicknameEn,
      _$data.containsKey('startAt') ? l$startAt : const {},
      _$data.containsKey('stopAt') ? l$stopAt : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$EquipmentCategoryPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$EquipmentCategoryPageEdit(
    Variables$Mutation$EquipmentCategoryPageEdit instance,
    TRes Function(Variables$Mutation$EquipmentCategoryPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$EquipmentCategoryPageEdit;

  factory CopyWith$Variables$Mutation$EquipmentCategoryPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$EquipmentCategoryPageEdit;

  TRes call({
    String? mstrEquipmentKindId,
    String? kindCode,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? startAt,
    String? stopAt,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$EquipmentCategoryPageEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentCategoryPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$EquipmentCategoryPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EquipmentCategoryPageEdit _instance;

  final TRes Function(Variables$Mutation$EquipmentCategoryPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? kindCode = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? nameSharedDictionaryId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? nameJa = _undefined,
    Object? nameEn = _undefined,
    Object? pronunciationSharedDictionaryId = _undefined,
    Object? pronunciationJa = _undefined,
    Object? pronunciationEn = _undefined,
    Object? nicknameSharedDictionaryId = _undefined,
    Object? nicknameJa = _undefined,
    Object? nicknameEn = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$EquipmentCategoryPageEdit._({
      ..._instance._$data,
      if (mstrEquipmentKindId != _undefined && mstrEquipmentKindId != null)
        'mstrEquipmentKindId': (mstrEquipmentKindId as String),
      if (kindCode != _undefined) 'kindCode': (kindCode as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (nameSharedDictionaryId != _undefined &&
          nameSharedDictionaryId != null)
        'nameSharedDictionaryId': (nameSharedDictionaryId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
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
      if (startAt != _undefined) 'startAt': (startAt as String?),
      if (stopAt != _undefined) 'stopAt': (stopAt as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$EquipmentCategoryPageEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentCategoryPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$EquipmentCategoryPageEdit(this._res);

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? kindCode,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? nicknameSharedDictionaryId,
    String? nicknameJa,
    String? nicknameEn,
    String? startAt,
    String? stopAt,
    String? remarks,
  }) => _res;
}

class Mutation$EquipmentCategoryPageEdit {
  Mutation$EquipmentCategoryPageEdit({
    this.updateMstrEquipmentKindByMstrEquipmentKindId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EquipmentCategoryPageEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrEquipmentKindByMstrEquipmentKindId =
        json['updateMstrEquipmentKindByMstrEquipmentKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit(
      updateMstrEquipmentKindByMstrEquipmentKindId:
          l$updateMstrEquipmentKindByMstrEquipmentKindId == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId.fromJson(
              (l$updateMstrEquipmentKindByMstrEquipmentKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
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
    if (other is! Mutation$EquipmentCategoryPageEdit ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit
    on Mutation$EquipmentCategoryPageEdit {
  CopyWith$Mutation$EquipmentCategoryPageEdit<
    Mutation$EquipmentCategoryPageEdit
  >
  get copyWith => CopyWith$Mutation$EquipmentCategoryPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit<TRes> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit(
    Mutation$EquipmentCategoryPageEdit instance,
    TRes Function(Mutation$EquipmentCategoryPageEdit) then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit;

  TRes call({
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
    updateMstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit<TRes>
    implements CopyWith$Mutation$EquipmentCategoryPageEdit<TRes> {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit(this._instance, this._then);

  final Mutation$EquipmentCategoryPageEdit _instance;

  final TRes Function(Mutation$EquipmentCategoryPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrEquipmentKindByMstrEquipmentKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit(
      updateMstrEquipmentKindByMstrEquipmentKindId:
          updateMstrEquipmentKindByMstrEquipmentKindId == _undefined
          ? _instance.updateMstrEquipmentKindByMstrEquipmentKindId
          : (updateMstrEquipmentKindByMstrEquipmentKindId
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId {
    final local$updateMstrEquipmentKindByMstrEquipmentKindId =
        _instance.updateMstrEquipmentKindByMstrEquipmentKindId;
    return local$updateMstrEquipmentKindByMstrEquipmentKindId == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
            local$updateMstrEquipmentKindByMstrEquipmentKindId,
            (e) => call(updateMstrEquipmentKindByMstrEquipmentKindId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit<TRes>
    implements CopyWith$Mutation$EquipmentCategoryPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit(this._res);

  TRes _res;

  call({
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId?
    updateMstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get updateMstrEquipmentKindByMstrEquipmentKindId =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
        _res,
      );
}

const documentNodeMutationEquipmentCategoryPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'EquipmentCategoryPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrEquipmentKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'kindCode')),
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
                            name: NameNode(value: 'kindCode'),
                            value: VariableNode(
                              name: NameNode(value: 'kindCode'),
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
                        name: NameNode(value: 'kindCode'),
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
                        name: NameNode(value: 'remarks'),
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
  ],
);
Mutation$EquipmentCategoryPageEdit _parserFn$Mutation$EquipmentCategoryPageEdit(
  Map<String, dynamic> data,
) => Mutation$EquipmentCategoryPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$EquipmentCategoryPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$EquipmentCategoryPageEdit?,
    );

class Options$Mutation$EquipmentCategoryPageEdit
    extends graphql.MutationOptions<Mutation$EquipmentCategoryPageEdit> {
  Options$Mutation$EquipmentCategoryPageEdit({
    String? operationName,
    required Variables$Mutation$EquipmentCategoryPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentCategoryPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentCategoryPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentCategoryPageEdit>? update,
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
                     : _parserFn$Mutation$EquipmentCategoryPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentCategoryPageEdit,
         parserFn: _parserFn$Mutation$EquipmentCategoryPageEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentCategoryPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$EquipmentCategoryPageEdit
    extends graphql.WatchQueryOptions<Mutation$EquipmentCategoryPageEdit> {
  WatchOptions$Mutation$EquipmentCategoryPageEdit({
    String? operationName,
    required Variables$Mutation$EquipmentCategoryPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentCategoryPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationEquipmentCategoryPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$EquipmentCategoryPageEdit,
       );
}

extension ClientExtension$Mutation$EquipmentCategoryPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EquipmentCategoryPageEdit>>
  mutate$EquipmentCategoryPageEdit(
    Options$Mutation$EquipmentCategoryPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$EquipmentCategoryPageEdit>
  watchMutation$EquipmentCategoryPageEdit(
    WatchOptions$Mutation$EquipmentCategoryPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$EquipmentCategoryPageEdit$HookResult {
  Mutation$EquipmentCategoryPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$EquipmentCategoryPageEdit runMutation;

  final graphql.QueryResult<Mutation$EquipmentCategoryPageEdit> result;
}

Mutation$EquipmentCategoryPageEdit$HookResult
useMutation$EquipmentCategoryPageEdit([
  WidgetOptions$Mutation$EquipmentCategoryPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$EquipmentCategoryPageEdit(),
  );
  return Mutation$EquipmentCategoryPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EquipmentCategoryPageEdit>
useWatchMutation$EquipmentCategoryPageEdit(
  WatchOptions$Mutation$EquipmentCategoryPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$EquipmentCategoryPageEdit
    extends graphql.MutationOptions<Mutation$EquipmentCategoryPageEdit> {
  WidgetOptions$Mutation$EquipmentCategoryPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentCategoryPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentCategoryPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentCategoryPageEdit>? update,
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
                     : _parserFn$Mutation$EquipmentCategoryPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentCategoryPageEdit,
         parserFn: _parserFn$Mutation$EquipmentCategoryPageEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentCategoryPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$EquipmentCategoryPageEdit =
    graphql.MultiSourceResult<Mutation$EquipmentCategoryPageEdit> Function(
      Variables$Mutation$EquipmentCategoryPageEdit, {
      Object? optimisticResult,
      Mutation$EquipmentCategoryPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$EquipmentCategoryPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$EquipmentCategoryPageEdit,
      graphql.QueryResult<Mutation$EquipmentCategoryPageEdit>?,
    );

class Mutation$EquipmentCategoryPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$EquipmentCategoryPageEdit> {
  Mutation$EquipmentCategoryPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EquipmentCategoryPageEdit? options,
    required Builder$Mutation$EquipmentCategoryPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$EquipmentCategoryPageEdit(),
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

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId({
    this.mstrEquipmentKind,
    this.$__typename = 'UpdateMstrEquipmentKindPayload',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKind = json['mstrEquipmentKind'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
      mstrEquipmentKind: l$mstrEquipmentKind == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.fromJson(
              (l$mstrEquipmentKind as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId;

  TRes call({
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
    mstrEquipmentKind,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKind = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
      mstrEquipmentKind: mstrEquipmentKind == _undefined
          ? _instance.mstrEquipmentKind
          : (mstrEquipmentKind
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind {
    final local$mstrEquipmentKind = _instance.mstrEquipmentKind;
    return local$mstrEquipmentKind == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
            local$mstrEquipmentKind,
            (e) => call(mstrEquipmentKind: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind?
    mstrEquipmentKind,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    TRes
  >
  get mstrEquipmentKind =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind({
    required this.mstrEquipmentKindId,
    required this.kindCode,
    this.labels,
    this.startAt,
    this.stopAt,
    this.remarks,
    this.$__typename = 'MstrEquipmentKind',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKindId = json['mstrEquipmentKindId'];
    final l$kindCode = json['kindCode'];
    final l$labels = json['labels'];
    final l$startAt = json['startAt'];
    final l$stopAt = json['stopAt'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
      mstrEquipmentKindId: (l$mstrEquipmentKindId as String),
      kindCode: (l$kindCode as String),
      labels: l$labels == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentKindId;

  final String kindCode;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels?
  labels;

  final String? startAt;

  final String? stopAt;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    _resultData['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
    final l$kindCode = kindCode;
    _resultData['kindCode'] = l$kindCode;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$startAt = startAt;
    _resultData['startAt'] = l$startAt;
    final l$stopAt = stopAt;
    _resultData['stopAt'] = l$stopAt;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$kindCode = kindCode;
    final l$labels = labels;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentKindId,
      l$kindCode,
      l$labels,
      l$startAt,
      l$stopAt,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
      return false;
    }
    final l$kindCode = kindCode;
    final lOther$kindCode = other.kindCode;
    if (l$kindCode != lOther$kindCode) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind;

  TRes call({
    String? mstrEquipmentKindId,
    String? kindCode,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels?
    labels,
    String? startAt,
    String? stopAt,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? kindCode = _undefined,
    Object? labels = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
      mstrEquipmentKindId:
          mstrEquipmentKindId == _undefined || mstrEquipmentKindId == null
          ? _instance.mstrEquipmentKindId
          : (mstrEquipmentKindId as String),
      kindCode: kindCode == _undefined || kindCode == null
          ? _instance.kindCode
          : (kindCode as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels?),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      stopAt: stopAt == _undefined ? _instance.stopAt : (stopAt as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? kindCode,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels?
    labels,
    String? startAt,
    String? stopAt,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels.fromJson(
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
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels,
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
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentCategoryPageEdit$updateMstrEquipmentKindByMstrEquipmentKindId$mstrEquipmentKind$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
