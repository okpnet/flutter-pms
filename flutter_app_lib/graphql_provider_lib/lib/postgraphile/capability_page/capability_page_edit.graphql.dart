import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CapabilityPageEdit {
  factory Variables$Mutation$CapabilityPageEdit({
    required String mstrCapabilityId,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
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
  }) => Variables$Mutation$CapabilityPageEdit._({
    r'mstrCapabilityId': mstrCapabilityId,
    if (detail != null) r'detail': detail,
    if (referenceValue != null) r'referenceValue': referenceValue,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
    if (step != null) r'step': step,
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

  Variables$Mutation$CapabilityPageEdit._(this._$data);

  factory Variables$Mutation$CapabilityPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrCapabilityId = data['mstrCapabilityId'];
    result$data['mstrCapabilityId'] = (l$mstrCapabilityId as String);
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = (l$detail as String?);
    }
    if (data.containsKey('referenceValue')) {
      final l$referenceValue = data['referenceValue'];
      result$data['referenceValue'] = (l$referenceValue as String?);
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = (l$max as String?);
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = (l$min as String?);
    }
    if (data.containsKey('step')) {
      final l$step = data['step'];
      result$data['step'] = (l$step as String?);
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
    return Variables$Mutation$CapabilityPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrCapabilityId => (_$data['mstrCapabilityId'] as String);

  String? get detail => (_$data['detail'] as String?);

  String? get referenceValue => (_$data['referenceValue'] as String?);

  String? get max => (_$data['max'] as String?);

  String? get min => (_$data['min'] as String?);

  String? get step => (_$data['step'] as String?);

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
    final l$mstrCapabilityId = mstrCapabilityId;
    result$data['mstrCapabilityId'] = l$mstrCapabilityId;
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail;
    }
    if (_$data.containsKey('referenceValue')) {
      final l$referenceValue = referenceValue;
      result$data['referenceValue'] = l$referenceValue;
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max;
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min;
    }
    if (_$data.containsKey('step')) {
      final l$step = step;
      result$data['step'] = l$step;
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

  CopyWith$Variables$Mutation$CapabilityPageEdit<
    Variables$Mutation$CapabilityPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CapabilityPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CapabilityPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
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
    final l$referenceValue = referenceValue;
    final lOther$referenceValue = other.referenceValue;
    if (_$data.containsKey('referenceValue') !=
        other._$data.containsKey('referenceValue')) {
      return false;
    }
    if (l$referenceValue != lOther$referenceValue) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (_$data.containsKey('step') != other._$data.containsKey('step')) {
      return false;
    }
    if (l$step != lOther$step) {
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
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
      l$mstrCapabilityId,
      _$data.containsKey('detail') ? l$detail : const {},
      _$data.containsKey('referenceValue') ? l$referenceValue : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
      _$data.containsKey('step') ? l$step : const {},
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

abstract class CopyWith$Variables$Mutation$CapabilityPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$CapabilityPageEdit(
    Variables$Mutation$CapabilityPageEdit instance,
    TRes Function(Variables$Mutation$CapabilityPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$CapabilityPageEdit;

  factory CopyWith$Variables$Mutation$CapabilityPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CapabilityPageEdit;

  TRes call({
    String? mstrCapabilityId,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
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

class _CopyWithImpl$Variables$Mutation$CapabilityPageEdit<TRes>
    implements CopyWith$Variables$Mutation$CapabilityPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$CapabilityPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CapabilityPageEdit _instance;

  final TRes Function(Variables$Mutation$CapabilityPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? detail = _undefined,
    Object? referenceValue = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? step = _undefined,
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
    Variables$Mutation$CapabilityPageEdit._({
      ..._instance._$data,
      if (mstrCapabilityId != _undefined && mstrCapabilityId != null)
        'mstrCapabilityId': (mstrCapabilityId as String),
      if (detail != _undefined) 'detail': (detail as String?),
      if (referenceValue != _undefined)
        'referenceValue': (referenceValue as String?),
      if (max != _undefined) 'max': (max as String?),
      if (min != _undefined) 'min': (min as String?),
      if (step != _undefined) 'step': (step as String?),
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

class _CopyWithStubImpl$Variables$Mutation$CapabilityPageEdit<TRes>
    implements CopyWith$Variables$Mutation$CapabilityPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CapabilityPageEdit(this._res);

  TRes _res;

  call({
    String? mstrCapabilityId,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
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

class Mutation$CapabilityPageEdit {
  Mutation$CapabilityPageEdit({
    this.updateMstrCapabilityByMstrCapabilityId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CapabilityPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrCapabilityByMstrCapabilityId =
        json['updateMstrCapabilityByMstrCapabilityId'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit(
      updateMstrCapabilityByMstrCapabilityId:
          l$updateMstrCapabilityByMstrCapabilityId == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId.fromJson(
              (l$updateMstrCapabilityByMstrCapabilityId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId?
  updateMstrCapabilityByMstrCapabilityId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrCapabilityByMstrCapabilityId =
        updateMstrCapabilityByMstrCapabilityId;
    _resultData['updateMstrCapabilityByMstrCapabilityId'] =
        l$updateMstrCapabilityByMstrCapabilityId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrCapabilityByMstrCapabilityId =
        updateMstrCapabilityByMstrCapabilityId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrCapabilityByMstrCapabilityId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CapabilityPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrCapabilityByMstrCapabilityId =
        updateMstrCapabilityByMstrCapabilityId;
    final lOther$updateMstrCapabilityByMstrCapabilityId =
        other.updateMstrCapabilityByMstrCapabilityId;
    if (l$updateMstrCapabilityByMstrCapabilityId !=
        lOther$updateMstrCapabilityByMstrCapabilityId) {
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

extension UtilityExtension$Mutation$CapabilityPageEdit
    on Mutation$CapabilityPageEdit {
  CopyWith$Mutation$CapabilityPageEdit<Mutation$CapabilityPageEdit>
  get copyWith => CopyWith$Mutation$CapabilityPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$CapabilityPageEdit<TRes> {
  factory CopyWith$Mutation$CapabilityPageEdit(
    Mutation$CapabilityPageEdit instance,
    TRes Function(Mutation$CapabilityPageEdit) then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit;

  factory CopyWith$Mutation$CapabilityPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CapabilityPageEdit;

  TRes call({
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId?
    updateMstrCapabilityByMstrCapabilityId,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
    TRes
  >
  get updateMstrCapabilityByMstrCapabilityId;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit<TRes>
    implements CopyWith$Mutation$CapabilityPageEdit<TRes> {
  _CopyWithImpl$Mutation$CapabilityPageEdit(this._instance, this._then);

  final Mutation$CapabilityPageEdit _instance;

  final TRes Function(Mutation$CapabilityPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrCapabilityByMstrCapabilityId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit(
      updateMstrCapabilityByMstrCapabilityId:
          updateMstrCapabilityByMstrCapabilityId == _undefined
          ? _instance.updateMstrCapabilityByMstrCapabilityId
          : (updateMstrCapabilityByMstrCapabilityId
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
    TRes
  >
  get updateMstrCapabilityByMstrCapabilityId {
    final local$updateMstrCapabilityByMstrCapabilityId =
        _instance.updateMstrCapabilityByMstrCapabilityId;
    return local$updateMstrCapabilityByMstrCapabilityId == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
            local$updateMstrCapabilityByMstrCapabilityId,
            (e) => call(updateMstrCapabilityByMstrCapabilityId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit<TRes>
    implements CopyWith$Mutation$CapabilityPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit(this._res);

  TRes _res;

  call({
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId?
    updateMstrCapabilityByMstrCapabilityId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
    TRes
  >
  get updateMstrCapabilityByMstrCapabilityId =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId.stub(
        _res,
      );
}

const documentNodeMutationCapabilityPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CapabilityPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrCapabilityId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
          variable: VariableNode(name: NameNode(value: 'referenceValue')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'max')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'min')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'step')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
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
            name: NameNode(value: 'updateMstrCapabilityByMstrCapabilityId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrCapabilityId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrCapabilityId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrCapabilityPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'detail'),
                            value: VariableNode(
                              name: NameNode(value: 'detail'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'referenceValue'),
                            value: VariableNode(
                              name: NameNode(value: 'referenceValue'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'max'),
                            value: VariableNode(name: NameNode(value: 'max')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'min'),
                            value: VariableNode(name: NameNode(value: 'min')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'step'),
                            value: VariableNode(name: NameNode(value: 'step')),
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
                  name: NameNode(value: 'mstrCapability'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrCapabilityId'),
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
                        name: NameNode(value: 'detail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'referenceValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'max'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'min'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'step'),
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
Mutation$CapabilityPageEdit _parserFn$Mutation$CapabilityPageEdit(
  Map<String, dynamic> data,
) => Mutation$CapabilityPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$CapabilityPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$CapabilityPageEdit?,
    );

class Options$Mutation$CapabilityPageEdit
    extends graphql.MutationOptions<Mutation$CapabilityPageEdit> {
  Options$Mutation$CapabilityPageEdit({
    String? operationName,
    required Variables$Mutation$CapabilityPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CapabilityPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CapabilityPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$CapabilityPageEdit>? update,
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
                     : _parserFn$Mutation$CapabilityPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCapabilityPageEdit,
         parserFn: _parserFn$Mutation$CapabilityPageEdit,
       );

  final OnMutationCompleted$Mutation$CapabilityPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CapabilityPageEdit
    extends graphql.WatchQueryOptions<Mutation$CapabilityPageEdit> {
  WatchOptions$Mutation$CapabilityPageEdit({
    String? operationName,
    required Variables$Mutation$CapabilityPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CapabilityPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationCapabilityPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CapabilityPageEdit,
       );
}

extension ClientExtension$Mutation$CapabilityPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CapabilityPageEdit>>
  mutate$CapabilityPageEdit(
    Options$Mutation$CapabilityPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CapabilityPageEdit>
  watchMutation$CapabilityPageEdit(
    WatchOptions$Mutation$CapabilityPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$CapabilityPageEdit$HookResult {
  Mutation$CapabilityPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$CapabilityPageEdit runMutation;

  final graphql.QueryResult<Mutation$CapabilityPageEdit> result;
}

Mutation$CapabilityPageEdit$HookResult useMutation$CapabilityPageEdit([
  WidgetOptions$Mutation$CapabilityPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$CapabilityPageEdit(),
  );
  return Mutation$CapabilityPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CapabilityPageEdit>
useWatchMutation$CapabilityPageEdit(
  WatchOptions$Mutation$CapabilityPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CapabilityPageEdit
    extends graphql.MutationOptions<Mutation$CapabilityPageEdit> {
  WidgetOptions$Mutation$CapabilityPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CapabilityPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CapabilityPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$CapabilityPageEdit>? update,
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
                     : _parserFn$Mutation$CapabilityPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCapabilityPageEdit,
         parserFn: _parserFn$Mutation$CapabilityPageEdit,
       );

  final OnMutationCompleted$Mutation$CapabilityPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$CapabilityPageEdit =
    graphql.MultiSourceResult<Mutation$CapabilityPageEdit> Function(
      Variables$Mutation$CapabilityPageEdit, {
      Object? optimisticResult,
      Mutation$CapabilityPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$CapabilityPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$CapabilityPageEdit,
      graphql.QueryResult<Mutation$CapabilityPageEdit>?,
    );

class Mutation$CapabilityPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$CapabilityPageEdit> {
  Mutation$CapabilityPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CapabilityPageEdit? options,
    required Builder$Mutation$CapabilityPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$CapabilityPageEdit(),
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

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId({
    this.mstrCapability,
    this.$__typename = 'UpdateMstrCapabilityPayload',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapability = json['mstrCapability'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
      mstrCapability: l$mstrCapability == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.fromJson(
              (l$mstrCapability as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability?
  mstrCapability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapability = mstrCapability;
    _resultData['mstrCapability'] = l$mstrCapability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrCapability = mstrCapability;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrCapability, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapability = mstrCapability;
    final lOther$mstrCapability = other.mstrCapability;
    if (l$mstrCapability != lOther$mstrCapability) {
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId
    on Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId;

  TRes call({
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability?
    mstrCapability,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
    TRes
  >
  get mstrCapability;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapability = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
      mstrCapability: mstrCapability == _undefined
          ? _instance.mstrCapability
          : (mstrCapability
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
    TRes
  >
  get mstrCapability {
    final local$mstrCapability = _instance.mstrCapability;
    return local$mstrCapability == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
            local$mstrCapability,
            (e) => call(mstrCapability: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability?
    mstrCapability,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
    TRes
  >
  get mstrCapability =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability({
    required this.mstrCapabilityId,
    required this.code,
    this.detail,
    required this.referenceValue,
    this.max,
    this.min,
    this.step,
    this.remarks,
    this.labels,
    this.$__typename = 'MstrCapability',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$referenceValue = json['referenceValue'];
    final l$max = json['max'];
    final l$min = json['min'];
    final l$step = json['step'];
    final l$remarks = json['remarks'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
      mstrCapabilityId: (l$mstrCapabilityId as String),
      code: (l$code as String),
      detail: (l$detail as String?),
      referenceValue: (l$referenceValue as String),
      max: (l$max as String?),
      min: (l$min as String?),
      step: (l$step as String?),
      remarks: (l$remarks as String?),
      labels: l$labels == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrCapabilityId;

  final String code;

  final String? detail;

  final String referenceValue;

  final String? max;

  final String? min;

  final String? step;

  final String? remarks;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$referenceValue = referenceValue;
    _resultData['referenceValue'] = l$referenceValue;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$step = step;
    _resultData['step'] = l$step;
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$code = code;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
    final l$remarks = remarks;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$code,
      l$detail,
      l$referenceValue,
      l$max,
      l$min,
      l$step,
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$referenceValue = referenceValue;
    final lOther$referenceValue = other.referenceValue;
    if (l$referenceValue != lOther$referenceValue) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (l$step != lOther$step) {
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability;

  TRes call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? remarks,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? referenceValue = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? step = _undefined,
    Object? remarks = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
      mstrCapabilityId:
          mstrCapabilityId == _undefined || mstrCapabilityId == null
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      referenceValue: referenceValue == _undefined || referenceValue == null
          ? _instance.referenceValue
          : (referenceValue as String),
      max: max == _undefined ? _instance.max : (max as String?),
      min: min == _undefined ? _instance.min : (min as String?),
      step: step == _undefined ? _instance.step : (step as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability(
    this._res,
  );

  TRes _res;

  call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? remarks,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels.fromJson(
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
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels,
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
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CapabilityPageEdit$updateMstrCapabilityByMstrCapabilityId$mstrCapability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
