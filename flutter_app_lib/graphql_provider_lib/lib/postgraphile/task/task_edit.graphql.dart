import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TaskEdit {
  factory Variables$Mutation$TaskEdit({
    required String mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
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
  }) => Variables$Mutation$TaskEdit._({
    r'mstrTaskId': mstrTaskId,
    if (code != null) r'code': code,
    if (mstrTaskGroupId != null) r'mstrTaskGroupId': mstrTaskGroupId,
    if (detail != null) r'detail': detail,
    if ($class != null) r'class': $class,
    if (defaultTime != null) r'defaultTime': defaultTime,
    if (remarks != null) r'remarks': remarks,
    if (mstrTaskTreeId != null) r'mstrTaskTreeId': mstrTaskTreeId,
    if (parentMstrTaskId != null) r'parentMstrTaskId': parentMstrTaskId,
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

  Variables$Mutation$TaskEdit._(this._$data);

  factory Variables$Mutation$TaskEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskId = data['mstrTaskId'];
    result$data['mstrTaskId'] = (l$mstrTaskId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('mstrTaskGroupId')) {
      final l$mstrTaskGroupId = data['mstrTaskGroupId'];
      result$data['mstrTaskGroupId'] = (l$mstrTaskGroupId as String?);
    }
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = (l$detail as String?);
    }
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
    if (data.containsKey('mstrTaskTreeId')) {
      final l$mstrTaskTreeId = data['mstrTaskTreeId'];
      result$data['mstrTaskTreeId'] = (l$mstrTaskTreeId as String?);
    }
    if (data.containsKey('parentMstrTaskId')) {
      final l$parentMstrTaskId = data['parentMstrTaskId'];
      result$data['parentMstrTaskId'] = (l$parentMstrTaskId as String?);
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
    return Variables$Mutation$TaskEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskId => (_$data['mstrTaskId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get mstrTaskGroupId => (_$data['mstrTaskGroupId'] as String?);

  String? get detail => (_$data['detail'] as String?);

  int? get $class => (_$data['class'] as int?);

  Input$IntervalInput? get defaultTime =>
      (_$data['defaultTime'] as Input$IntervalInput?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get mstrTaskTreeId => (_$data['mstrTaskTreeId'] as String?);

  String? get parentMstrTaskId => (_$data['parentMstrTaskId'] as String?);

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
    final l$mstrTaskId = mstrTaskId;
    result$data['mstrTaskId'] = l$mstrTaskId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('mstrTaskGroupId')) {
      final l$mstrTaskGroupId = mstrTaskGroupId;
      result$data['mstrTaskGroupId'] = l$mstrTaskGroupId;
    }
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail;
    }
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
    if (_$data.containsKey('mstrTaskTreeId')) {
      final l$mstrTaskTreeId = mstrTaskTreeId;
      result$data['mstrTaskTreeId'] = l$mstrTaskTreeId;
    }
    if (_$data.containsKey('parentMstrTaskId')) {
      final l$parentMstrTaskId = parentMstrTaskId;
      result$data['parentMstrTaskId'] = l$parentMstrTaskId;
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

  CopyWith$Variables$Mutation$TaskEdit<Variables$Mutation$TaskEdit>
  get copyWith => CopyWith$Variables$Mutation$TaskEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TaskEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (_$data.containsKey('mstrTaskGroupId') !=
        other._$data.containsKey('mstrTaskGroupId')) {
      return false;
    }
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
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
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final lOther$mstrTaskTreeId = other.mstrTaskTreeId;
    if (_$data.containsKey('mstrTaskTreeId') !=
        other._$data.containsKey('mstrTaskTreeId')) {
      return false;
    }
    if (l$mstrTaskTreeId != lOther$mstrTaskTreeId) {
      return false;
    }
    final l$parentMstrTaskId = parentMstrTaskId;
    final lOther$parentMstrTaskId = other.parentMstrTaskId;
    if (_$data.containsKey('parentMstrTaskId') !=
        other._$data.containsKey('parentMstrTaskId')) {
      return false;
    }
    if (l$parentMstrTaskId != lOther$parentMstrTaskId) {
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
    final l$mstrTaskId = mstrTaskId;
    final l$code = code;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$detail = detail;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$remarks = remarks;
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
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
      l$mstrTaskId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('mstrTaskGroupId') ? l$mstrTaskGroupId : const {},
      _$data.containsKey('detail') ? l$detail : const {},
      _$data.containsKey('class') ? l$$class : const {},
      _$data.containsKey('defaultTime') ? l$defaultTime : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('mstrTaskTreeId') ? l$mstrTaskTreeId : const {},
      _$data.containsKey('parentMstrTaskId') ? l$parentMstrTaskId : const {},
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

abstract class CopyWith$Variables$Mutation$TaskEdit<TRes> {
  factory CopyWith$Variables$Mutation$TaskEdit(
    Variables$Mutation$TaskEdit instance,
    TRes Function(Variables$Mutation$TaskEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$TaskEdit;

  factory CopyWith$Variables$Mutation$TaskEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TaskEdit;

  TRes call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
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

class _CopyWithImpl$Variables$Mutation$TaskEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$TaskEdit(this._instance, this._then);

  final Variables$Mutation$TaskEdit _instance;

  final TRes Function(Variables$Mutation$TaskEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? code = _undefined,
    Object? mstrTaskGroupId = _undefined,
    Object? detail = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? remarks = _undefined,
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
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
    Variables$Mutation$TaskEdit._({
      ..._instance._$data,
      if (mstrTaskId != _undefined && mstrTaskId != null)
        'mstrTaskId': (mstrTaskId as String),
      if (code != _undefined) 'code': (code as String?),
      if (mstrTaskGroupId != _undefined)
        'mstrTaskGroupId': (mstrTaskGroupId as String?),
      if (detail != _undefined) 'detail': (detail as String?),
      if ($class != _undefined) 'class': ($class as int?),
      if (defaultTime != _undefined)
        'defaultTime': (defaultTime as Input$IntervalInput?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (mstrTaskTreeId != _undefined)
        'mstrTaskTreeId': (mstrTaskTreeId as String?),
      if (parentMstrTaskId != _undefined)
        'parentMstrTaskId': (parentMstrTaskId as String?),
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

class _CopyWithStubImpl$Variables$Mutation$TaskEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TaskEdit(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Input$IntervalInput? defaultTime,
    String? remarks,
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
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

class Mutation$TaskEdit {
  Mutation$TaskEdit({
    this.updateMstrTaskByMstrTaskId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TaskEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrTaskByMstrTaskId = json['updateMstrTaskByMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit(
      updateMstrTaskByMstrTaskId: l$updateMstrTaskByMstrTaskId == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId.fromJson(
              (l$updateMstrTaskByMstrTaskId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId?
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
    if (other is! Mutation$TaskEdit || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$TaskEdit on Mutation$TaskEdit {
  CopyWith$Mutation$TaskEdit<Mutation$TaskEdit> get copyWith =>
      CopyWith$Mutation$TaskEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskEdit<TRes> {
  factory CopyWith$Mutation$TaskEdit(
    Mutation$TaskEdit instance,
    TRes Function(Mutation$TaskEdit) then,
  ) = _CopyWithImpl$Mutation$TaskEdit;

  factory CopyWith$Mutation$TaskEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TaskEdit;

  TRes call({
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId? updateMstrTaskByMstrTaskId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId;
}

class _CopyWithImpl$Mutation$TaskEdit<TRes>
    implements CopyWith$Mutation$TaskEdit<TRes> {
  _CopyWithImpl$Mutation$TaskEdit(this._instance, this._then);

  final Mutation$TaskEdit _instance;

  final TRes Function(Mutation$TaskEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrTaskByMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit(
      updateMstrTaskByMstrTaskId: updateMstrTaskByMstrTaskId == _undefined
          ? _instance.updateMstrTaskByMstrTaskId
          : (updateMstrTaskByMstrTaskId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId {
    final local$updateMstrTaskByMstrTaskId =
        _instance.updateMstrTaskByMstrTaskId;
    return local$updateMstrTaskByMstrTaskId == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId(
            local$updateMstrTaskByMstrTaskId,
            (e) => call(updateMstrTaskByMstrTaskId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskEdit<TRes>
    implements CopyWith$Mutation$TaskEdit<TRes> {
  _CopyWithStubImpl$Mutation$TaskEdit(this._res);

  TRes _res;

  call({
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId? updateMstrTaskByMstrTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes>
  get updateMstrTaskByMstrTaskId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId.stub(_res);
}

const documentNodeMutationTaskEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TaskEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskId')),
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
          variable: VariableNode(name: NameNode(value: 'mstrTaskGroupId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'parentMstrTaskId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrTaskGroupId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrTaskGroupId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'detail'),
                            value: VariableNode(
                              name: NameNode(value: 'detail'),
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
                          ObjectFieldNode(
                            name: NameNode(
                              value: 'mstrTaskTreesToMstrTaskIdUsingMstrTaskId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateByMstrTaskTreeId',
                                  ),
                                  value: ListValueNode(
                                    values: [
                                      ObjectValueNode(
                                        fields: [
                                          ObjectFieldNode(
                                            name: NameNode(
                                              value: 'mstrTaskTreeId',
                                            ),
                                            value: VariableNode(
                                              name: NameNode(
                                                value: 'mstrTaskTreeId',
                                              ),
                                            ),
                                          ),
                                          ObjectFieldNode(
                                            name: NameNode(
                                              value: 'mstrTaskTreePatch',
                                            ),
                                            value: ObjectValueNode(
                                              fields: [
                                                ObjectFieldNode(
                                                  name: NameNode(
                                                    value: 'parentMstrTaskId',
                                                  ),
                                                  value: VariableNode(
                                                    name: NameNode(
                                                      value: 'parentMstrTaskId',
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                        name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'detail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                        name: NameNode(value: 'mstrTaskTreesByMstrTaskId'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'first'),
                            value: IntValueNode(value: '1'),
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
                                    name: NameNode(value: 'mstrTaskTreeId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'parentMstrTaskId'),
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
                        name: NameNode(value: 'mstrTaskLocationsByMstrTaskId'),
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
                                    name: NameNode(value: 'mstrTaskLocationId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrLocationId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrEquipmentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrStakeholderId'),
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
Mutation$TaskEdit _parserFn$Mutation$TaskEdit(Map<String, dynamic> data) =>
    Mutation$TaskEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$TaskEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$TaskEdit?);

class Options$Mutation$TaskEdit
    extends graphql.MutationOptions<Mutation$TaskEdit> {
  Options$Mutation$TaskEdit({
    String? operationName,
    required Variables$Mutation$TaskEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskEdit,
         parserFn: _parserFn$Mutation$TaskEdit,
       );

  final OnMutationCompleted$Mutation$TaskEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$TaskEdit
    extends graphql.WatchQueryOptions<Mutation$TaskEdit> {
  WatchOptions$Mutation$TaskEdit({
    String? operationName,
    required Variables$Mutation$TaskEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskEdit? typedOptimisticResult,
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
         document: documentNodeMutationTaskEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$TaskEdit,
       );
}

extension ClientExtension$Mutation$TaskEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TaskEdit>> mutate$TaskEdit(
    Options$Mutation$TaskEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$TaskEdit> watchMutation$TaskEdit(
    WatchOptions$Mutation$TaskEdit options,
  ) => this.watchMutation(options);
}

class Mutation$TaskEdit$HookResult {
  Mutation$TaskEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$TaskEdit runMutation;

  final graphql.QueryResult<Mutation$TaskEdit> result;
}

Mutation$TaskEdit$HookResult useMutation$TaskEdit([
  WidgetOptions$Mutation$TaskEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$TaskEdit(),
  );
  return Mutation$TaskEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TaskEdit> useWatchMutation$TaskEdit(
  WatchOptions$Mutation$TaskEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TaskEdit
    extends graphql.MutationOptions<Mutation$TaskEdit> {
  WidgetOptions$Mutation$TaskEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$TaskEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskEdit,
         parserFn: _parserFn$Mutation$TaskEdit,
       );

  final OnMutationCompleted$Mutation$TaskEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$TaskEdit =
    graphql.MultiSourceResult<Mutation$TaskEdit> Function(
      Variables$Mutation$TaskEdit, {
      Object? optimisticResult,
      Mutation$TaskEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$TaskEdit =
    widgets.Widget Function(
      RunMutation$Mutation$TaskEdit,
      graphql.QueryResult<Mutation$TaskEdit>?,
    );

class Mutation$TaskEdit$Widget
    extends graphql_flutter.Mutation<Mutation$TaskEdit> {
  Mutation$TaskEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TaskEdit? options,
    required Builder$Mutation$TaskEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$TaskEdit(),
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

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId({
    this.mstrTask,
    this.$__typename = 'UpdateMstrTaskPayload',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTask = json['mstrTask'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId(
      mstrTask: l$mstrTask == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.fromJson(
              (l$mstrTask as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask;

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
    if (other is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId
    on Mutation$TaskEdit$updateMstrTaskByMstrTaskId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId instance,
    TRes Function(Mutation$TaskEdit$updateMstrTaskByMstrTaskId) then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId;

  TRes call({
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask,
    String? $__typename,
  });
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask;
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes>
    implements CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes> {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId _instance;

  final TRes Function(Mutation$TaskEdit$updateMstrTaskByMstrTaskId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTask = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId(
      mstrTask: mstrTask == _undefined
          ? _instance.mstrTask
          : (mstrTask
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask {
    final local$mstrTask = _instance.mstrTask;
    return local$mstrTask == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
            local$mstrTask,
            (e) => call(mstrTask: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes>
    implements CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId<TRes> {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId(this._res);

  TRes _res;

  call({
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask? mstrTask,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
  get mstrTask =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(_res);
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask({
    required this.mstrTaskId,
    required this.code,
    this.mstrTaskGroupId,
    this.detail,
    this.$class,
    this.defaultTime,
    this.remarks,
    required this.mstrTaskTreesByMstrTaskId,
    required this.mstrTaskLocationsByMstrTaskId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrTask',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$code = json['code'];
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$detail = json['detail'];
    final l$$class = json['class'];
    final l$defaultTime = json['defaultTime'];
    final l$remarks = json['remarks'];
    final l$mstrTaskTreesByMstrTaskId = json['mstrTaskTreesByMstrTaskId'];
    final l$mstrTaskLocationsByMstrTaskId =
        json['mstrTaskLocationsByMstrTaskId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
      mstrTaskId: (l$mstrTaskId as String),
      code: (l$code as String),
      mstrTaskGroupId: (l$mstrTaskGroupId as String?),
      detail: (l$detail as String?),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      mstrTaskTreesByMstrTaskId:
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId.fromJson(
            (l$mstrTaskTreesByMstrTaskId as Map<String, dynamic>),
          ),
      mstrTaskLocationsByMstrTaskId:
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId.fromJson(
            (l$mstrTaskLocationsByMstrTaskId as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final String code;

  final String? mstrTaskGroupId;

  final String? detail;

  final int? $class;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
  defaultTime;

  final String? remarks;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId
  mstrTaskTreesByMstrTaskId;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId
  mstrTaskLocationsByMstrTaskId;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$defaultTime = defaultTime;
    _resultData['defaultTime'] = l$defaultTime?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    _resultData['mstrTaskTreesByMstrTaskId'] = l$mstrTaskTreesByMstrTaskId
        .toJson();
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    _resultData['mstrTaskLocationsByMstrTaskId'] =
        l$mstrTaskLocationsByMstrTaskId.toJson();
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
    final l$mstrTaskId = mstrTaskId;
    final l$code = code;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$detail = detail;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$remarks = remarks;
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskId,
      l$code,
      l$mstrTaskGroupId,
      l$detail,
      l$$class,
      l$defaultTime,
      l$remarks,
      l$mstrTaskTreesByMstrTaskId,
      l$mstrTaskLocationsByMstrTaskId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
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
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    final lOther$mstrTaskTreesByMstrTaskId = other.mstrTaskTreesByMstrTaskId;
    if (l$mstrTaskTreesByMstrTaskId != lOther$mstrTaskTreesByMstrTaskId) {
      return false;
    }
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    final lOther$mstrTaskLocationsByMstrTaskId =
        other.mstrTaskLocationsByMstrTaskId;
    if (l$mstrTaskLocationsByMstrTaskId !=
        lOther$mstrTaskLocationsByMstrTaskId) {
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask
    on Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask instance,
    TRes Function(Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask) then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask;

  TRes call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
    defaultTime,
    String? remarks,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId?
    mstrTaskTreesByMstrTaskId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId?
    mstrTaskLocationsByMstrTaskId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime;
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
    TRes
  >
  get mstrTaskTreesByMstrTaskId;
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
    TRes
  >
  get mstrTaskLocationsByMstrTaskId;
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes> {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask _instance;

  final TRes Function(Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? code = _undefined,
    Object? mstrTaskGroupId = _undefined,
    Object? detail = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? remarks = _undefined,
    Object? mstrTaskTreesByMstrTaskId = _undefined,
    Object? mstrTaskLocationsByMstrTaskId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mstrTaskGroupId: mstrTaskGroupId == _undefined
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      mstrTaskTreesByMstrTaskId:
          mstrTaskTreesByMstrTaskId == _undefined ||
              mstrTaskTreesByMstrTaskId == null
          ? _instance.mstrTaskTreesByMstrTaskId
          : (mstrTaskTreesByMstrTaskId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId),
      mstrTaskLocationsByMstrTaskId:
          mstrTaskLocationsByMstrTaskId == _undefined ||
              mstrTaskLocationsByMstrTaskId == null
          ? _instance.mstrTaskLocationsByMstrTaskId
          : (mstrTaskLocationsByMstrTaskId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
    TRes
  >
  get mstrTaskTreesByMstrTaskId {
    final local$mstrTaskTreesByMstrTaskId = _instance.mstrTaskTreesByMstrTaskId;
    return CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
      local$mstrTaskTreesByMstrTaskId,
      (e) => call(mstrTaskTreesByMstrTaskId: e),
    );
  }

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
    TRes
  >
  get mstrTaskLocationsByMstrTaskId {
    final local$mstrTaskLocationsByMstrTaskId =
        _instance.mstrTaskLocationsByMstrTaskId;
    return CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
      local$mstrTaskLocationsByMstrTaskId,
      (e) => call(mstrTaskLocationsByMstrTaskId: e),
    );
  }

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask<TRes> {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime?
    defaultTime,
    String? remarks,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId?
    mstrTaskTreesByMstrTaskId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId?
    mstrTaskLocationsByMstrTaskId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    TRes
  >
  get defaultTime =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
        _res,
      );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
    TRes
  >
  get mstrTaskTreesByMstrTaskId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId.stub(
        _res,
      );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
    TRes
  >
  get mstrTaskLocationsByMstrTaskId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId.stub(
        _res,
      );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
    on Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime;

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

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime,
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
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
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

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$defaultTime(
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

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId({
    required this.nodes,
    this.$__typename = 'MstrTaskTreesConnection',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId;

  TRes call({
    List<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes({
    required this.mstrTaskTreeId,
    this.parentMstrTaskId,
    this.$__typename = 'MstrTaskTree',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTreeId = json['mstrTaskTreeId'];
    final l$parentMstrTaskId = json['parentMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
      mstrTaskTreeId: (l$mstrTaskTreeId as String),
      parentMstrTaskId: (l$parentMstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskTreeId;

  final String? parentMstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    _resultData['mstrTaskTreeId'] = l$mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    _resultData['parentMstrTaskId'] = l$parentMstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskTreeId,
      l$parentMstrTaskId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final lOther$mstrTaskTreeId = other.mstrTaskTreeId;
    if (l$mstrTaskTreeId != lOther$mstrTaskTreeId) {
      return false;
    }
    final l$parentMstrTaskId = parentMstrTaskId;
    final lOther$parentMstrTaskId = other.parentMstrTaskId;
    if (l$parentMstrTaskId != lOther$parentMstrTaskId) {
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
      mstrTaskTreeId: mstrTaskTreeId == _undefined || mstrTaskTreeId == null
          ? _instance.mstrTaskTreeId
          : (mstrTaskTreeId as String),
      parentMstrTaskId: parentMstrTaskId == _undefined
          ? _instance.parentMstrTaskId
          : (parentMstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskTreesByMstrTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  }) => _res;
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId({
    required this.nodes,
    this.$__typename = 'MstrTaskLocationsConnection',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId;

  TRes call({
    List<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
          Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes({
    required this.mstrTaskLocationId,
    this.mstrLocationId,
    this.mstrEquipmentId,
    this.mstrStakeholderId,
    this.$__typename = 'MstrTaskLocation',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskLocationId = json['mstrTaskLocationId'];
    final l$mstrLocationId = json['mstrLocationId'];
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
      mstrTaskLocationId: (l$mstrTaskLocationId as String),
      mstrLocationId: (l$mstrLocationId as String?),
      mstrEquipmentId: (l$mstrEquipmentId as String?),
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskLocationId;

  final String? mstrLocationId;

  final String? mstrEquipmentId;

  final String? mstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskLocationId = mstrTaskLocationId;
    _resultData['mstrTaskLocationId'] = l$mstrTaskLocationId;
    final l$mstrLocationId = mstrLocationId;
    _resultData['mstrLocationId'] = l$mstrLocationId;
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskLocationId = mstrTaskLocationId;
    final l$mstrLocationId = mstrLocationId;
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskLocationId,
      l$mstrLocationId,
      l$mstrEquipmentId,
      l$mstrStakeholderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskLocationId = mstrTaskLocationId;
    final lOther$mstrTaskLocationId = other.mstrTaskLocationId;
    if (l$mstrTaskLocationId != lOther$mstrTaskLocationId) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes;

  TRes call({
    String? mstrTaskLocationId,
    String? mstrLocationId,
    String? mstrEquipmentId,
    String? mstrStakeholderId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskLocationId = _undefined,
    Object? mstrLocationId = _undefined,
    Object? mstrEquipmentId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
      mstrTaskLocationId:
          mstrTaskLocationId == _undefined || mstrTaskLocationId == null
          ? _instance.mstrTaskLocationId
          : (mstrTaskLocationId as String),
      mstrLocationId: mstrLocationId == _undefined
          ? _instance.mstrLocationId
          : (mstrLocationId as String?),
      mstrEquipmentId: mstrEquipmentId == _undefined
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String?),
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$mstrTaskLocationsByMstrTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskLocationId,
    String? mstrLocationId,
    String? mstrEquipmentId,
    String? mstrStakeholderId,
    String? $__typename,
  }) => _res;
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId,
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
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskEdit$updateMstrTaskByMstrTaskId$mstrTask$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
