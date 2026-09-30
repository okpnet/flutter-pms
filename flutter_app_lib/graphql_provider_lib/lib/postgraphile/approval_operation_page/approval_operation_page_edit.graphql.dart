import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ApprovalOperationPageEdit {
  factory Variables$Mutation$ApprovalOperationPageEdit({
    required String mstrApprovalPatternId,
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
    List<
      Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
    >?
    patternDetailUpdate,
    List<
      Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput
    >?
    patternDetailCreate,
    List<Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete>?
    patternDetailDelete,
  }) => Variables$Mutation$ApprovalOperationPageEdit._({
    r'mstrApprovalPatternId': mstrApprovalPatternId,
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
    if (patternDetailUpdate != null)
      r'patternDetailUpdate': patternDetailUpdate,
    if (patternDetailCreate != null)
      r'patternDetailCreate': patternDetailCreate,
    if (patternDetailDelete != null)
      r'patternDetailDelete': patternDetailDelete,
  });

  Variables$Mutation$ApprovalOperationPageEdit._(this._$data);

  factory Variables$Mutation$ApprovalOperationPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrApprovalPatternId = data['mstrApprovalPatternId'];
    result$data['mstrApprovalPatternId'] = (l$mstrApprovalPatternId as String);
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
    if (data.containsKey('patternDetailUpdate')) {
      final l$patternDetailUpdate = data['patternDetailUpdate'];
      result$data['patternDetailUpdate'] = (l$patternDetailUpdate as List<dynamic>?)
          ?.map(
            (e) =>
                Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('patternDetailCreate')) {
      final l$patternDetailCreate = data['patternDetailCreate'];
      result$data['patternDetailCreate'] = (l$patternDetailCreate as List<dynamic>?)
          ?.map(
            (e) =>
                Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('patternDetailDelete')) {
      final l$patternDetailDelete = data['patternDetailDelete'];
      result$data['patternDetailDelete'] = (l$patternDetailDelete as List<dynamic>?)
          ?.map(
            (e) =>
                Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    return Variables$Mutation$ApprovalOperationPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrApprovalPatternId =>
      (_$data['mstrApprovalPatternId'] as String);

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

  List<
    Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
  >?
  get patternDetailUpdate =>
      (_$data['patternDetailUpdate']
          as List<
            Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
          >?);

  List<Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput>?
  get patternDetailCreate =>
      (_$data['patternDetailCreate']
          as List<
            Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput
          >?);

  List<Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete>?
  get patternDetailDelete =>
      (_$data['patternDetailDelete']
          as List<
            Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete
          >?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    result$data['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
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
    if (_$data.containsKey('patternDetailUpdate')) {
      final l$patternDetailUpdate = patternDetailUpdate;
      result$data['patternDetailUpdate'] = l$patternDetailUpdate
          ?.map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('patternDetailCreate')) {
      final l$patternDetailCreate = patternDetailCreate;
      result$data['patternDetailCreate'] = l$patternDetailCreate
          ?.map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('patternDetailDelete')) {
      final l$patternDetailDelete = patternDetailDelete;
      result$data['patternDetailDelete'] = l$patternDetailDelete
          ?.map((e) => e.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ApprovalOperationPageEdit<
    Variables$Mutation$ApprovalOperationPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ApprovalOperationPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ApprovalOperationPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$patternDetailUpdate = patternDetailUpdate;
    final lOther$patternDetailUpdate = other.patternDetailUpdate;
    if (_$data.containsKey('patternDetailUpdate') !=
        other._$data.containsKey('patternDetailUpdate')) {
      return false;
    }
    if (l$patternDetailUpdate != null && lOther$patternDetailUpdate != null) {
      if (l$patternDetailUpdate.length != lOther$patternDetailUpdate.length) {
        return false;
      }
      for (int i = 0; i < l$patternDetailUpdate.length; i++) {
        final l$patternDetailUpdate$entry = l$patternDetailUpdate[i];
        final lOther$patternDetailUpdate$entry = lOther$patternDetailUpdate[i];
        if (l$patternDetailUpdate$entry != lOther$patternDetailUpdate$entry) {
          return false;
        }
      }
    } else if (l$patternDetailUpdate != lOther$patternDetailUpdate) {
      return false;
    }
    final l$patternDetailCreate = patternDetailCreate;
    final lOther$patternDetailCreate = other.patternDetailCreate;
    if (_$data.containsKey('patternDetailCreate') !=
        other._$data.containsKey('patternDetailCreate')) {
      return false;
    }
    if (l$patternDetailCreate != null && lOther$patternDetailCreate != null) {
      if (l$patternDetailCreate.length != lOther$patternDetailCreate.length) {
        return false;
      }
      for (int i = 0; i < l$patternDetailCreate.length; i++) {
        final l$patternDetailCreate$entry = l$patternDetailCreate[i];
        final lOther$patternDetailCreate$entry = lOther$patternDetailCreate[i];
        if (l$patternDetailCreate$entry != lOther$patternDetailCreate$entry) {
          return false;
        }
      }
    } else if (l$patternDetailCreate != lOther$patternDetailCreate) {
      return false;
    }
    final l$patternDetailDelete = patternDetailDelete;
    final lOther$patternDetailDelete = other.patternDetailDelete;
    if (_$data.containsKey('patternDetailDelete') !=
        other._$data.containsKey('patternDetailDelete')) {
      return false;
    }
    if (l$patternDetailDelete != null && lOther$patternDetailDelete != null) {
      if (l$patternDetailDelete.length != lOther$patternDetailDelete.length) {
        return false;
      }
      for (int i = 0; i < l$patternDetailDelete.length; i++) {
        final l$patternDetailDelete$entry = l$patternDetailDelete[i];
        final lOther$patternDetailDelete$entry = lOther$patternDetailDelete[i];
        if (l$patternDetailDelete$entry != lOther$patternDetailDelete$entry) {
          return false;
        }
      }
    } else if (l$patternDetailDelete != lOther$patternDetailDelete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
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
    final l$patternDetailUpdate = patternDetailUpdate;
    final l$patternDetailCreate = patternDetailCreate;
    final l$patternDetailDelete = patternDetailDelete;
    return Object.hashAll([
      l$mstrApprovalPatternId,
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
      _$data.containsKey('patternDetailUpdate')
          ? l$patternDetailUpdate == null
                ? null
                : Object.hashAll(l$patternDetailUpdate.map((v) => v))
          : const {},
      _$data.containsKey('patternDetailCreate')
          ? l$patternDetailCreate == null
                ? null
                : Object.hashAll(l$patternDetailCreate.map((v) => v))
          : const {},
      _$data.containsKey('patternDetailDelete')
          ? l$patternDetailDelete == null
                ? null
                : Object.hashAll(l$patternDetailDelete.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ApprovalOperationPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ApprovalOperationPageEdit(
    Variables$Mutation$ApprovalOperationPageEdit instance,
    TRes Function(Variables$Mutation$ApprovalOperationPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ApprovalOperationPageEdit;

  factory CopyWith$Variables$Mutation$ApprovalOperationPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ApprovalOperationPageEdit;

  TRes call({
    String? mstrApprovalPatternId,
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
    List<
      Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
    >?
    patternDetailUpdate,
    List<
      Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput
    >?
    patternDetailCreate,
    List<Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete>?
    patternDetailDelete,
  });
}

class _CopyWithImpl$Variables$Mutation$ApprovalOperationPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ApprovalOperationPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ApprovalOperationPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ApprovalOperationPageEdit _instance;

  final TRes Function(Variables$Mutation$ApprovalOperationPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternId = _undefined,
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
    Object? patternDetailUpdate = _undefined,
    Object? patternDetailCreate = _undefined,
    Object? patternDetailDelete = _undefined,
  }) => _then(
    Variables$Mutation$ApprovalOperationPageEdit._({
      ..._instance._$data,
      if (mstrApprovalPatternId != _undefined && mstrApprovalPatternId != null)
        'mstrApprovalPatternId': (mstrApprovalPatternId as String),
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
      if (patternDetailUpdate != _undefined)
        'patternDetailUpdate':
            (patternDetailUpdate
                as List<
                  Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
                >?),
      if (patternDetailCreate != _undefined)
        'patternDetailCreate':
            (patternDetailCreate
                as List<
                  Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput
                >?),
      if (patternDetailDelete != _undefined)
        'patternDetailDelete':
            (patternDetailDelete
                as List<
                  Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete
                >?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ApprovalOperationPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ApprovalOperationPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ApprovalOperationPageEdit(this._res);

  TRes _res;

  call({
    String? mstrApprovalPatternId,
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
    List<
      Input$MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate
    >?
    patternDetailUpdate,
    List<
      Input$MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput
    >?
    patternDetailCreate,
    List<Input$MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete>?
    patternDetailDelete,
  }) => _res;
}

class Mutation$ApprovalOperationPageEdit {
  Mutation$ApprovalOperationPageEdit({
    this.updateMstrApprovalPatternByMstrApprovalPatternId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ApprovalOperationPageEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrApprovalPatternByMstrApprovalPatternId =
        json['updateMstrApprovalPatternByMstrApprovalPatternId'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit(
      updateMstrApprovalPatternByMstrApprovalPatternId:
          l$updateMstrApprovalPatternByMstrApprovalPatternId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId.fromJson(
              (l$updateMstrApprovalPatternByMstrApprovalPatternId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId?
  updateMstrApprovalPatternByMstrApprovalPatternId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrApprovalPatternByMstrApprovalPatternId =
        updateMstrApprovalPatternByMstrApprovalPatternId;
    _resultData['updateMstrApprovalPatternByMstrApprovalPatternId'] =
        l$updateMstrApprovalPatternByMstrApprovalPatternId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrApprovalPatternByMstrApprovalPatternId =
        updateMstrApprovalPatternByMstrApprovalPatternId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrApprovalPatternByMstrApprovalPatternId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ApprovalOperationPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrApprovalPatternByMstrApprovalPatternId =
        updateMstrApprovalPatternByMstrApprovalPatternId;
    final lOther$updateMstrApprovalPatternByMstrApprovalPatternId =
        other.updateMstrApprovalPatternByMstrApprovalPatternId;
    if (l$updateMstrApprovalPatternByMstrApprovalPatternId !=
        lOther$updateMstrApprovalPatternByMstrApprovalPatternId) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit
    on Mutation$ApprovalOperationPageEdit {
  CopyWith$Mutation$ApprovalOperationPageEdit<
    Mutation$ApprovalOperationPageEdit
  >
  get copyWith => CopyWith$Mutation$ApprovalOperationPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit<TRes> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit(
    Mutation$ApprovalOperationPageEdit instance,
    TRes Function(Mutation$ApprovalOperationPageEdit) then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit;

  factory CopyWith$Mutation$ApprovalOperationPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit;

  TRes call({
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId?
    updateMstrApprovalPatternByMstrApprovalPatternId,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get updateMstrApprovalPatternByMstrApprovalPatternId;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit<TRes>
    implements CopyWith$Mutation$ApprovalOperationPageEdit<TRes> {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit(this._instance, this._then);

  final Mutation$ApprovalOperationPageEdit _instance;

  final TRes Function(Mutation$ApprovalOperationPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrApprovalPatternByMstrApprovalPatternId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit(
      updateMstrApprovalPatternByMstrApprovalPatternId:
          updateMstrApprovalPatternByMstrApprovalPatternId == _undefined
          ? _instance.updateMstrApprovalPatternByMstrApprovalPatternId
          : (updateMstrApprovalPatternByMstrApprovalPatternId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get updateMstrApprovalPatternByMstrApprovalPatternId {
    final local$updateMstrApprovalPatternByMstrApprovalPatternId =
        _instance.updateMstrApprovalPatternByMstrApprovalPatternId;
    return local$updateMstrApprovalPatternByMstrApprovalPatternId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
            local$updateMstrApprovalPatternByMstrApprovalPatternId,
            (e) => call(updateMstrApprovalPatternByMstrApprovalPatternId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit<TRes>
    implements CopyWith$Mutation$ApprovalOperationPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId?
    updateMstrApprovalPatternByMstrApprovalPatternId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
    TRes
  >
  get updateMstrApprovalPatternByMstrApprovalPatternId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId.stub(
        _res,
      );
}

const documentNodeMutationApprovalOperationPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ApprovalOperationPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrApprovalPatternId'),
          ),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'patternDetailUpdate')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(
                value:
                    'MstrApprovalPatternDetailOnMstrApprovalPatternDetailForMstrApprovalPatternDetailFk1UsingMstrApprovalPatternDetailPkcUpdate',
              ),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'patternDetailCreate')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(
                value:
                    'MstrApprovalPatternDetailFk1MstrApprovalPatternDetailCreateInput',
              ),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'patternDetailDelete')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(
                value:
                    'MstrApprovalPatternDetailMstrApprovalPatternDetailPkcDelete',
              ),
              isNonNull: true,
            ),
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
              value: 'updateMstrApprovalPatternByMstrApprovalPatternId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrApprovalPatternId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrApprovalPatternId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrApprovalPatternPatch'),
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
                          ObjectFieldNode(
                            name: NameNode(
                              value:
                                  'mstrApprovalPatternDetailsUsingMstrApprovalPatternId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value:
                                        'updateByMstrApprovalPatternDetailId',
                                  ),
                                  value: VariableNode(
                                    name: NameNode(
                                      value: 'patternDetailUpdate',
                                    ),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(value: 'create'),
                                  value: VariableNode(
                                    name: NameNode(
                                      value: 'patternDetailCreate',
                                    ),
                                  ),
                                ),
                                ObjectFieldNode(
                                  name: NameNode(
                                    value:
                                        'deleteByMstrApprovalPatternDetailId',
                                  ),
                                  value: VariableNode(
                                    name: NameNode(
                                      value: 'patternDetailDelete',
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
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrApprovalPattern'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrApprovalPatternId'),
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
                        name: NameNode(
                          value:
                              'mstrApprovalPatternDetailsByMstrApprovalPatternId',
                        ),
                        alias: NameNode(value: 'pattern_detail'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'totalCount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'pageInfo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'hasNextPage'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'endCursor'),
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
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'mstrApprovalPatternDetailId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrApprovalId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'mstrApprovalPatternId',
                                    ),
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
                                      value: 'mstrApprovalByMstrApprovalId',
                                    ),
                                    alias: NameNode(value: 'approval'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrApprovalId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'infoDepartmentId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'infoPositionId',
                                          ),
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
                                            value: 'sharedAppellationByNames',
                                          ),
                                          alias: NameNode(value: 'labels'),
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedAppellationsId',
                                                ),
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
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
                                                      alias: NameNode(
                                                        value: 'ja',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'jaLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'en',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'enLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
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
                                                      alias: NameNode(
                                                        value: 'ja',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'jaLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'en',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'enLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryId',
                                                      ),
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
                                                      alias: NameNode(
                                                        value: 'ja',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'jaLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
                                                      name: NameNode(
                                                        value:
                                                            'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'en',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'enLanguageCodeId',
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'dictionaryValue',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
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
Mutation$ApprovalOperationPageEdit _parserFn$Mutation$ApprovalOperationPageEdit(
  Map<String, dynamic> data,
) => Mutation$ApprovalOperationPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ApprovalOperationPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ApprovalOperationPageEdit?,
    );

class Options$Mutation$ApprovalOperationPageEdit
    extends graphql.MutationOptions<Mutation$ApprovalOperationPageEdit> {
  Options$Mutation$ApprovalOperationPageEdit({
    String? operationName,
    required Variables$Mutation$ApprovalOperationPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApprovalOperationPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ApprovalOperationPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ApprovalOperationPageEdit>? update,
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
                     : _parserFn$Mutation$ApprovalOperationPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationApprovalOperationPageEdit,
         parserFn: _parserFn$Mutation$ApprovalOperationPageEdit,
       );

  final OnMutationCompleted$Mutation$ApprovalOperationPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ApprovalOperationPageEdit
    extends graphql.WatchQueryOptions<Mutation$ApprovalOperationPageEdit> {
  WatchOptions$Mutation$ApprovalOperationPageEdit({
    String? operationName,
    required Variables$Mutation$ApprovalOperationPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApprovalOperationPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationApprovalOperationPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ApprovalOperationPageEdit,
       );
}

extension ClientExtension$Mutation$ApprovalOperationPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ApprovalOperationPageEdit>>
  mutate$ApprovalOperationPageEdit(
    Options$Mutation$ApprovalOperationPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ApprovalOperationPageEdit>
  watchMutation$ApprovalOperationPageEdit(
    WatchOptions$Mutation$ApprovalOperationPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ApprovalOperationPageEdit$HookResult {
  Mutation$ApprovalOperationPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ApprovalOperationPageEdit runMutation;

  final graphql.QueryResult<Mutation$ApprovalOperationPageEdit> result;
}

Mutation$ApprovalOperationPageEdit$HookResult
useMutation$ApprovalOperationPageEdit([
  WidgetOptions$Mutation$ApprovalOperationPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ApprovalOperationPageEdit(),
  );
  return Mutation$ApprovalOperationPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ApprovalOperationPageEdit>
useWatchMutation$ApprovalOperationPageEdit(
  WatchOptions$Mutation$ApprovalOperationPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ApprovalOperationPageEdit
    extends graphql.MutationOptions<Mutation$ApprovalOperationPageEdit> {
  WidgetOptions$Mutation$ApprovalOperationPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApprovalOperationPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ApprovalOperationPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ApprovalOperationPageEdit>? update,
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
                     : _parserFn$Mutation$ApprovalOperationPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationApprovalOperationPageEdit,
         parserFn: _parserFn$Mutation$ApprovalOperationPageEdit,
       );

  final OnMutationCompleted$Mutation$ApprovalOperationPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ApprovalOperationPageEdit =
    graphql.MultiSourceResult<Mutation$ApprovalOperationPageEdit> Function(
      Variables$Mutation$ApprovalOperationPageEdit, {
      Object? optimisticResult,
      Mutation$ApprovalOperationPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ApprovalOperationPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ApprovalOperationPageEdit,
      graphql.QueryResult<Mutation$ApprovalOperationPageEdit>?,
    );

class Mutation$ApprovalOperationPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ApprovalOperationPageEdit> {
  Mutation$ApprovalOperationPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ApprovalOperationPageEdit? options,
    required Builder$Mutation$ApprovalOperationPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ApprovalOperationPageEdit(),
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

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId({
    this.mstrApprovalPattern,
    this.$__typename = 'UpdateMstrApprovalPatternPayload',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPattern = json['mstrApprovalPattern'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
      mstrApprovalPattern: l$mstrApprovalPattern == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.fromJson(
              (l$mstrApprovalPattern as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern?
  mstrApprovalPattern;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPattern = mstrApprovalPattern;
    _resultData['mstrApprovalPattern'] = l$mstrApprovalPattern?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPattern = mstrApprovalPattern;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrApprovalPattern, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPattern = mstrApprovalPattern;
    final lOther$mstrApprovalPattern = other.mstrApprovalPattern;
    if (l$mstrApprovalPattern != lOther$mstrApprovalPattern) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId;

  TRes call({
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern?
    mstrApprovalPattern,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
    TRes
  >
  get mstrApprovalPattern;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPattern = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
      mstrApprovalPattern: mstrApprovalPattern == _undefined
          ? _instance.mstrApprovalPattern
          : (mstrApprovalPattern
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
    TRes
  >
  get mstrApprovalPattern {
    final local$mstrApprovalPattern = _instance.mstrApprovalPattern;
    return local$mstrApprovalPattern == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
            local$mstrApprovalPattern,
            (e) => call(mstrApprovalPattern: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern?
    mstrApprovalPattern,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
    TRes
  >
  get mstrApprovalPattern =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern({
    required this.mstrApprovalPatternId,
    this.remarks,
    this.labels,
    required this.pattern_detail,
    this.$__typename = 'MstrApprovalPattern',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$pattern_detail = json['pattern_detail'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      pattern_detail:
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail.fromJson(
            (l$pattern_detail as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternId;

  final String? remarks;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels?
  labels;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail
  pattern_detail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$pattern_detail = pattern_detail;
    _resultData['pattern_detail'] = l$pattern_detail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$pattern_detail = pattern_detail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternId,
      l$remarks,
      l$labels,
      l$pattern_detail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
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
    final l$pattern_detail = pattern_detail;
    final lOther$pattern_detail = other.pattern_detail;
    if (l$pattern_detail != lOther$pattern_detail) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern;

  TRes call({
    String? mstrApprovalPatternId,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels?
    labels,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail?
    pattern_detail,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
    TRes
  >
  get pattern_detail;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternId = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? pattern_detail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels?),
      pattern_detail: pattern_detail == _undefined || pattern_detail == null
          ? _instance.pattern_detail
          : (pattern_detail
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
    TRes
  >
  get pattern_detail {
    final local$pattern_detail = _instance.pattern_detail;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
      local$pattern_detail,
      (e) => call(pattern_detail: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternId,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels?
    labels,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail?
    pattern_detail,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
    TRes
  >
  get pattern_detail =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels.fromJson(
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
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels,
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
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrApprovalPatternDetailsConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
      totalCount: (l$totalCount as int),
      pageInfo:
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo
  pageInfo;

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail;

  TRes call({
    int? totalCount,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo?
    pageInfo,
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo?
    pageInfo,
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes({
    required this.mstrApprovalPatternDetailId,
    required this.mstrApprovalId,
    required this.mstrApprovalPatternId,
    this.remarks,
    this.approval,
    this.$__typename = 'MstrApprovalPatternDetail',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalPatternDetailId = json['mstrApprovalPatternDetailId'];
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$mstrApprovalPatternId = json['mstrApprovalPatternId'];
    final l$remarks = json['remarks'];
    final l$approval = json['approval'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
      mstrApprovalPatternDetailId: (l$mstrApprovalPatternDetailId as String),
      mstrApprovalId: (l$mstrApprovalId as String),
      mstrApprovalPatternId: (l$mstrApprovalPatternId as String),
      remarks: (l$remarks as String?),
      approval: l$approval == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval.fromJson(
              (l$approval as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalPatternDetailId;

  final String mstrApprovalId;

  final String mstrApprovalPatternId;

  final String? remarks;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval?
  approval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    _resultData['mstrApprovalPatternDetailId'] = l$mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    _resultData['mstrApprovalPatternId'] = l$mstrApprovalPatternId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$approval = approval;
    _resultData['approval'] = l$approval?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final l$mstrApprovalId = mstrApprovalId;
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final l$remarks = remarks;
    final l$approval = approval;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalPatternDetailId,
      l$mstrApprovalId,
      l$mstrApprovalPatternId,
      l$remarks,
      l$approval,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalPatternDetailId = mstrApprovalPatternDetailId;
    final lOther$mstrApprovalPatternDetailId =
        other.mstrApprovalPatternDetailId;
    if (l$mstrApprovalPatternDetailId != lOther$mstrApprovalPatternDetailId) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$mstrApprovalPatternId = mstrApprovalPatternId;
    final lOther$mstrApprovalPatternId = other.mstrApprovalPatternId;
    if (l$mstrApprovalPatternId != lOther$mstrApprovalPatternId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$approval = approval;
    final lOther$approval = other.approval;
    if (l$approval != lOther$approval) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes;

  TRes call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval?
    approval,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
    TRes
  >
  get approval;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalPatternDetailId = _undefined,
    Object? mstrApprovalId = _undefined,
    Object? mstrApprovalPatternId = _undefined,
    Object? remarks = _undefined,
    Object? approval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
      mstrApprovalPatternDetailId:
          mstrApprovalPatternDetailId == _undefined ||
              mstrApprovalPatternDetailId == null
          ? _instance.mstrApprovalPatternDetailId
          : (mstrApprovalPatternDetailId as String),
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      mstrApprovalPatternId:
          mstrApprovalPatternId == _undefined || mstrApprovalPatternId == null
          ? _instance.mstrApprovalPatternId
          : (mstrApprovalPatternId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      approval: approval == _undefined
          ? _instance.approval
          : (approval
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
    TRes
  >
  get approval {
    final local$approval = _instance.approval;
    return local$approval == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
            local$approval,
            (e) => call(approval: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalPatternDetailId,
    String? mstrApprovalId,
    String? mstrApprovalPatternId,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval?
    approval,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
    TRes
  >
  get approval =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval({
    required this.mstrApprovalId,
    this.infoDepartmentId,
    required this.infoPositionId,
    this.priority,
    this.remarks,
    this.labels,
    this.$__typename = 'MstrApproval',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrApprovalId = json['mstrApprovalId'];
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$infoPositionId = json['infoPositionId'];
    final l$priority = json['priority'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
      mstrApprovalId: (l$mstrApprovalId as String),
      infoDepartmentId: (l$infoDepartmentId as String?),
      infoPositionId: (l$infoPositionId as String),
      priority: (l$priority as int?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrApprovalId;

  final String? infoDepartmentId;

  final String infoPositionId;

  final int? priority;

  final String? remarks;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrApprovalId = mstrApprovalId;
    _resultData['mstrApprovalId'] = l$mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    _resultData['infoPositionId'] = l$infoPositionId;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
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
    final l$mstrApprovalId = mstrApprovalId;
    final l$infoDepartmentId = infoDepartmentId;
    final l$infoPositionId = infoPositionId;
    final l$priority = priority;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrApprovalId,
      l$infoDepartmentId,
      l$infoPositionId,
      l$priority,
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrApprovalId = mstrApprovalId;
    final lOther$mstrApprovalId = other.mstrApprovalId;
    if (l$mstrApprovalId != lOther$mstrApprovalId) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval;

  TRes call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrApprovalId = _undefined,
    Object? infoDepartmentId = _undefined,
    Object? infoPositionId = _undefined,
    Object? priority = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
      mstrApprovalId: mstrApprovalId == _undefined || mstrApprovalId == null
          ? _instance.mstrApprovalId
          : (mstrApprovalId as String),
      infoDepartmentId: infoDepartmentId == _undefined
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String?),
      infoPositionId: infoPositionId == _undefined || infoPositionId == null
          ? _instance.infoPositionId
          : (infoPositionId as String),
      priority: priority == _undefined
          ? _instance.priority
          : (priority as int?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval(
    this._res,
  );

  TRes _res;

  call({
    String? mstrApprovalId,
    String? infoDepartmentId,
    String? infoPositionId,
    int? priority,
    String? remarks,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels.fromJson(
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
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels,
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
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern$pattern_detail$nodes$approval$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
