import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TaskPageEdit {
  factory Variables$Mutation$TaskPageEdit({
    required String mstrTaskId,
    String? mstrTaskGroupId,
    String? code,
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
    required String detailTextsSharedTextId,
    required String detailTextsJa,
    required String detailTextsEn,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
  }) => Variables$Mutation$TaskPageEdit._({
    r'mstrTaskId': mstrTaskId,
    if (mstrTaskGroupId != null) r'mstrTaskGroupId': mstrTaskGroupId,
    if (code != null) r'code': code,
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
    r'detailTextsSharedTextId': detailTextsSharedTextId,
    r'detailTextsJa': detailTextsJa,
    r'detailTextsEn': detailTextsEn,
    if ($class != null) r'class': $class,
    if (defaultTime != null) r'defaultTime': defaultTime,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$TaskPageEdit._(this._$data);

  factory Variables$Mutation$TaskPageEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskId = data['mstrTaskId'];
    result$data['mstrTaskId'] = (l$mstrTaskId as String);
    if (data.containsKey('mstrTaskGroupId')) {
      final l$mstrTaskGroupId = data['mstrTaskGroupId'];
      result$data['mstrTaskGroupId'] = (l$mstrTaskGroupId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
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
    final l$detailTextsSharedTextId = data['detailTextsSharedTextId'];
    result$data['detailTextsSharedTextId'] =
        (l$detailTextsSharedTextId as String);
    final l$detailTextsJa = data['detailTextsJa'];
    result$data['detailTextsJa'] = (l$detailTextsJa as String);
    final l$detailTextsEn = data['detailTextsEn'];
    result$data['detailTextsEn'] = (l$detailTextsEn as String);
    if (data.containsKey('class')) {
      final l$$class = data['class'];
      result$data['class'] = (l$$class as int?);
    }
    if (data.containsKey('defaultTime')) {
      final l$defaultTime = data['defaultTime'];
      result$data['defaultTime'] = l$defaultTime == null
          ? null
          : Input$IntervalInput.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$TaskPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskId => (_$data['mstrTaskId'] as String);

  String? get mstrTaskGroupId => (_$data['mstrTaskGroupId'] as String?);

  String? get code => (_$data['code'] as String?);

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

  String get detailTextsSharedTextId =>
      (_$data['detailTextsSharedTextId'] as String);

  String get detailTextsJa => (_$data['detailTextsJa'] as String);

  String get detailTextsEn => (_$data['detailTextsEn'] as String);

  int? get $class => (_$data['class'] as int?);

  Input$IntervalInput? get defaultTime =>
      (_$data['defaultTime'] as Input$IntervalInput?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    result$data['mstrTaskId'] = l$mstrTaskId;
    if (_$data.containsKey('mstrTaskGroupId')) {
      final l$mstrTaskGroupId = mstrTaskGroupId;
      result$data['mstrTaskGroupId'] = l$mstrTaskGroupId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
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
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    result$data['detailTextsSharedTextId'] = l$detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    result$data['detailTextsJa'] = l$detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    result$data['detailTextsEn'] = l$detailTextsEn;
    if (_$data.containsKey('class')) {
      final l$$class = $class;
      result$data['class'] = l$$class;
    }
    if (_$data.containsKey('defaultTime')) {
      final l$defaultTime = defaultTime;
      result$data['defaultTime'] = l$defaultTime?.toJson();
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$TaskPageEdit<Variables$Mutation$TaskPageEdit>
  get copyWith => CopyWith$Variables$Mutation$TaskPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TaskPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (_$data.containsKey('mstrTaskGroupId') !=
        other._$data.containsKey('mstrTaskGroupId')) {
      return false;
    }
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
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
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final lOther$detailTextsSharedTextId = other.detailTextsSharedTextId;
    if (l$detailTextsSharedTextId != lOther$detailTextsSharedTextId) {
      return false;
    }
    final l$detailTextsJa = detailTextsJa;
    final lOther$detailTextsJa = other.detailTextsJa;
    if (l$detailTextsJa != lOther$detailTextsJa) {
      return false;
    }
    final l$detailTextsEn = detailTextsEn;
    final lOther$detailTextsEn = other.detailTextsEn;
    if (l$detailTextsEn != lOther$detailTextsEn) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (_$data.containsKey('class') != other._$data.containsKey('class')) {
      return false;
    }
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$defaultTime = defaultTime;
    final lOther$defaultTime = other.defaultTime;
    if (_$data.containsKey('defaultTime') !=
        other._$data.containsKey('defaultTime')) {
      return false;
    }
    if (l$defaultTime != lOther$defaultTime) {
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
    final l$mstrTaskId = mstrTaskId;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
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
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final l$detailTextsJa = detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrTaskId,
      _$data.containsKey('mstrTaskGroupId') ? l$mstrTaskGroupId : const {},
      _$data.containsKey('code') ? l$code : const {},
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
      l$detailTextsSharedTextId,
      l$detailTextsJa,
      l$detailTextsEn,
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('defaultTime') ? l$defaultTime : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TaskPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$TaskPageEdit(
    Variables$Mutation$TaskPageEdit instance,
    TRes Function(Variables$Mutation$TaskPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$TaskPageEdit;

  factory CopyWith$Variables$Mutation$TaskPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TaskPageEdit;

  TRes call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    String? code,
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
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$TaskPageEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$TaskPageEdit(this._instance, this._then);

  final Variables$Mutation$TaskPageEdit _instance;

  final TRes Function(Variables$Mutation$TaskPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
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
    Object? detailTextsSharedTextId = _undefined,
    Object? detailTextsJa = _undefined,
    Object? detailTextsEn = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$TaskPageEdit._({
      ..._instance._$data,
      if (mstrTaskId != _undefined && mstrTaskId != null)
        'mstrTaskId': (mstrTaskId as String),
      if (mstrTaskGroupId != _undefined)
        'mstrTaskGroupId': (mstrTaskGroupId as String?),
      if (code != _undefined) 'code': (code as String?),
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
      if (detailTextsSharedTextId != _undefined &&
          detailTextsSharedTextId != null)
        'detailTextsSharedTextId': (detailTextsSharedTextId as String),
      if (detailTextsJa != _undefined && detailTextsJa != null)
        'detailTextsJa': (detailTextsJa as String),
      if (detailTextsEn != _undefined && detailTextsEn != null)
        'detailTextsEn': (detailTextsEn as String),
      if ($class != _undefined) 'class': ($class as int?),
      if (defaultTime != _undefined)
        'defaultTime': (defaultTime as Input$IntervalInput?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$TaskPageEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TaskPageEdit(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    String? code,
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
    String? detailTextsSharedTextId,
    String? detailTextsJa,
    String? detailTextsEn,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
  }) => _res;
}

class Mutation$TaskPageEdit {
  Mutation$TaskPageEdit({
    this.updateMstrTaskByMstrTaskId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TaskPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrTaskByMstrTaskId = json['updateMstrTaskByMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit(
      updateMstrTaskByMstrTaskId: l$updateMstrTaskByMstrTaskId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId.fromJson(
              (l$updateMstrTaskByMstrTaskId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId?
  updateMstrTaskByMstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrTaskByMstrTaskId = updateMstrTaskByMstrTaskId;
    _resultData['updateMstrTaskByMstrTaskId'] = l$updateMstrTaskByMstrTaskId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrTaskByMstrTaskId = updateMstrTaskByMstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMstrTaskByMstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskPageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrTaskByMstrTaskId = updateMstrTaskByMstrTaskId;
    final lOther$updateMstrTaskByMstrTaskId = other.updateMstrTaskByMstrTaskId;
    if (l$updateMstrTaskByMstrTaskId != lOther$updateMstrTaskByMstrTaskId) {
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

extension UtilityExtension$Mutation$TaskPageEdit on Mutation$TaskPageEdit {
  CopyWith$Mutation$TaskPageEdit<Mutation$TaskPageEdit> get copyWith =>
      CopyWith$Mutation$TaskPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskPageEdit<TRes> {
  factory CopyWith$Mutation$TaskPageEdit(
    Mutation$TaskPageEdit instance,
    TRes Function(Mutation$TaskPageEdit) then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit;

  factory CopyWith$Mutation$TaskPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TaskPageEdit;

  TRes call({
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId?
    updateMstrTaskByMstrTaskId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId;
}

class _CopyWithImpl$Mutation$TaskPageEdit<TRes>
    implements CopyWith$Mutation$TaskPageEdit<TRes> {
  _CopyWithImpl$Mutation$TaskPageEdit(this._instance, this._then);

  final Mutation$TaskPageEdit _instance;

  final TRes Function(Mutation$TaskPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrTaskByMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit(
      updateMstrTaskByMstrTaskId: updateMstrTaskByMstrTaskId == _undefined
          ? _instance.updateMstrTaskByMstrTaskId
          : (updateMstrTaskByMstrTaskId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId {
    final local$updateMstrTaskByMstrTaskId =
        _instance.updateMstrTaskByMstrTaskId;
    return local$updateMstrTaskByMstrTaskId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(
            local$updateMstrTaskByMstrTaskId,
            (e) => call(updateMstrTaskByMstrTaskId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit<TRes>
    implements CopyWith$Mutation$TaskPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$TaskPageEdit(this._res);

  TRes _res;

  call({
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId?
    updateMstrTaskByMstrTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId.stub(_res);
}

const documentNodeMutationTaskPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TaskPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskGroupId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
          variable: VariableNode(
            name: NameNode(value: 'detailTextsSharedTextId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailTextsJa')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailTextsEn')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'class')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'defaultTime')),
          type: NamedTypeNode(
            name: NameNode(value: 'IntervalInput'),
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
            name: NameNode(value: 'updateMstrTaskByMstrTaskId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskId'),
                      value: VariableNode(name: NameNode(value: 'mstrTaskId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrTaskGroupId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrTaskGroupId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
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
                            name: NameNode(value: 'sharedTextToDetails'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'updateBySharedTextId'),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'sharedTextId'),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'detailTextsSharedTextId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedTextPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedTextValuesUsingSharedTextId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value: 'deleteOthers',
                                                    ),
                                                    value: BooleanValueNode(
                                                      value: true,
                                                    ),
                                                  ),
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value: 'create',
                                                    ),
                                                    value: ListValueNode(
                                                      values: [
                                                        ObjectValueNode(
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
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value: VariableNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'detailTextsJa',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        ObjectValueNode(
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
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value: VariableNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'detailTextsEn',
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
                            name: NameNode(value: 'class'),
                            value: VariableNode(name: NameNode(value: 'class')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'defaultTime'),
                            value: VariableNode(
                              name: NameNode(value: 'defaultTime'),
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
                  name: NameNode(value: 'mstrTask'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrTaskId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrTaskGroupId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrTaskGroupByMstrTaskGroupId'),
                        alias: NameNode(value: 'groups'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrTaskGroupId'),
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
                              name: NameNode(value: 'sharedAppellationByNames'),
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
                                            value: 'sharedDictionaryId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                name: NameNode(value: 'nodes'),
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
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                name: NameNode(value: 'nodes'),
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
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                name: NameNode(value: 'nodes'),
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
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                name: NameNode(value: 'nodes'),
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
                              name: NameNode(value: 'details'),
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
                              name: NameNode(value: 'remarks'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'updateAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'remove'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                              ),
                              alias: NameNode(value: 'update_user'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'historyId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
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
                                    name: NameNode(
                                      value: 'sharedAppellationByNames',
                                    ),
                                    alias: NameNode(value: 'name'),
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
                                                  value: 'sharedDictionaryId',
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
                                                alias: NameNode(value: 'ja'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                                  value: 'sharedDictionaryId',
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
                                                alias: NameNode(value: 'ja'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                                  value: 'sharedDictionaryId',
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
                                                alias: NameNode(value: 'ja'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
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
                                                            directives: [],
                                                            selectionSet: null,
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
                                    name: NameNode(value: 'symbol'),
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
                        name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'sharedTextByDetails'),
                        alias: NameNode(value: 'detailTexts'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedTextId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedTextValuesBySharedTextId',
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
                                          name: NameNode(value: 'textValue'),
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
                              name: NameNode(
                                value: 'sharedTextValuesBySharedTextId',
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
                                          name: NameNode(value: 'textValue'),
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
                        name: NameNode(value: 'class'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'seconds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'minutes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'hours'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'days'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'months'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'years'),
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
Mutation$TaskPageEdit _parserFn$Mutation$TaskPageEdit(
  Map<String, dynamic> data,
) => Mutation$TaskPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$TaskPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$TaskPageEdit?);

class Options$Mutation$TaskPageEdit
    extends graphql.MutationOptions<Mutation$TaskPageEdit> {
  Options$Mutation$TaskPageEdit({
    String? operationName,
    required Variables$Mutation$TaskPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskPageEdit,
         parserFn: _parserFn$Mutation$TaskPageEdit,
       );

  final OnMutationCompleted$Mutation$TaskPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$TaskPageEdit
    extends graphql.WatchQueryOptions<Mutation$TaskPageEdit> {
  WatchOptions$Mutation$TaskPageEdit({
    String? operationName,
    required Variables$Mutation$TaskPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationTaskPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$TaskPageEdit,
       );
}

extension ClientExtension$Mutation$TaskPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TaskPageEdit>> mutate$TaskPageEdit(
    Options$Mutation$TaskPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$TaskPageEdit> watchMutation$TaskPageEdit(
    WatchOptions$Mutation$TaskPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$TaskPageEdit$HookResult {
  Mutation$TaskPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$TaskPageEdit runMutation;

  final graphql.QueryResult<Mutation$TaskPageEdit> result;
}

Mutation$TaskPageEdit$HookResult useMutation$TaskPageEdit([
  WidgetOptions$Mutation$TaskPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$TaskPageEdit(),
  );
  return Mutation$TaskPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TaskPageEdit> useWatchMutation$TaskPageEdit(
  WatchOptions$Mutation$TaskPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TaskPageEdit
    extends graphql.MutationOptions<Mutation$TaskPageEdit> {
  WidgetOptions$Mutation$TaskPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskPageEdit,
         parserFn: _parserFn$Mutation$TaskPageEdit,
       );

  final OnMutationCompleted$Mutation$TaskPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$TaskPageEdit =
    graphql.MultiSourceResult<Mutation$TaskPageEdit> Function(
      Variables$Mutation$TaskPageEdit, {
      Object? optimisticResult,
      Mutation$TaskPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$TaskPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$TaskPageEdit,
      graphql.QueryResult<Mutation$TaskPageEdit>?,
    );

class Mutation$TaskPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$TaskPageEdit> {
  Mutation$TaskPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TaskPageEdit? options,
    required Builder$Mutation$TaskPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$TaskPageEdit(),
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

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId({
    this.mstrTask,
    this.$__typename = 'UpdateMstrTaskPayload',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTask = json['mstrTask'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(
      mstrTask: l$mstrTask == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask.fromJson(
              (l$mstrTask as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTask = mstrTask;
    _resultData['mstrTask'] = l$mstrTask?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTask = mstrTask;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTask, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTask = mstrTask;
    final lOther$mstrTask = other.mstrTask;
    if (l$mstrTask != lOther$mstrTask) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId instance,
    TRes Function(Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId) then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId;

  TRes call({
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes>
    implements CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes> {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId _instance;

  final TRes Function(Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTask = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(
      mstrTask: mstrTask == _undefined
          ? _instance.mstrTask
          : (mstrTask
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask {
    final local$mstrTask = _instance.mstrTask;
    return local$mstrTask == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
            local$mstrTask,
            (e) => call(mstrTask: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes>
    implements CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId<TRes> {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId(this._res);

  TRes _res;

  call({
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask({
    required this.mstrTaskId,
    this.mstrTaskGroupId,
    this.groups,
    required this.code,
    this.labels,
    this.detailTexts,
    this.$class,
    this.defaultTime,
    this.remarks,
    this.$__typename = 'MstrTask',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$groups = json['groups'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$detailTexts = json['detailTexts'];
    final l$$class = json['class'];
    final l$defaultTime = json['defaultTime'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
      mstrTaskId: (l$mstrTaskId as String),
      mstrTaskGroupId: (l$mstrTaskGroupId as String?),
      groups: l$groups == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups.fromJson(
              (l$groups as Map<String, dynamic>),
            ),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final String? mstrTaskGroupId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups?
  groups;

  final String code;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels?
  labels;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts?
  detailTexts;

  final int? $class;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
  defaultTime;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$groups = groups;
    _resultData['groups'] = l$groups?.toJson();
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$defaultTime = defaultTime;
    _resultData['defaultTime'] = l$defaultTime?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$groups = groups;
    final l$code = code;
    final l$labels = labels;
    final l$detailTexts = detailTexts;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskId,
      l$mstrTaskGroupId,
      l$groups,
      l$code,
      l$labels,
      l$detailTexts,
      l$$class,
      l$defaultTime,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$defaultTime = defaultTime;
    final lOther$defaultTime = other.defaultTime;
    if (l$defaultTime != lOther$defaultTime) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask instance,
    TRes Function(Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask)
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask;

  TRes call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups? groups,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels? labels,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts?
    detailTexts,
    int? $class,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
    defaultTime,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
    TRes
  >
  get groups;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
    TRes
  >
  get detailTexts;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask _instance;

  final TRes Function(Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? mstrTaskGroupId = _undefined,
    Object? groups = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? detailTexts = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      mstrTaskGroupId: mstrTaskGroupId == _undefined
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
    TRes
  >
  get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups? groups,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels? labels,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts?
    detailTexts,
    int? $class,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
    defaultTime,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
    TRes
  >
  get groups =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups({
    required this.mstrTaskGroupId,
    required this.code,
    this.labels,
    this.details,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrTaskGroup',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$details = json['details'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      details: (l$details as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels?
  labels;

  final String? details;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$details = details;
    _resultData['details'] = l$details;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
    final l$labels = labels;
    final l$details = details;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskGroupId,
      l$code,
      l$labels,
      l$details,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$update_user = update_user;
    final lOther$update_user = other.update_user;
    if (l$update_user != lOther$update_user) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels?
    labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? details = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels?),
      details: details == _undefined ? _instance.details : (details as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels?
    labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels.fromJson(
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
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels,
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
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user({
    required this.historyId,
    required this.infoStaffId,
    required this.infoCompanyId,
    this.code,
    this.name,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String infoCompanyId;

  final String? code;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name?
  name;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$name = name;
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$name,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name.fromJson(
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
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name,
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
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels.fromJson(
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
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels,
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
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja
  ja;

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedTextId = sharedTextId;
    _resultData['sharedTextId'] = l$sharedTextId;
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
    final l$sharedTextId = sharedTextId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedTextId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedTextId = sharedTextId;
    final lOther$sharedTextId = other.sharedTextId;
    if (l$sharedTextId != lOther$sharedTextId) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts;

  TRes call({
    String? sharedTextId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja?
    ja,
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en.stub(
        _res,
      );
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
      textValue: (l$textValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? textValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textValue = textValue;
    _resultData['textValue'] = l$textValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textValue = textValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$textValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$textValue = textValue;
    final lOther$textValue = other.textValue;
    if (l$textValue != lOther$textValue) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
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
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en ||
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en;

  TRes call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
          Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
      textValue: (l$textValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? textValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textValue = textValue;
    _resultData['textValue'] = l$textValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textValue = textValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$textValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$textValue = textValue;
    final lOther$textValue = other.textValue;
    if (l$textValue != lOther$textValue) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime {
  Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
      seconds: (l$seconds as num?)?.toDouble(),
      minutes: (l$minutes as int?),
      hours: (l$hours as int?),
      days: (l$days as int?),
      months: (l$months as int?),
      years: (l$years as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? seconds;

  final int? minutes;

  final int? hours;

  final int? days;

  final int? months;

  final int? years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$years = years;
    _resultData['years'] = l$years;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seconds = seconds;
    final l$minutes = minutes;
    final l$hours = hours;
    final l$days = days;
    final l$months = months;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seconds,
      l$minutes,
      l$hours,
      l$days,
      l$months,
      l$years,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
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

extension UtilityExtension$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
    on Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime {
  CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
  >
  get copyWith =>
      CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
> {
  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
    instance,
    TRes Function(
      Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime;

  factory CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime;

  TRes call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
    this._instance,
    this._then,
  );

  final Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
  _instance;

  final TRes Function(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seconds = _undefined,
    Object? minutes = _undefined,
    Object? hours = _undefined,
    Object? days = _undefined,
    Object? months = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      years: years == _undefined ? _instance.years : (years as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
>
    implements
        CopyWith$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskPageEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
    this._res,
  );

  TRes _res;

  call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  }) => _res;
}
