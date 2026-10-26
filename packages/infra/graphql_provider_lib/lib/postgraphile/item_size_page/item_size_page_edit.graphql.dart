import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemSizePageEdit {
  factory Variables$Mutation$ItemSizePageEdit({
    required String mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    required String detailTextsSharedTextId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
    required String detailTextsJa,
    required String detailTextsEn,
    String? remarks,
  }) => Variables$Mutation$ItemSizePageEdit._({
    r'mstrItemActualSizeId': mstrItemActualSizeId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (mstrItemSizeKindId != null) r'mstrItemSizeKindId': mstrItemSizeKindId,
    r'detailTextsSharedTextId': detailTextsSharedTextId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
    r'detailTextsJa': detailTextsJa,
    r'detailTextsEn': detailTextsEn,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ItemSizePageEdit._(this._$data);

  factory Variables$Mutation$ItemSizePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = data['mstrItemActualSizeId'];
    result$data['mstrItemActualSizeId'] = (l$mstrItemActualSizeId as String);
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('mstrItemSizeKindId')) {
      final l$mstrItemSizeKindId = data['mstrItemSizeKindId'];
      result$data['mstrItemSizeKindId'] = (l$mstrItemSizeKindId as String?);
    }
    final l$detailTextsSharedTextId = data['detailTextsSharedTextId'];
    result$data['detailTextsSharedTextId'] =
        (l$detailTextsSharedTextId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    final l$detailTextsJa = data['detailTextsJa'];
    result$data['detailTextsJa'] = (l$detailTextsJa as String);
    final l$detailTextsEn = data['detailTextsEn'];
    result$data['detailTextsEn'] = (l$detailTextsEn as String);
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ItemSizePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemActualSizeId => (_$data['mstrItemActualSizeId'] as String);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get mstrItemSizeKindId => (_$data['mstrItemSizeKindId'] as String?);

  String get detailTextsSharedTextId =>
      (_$data['detailTextsSharedTextId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  String get detailTextsJa => (_$data['detailTextsJa'] as String);

  String get detailTextsEn => (_$data['detailTextsEn'] as String);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    result$data['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
    }
    if (_$data.containsKey('mstrItemSizeKindId')) {
      final l$mstrItemSizeKindId = mstrItemSizeKindId;
      result$data['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    }
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    result$data['detailTextsSharedTextId'] = l$detailTextsSharedTextId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    final l$detailTextsJa = detailTextsJa;
    result$data['detailTextsJa'] = l$detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    result$data['detailTextsEn'] = l$detailTextsEn;
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemSizePageEdit<
    Variables$Mutation$ItemSizePageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$ItemSizePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemSizePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final lOther$mstrItemActualSizeId = other.mstrItemActualSizeId;
    if (l$mstrItemActualSizeId != lOther$mstrItemActualSizeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (_$data.containsKey('mstrItemId') !=
        other._$data.containsKey('mstrItemId')) {
      return false;
    }
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (_$data.containsKey('mstrItemSizeKindId') !=
        other._$data.containsKey('mstrItemSizeKindId')) {
      return false;
    }
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final lOther$detailTextsSharedTextId = other.detailTextsSharedTextId;
    if (l$detailTextsSharedTextId != lOther$detailTextsSharedTextId) {
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
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$detailTextsSharedTextId = detailTextsSharedTextId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$detailTextsJa = detailTextsJa;
    final l$detailTextsEn = detailTextsEn;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('mstrItemSizeKindId')
          ? l$mstrItemSizeKindId
          : const {},
      l$detailTextsSharedTextId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
      l$detailTextsJa,
      l$detailTextsEn,
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemSizePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemSizePageEdit(
    Variables$Mutation$ItemSizePageEdit instance,
    TRes Function(Variables$Mutation$ItemSizePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemSizePageEdit;

  factory CopyWith$Variables$Mutation$ItemSizePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemSizePageEdit;

  TRes call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? detailTextsSharedTextId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ItemSizePageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemSizePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemSizePageEdit(this._instance, this._then);

  final Variables$Mutation$ItemSizePageEdit _instance;

  final TRes Function(Variables$Mutation$ItemSizePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? detailTextsSharedTextId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? detailTextsJa = _undefined,
    Object? detailTextsEn = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ItemSizePageEdit._({
      ..._instance._$data,
      if (mstrItemActualSizeId != _undefined && mstrItemActualSizeId != null)
        'mstrItemActualSizeId': (mstrItemActualSizeId as String),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (mstrItemSizeKindId != _undefined)
        'mstrItemSizeKindId': (mstrItemSizeKindId as String?),
      if (detailTextsSharedTextId != _undefined &&
          detailTextsSharedTextId != null)
        'detailTextsSharedTextId': (detailTextsSharedTextId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
      if (detailTextsJa != _undefined && detailTextsJa != null)
        'detailTextsJa': (detailTextsJa as String),
      if (detailTextsEn != _undefined && detailTextsEn != null)
        'detailTextsEn': (detailTextsEn as String),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemSizePageEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemSizePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemSizePageEdit(this._res);

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? detailTextsSharedTextId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    String? detailTextsJa,
    String? detailTextsEn,
    String? remarks,
  }) => _res;
}

class Mutation$ItemSizePageEdit {
  Mutation$ItemSizePageEdit({
    this.updateMstrItemActualSizeByMstrItemActualSizeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemSizePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        json['updateMstrItemActualSizeByMstrItemActualSizeId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit(
      updateMstrItemActualSizeByMstrItemActualSizeId:
          l$updateMstrItemActualSizeByMstrItemActualSizeId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId.fromJson(
              (l$updateMstrItemActualSizeByMstrItemActualSizeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
  updateMstrItemActualSizeByMstrItemActualSizeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    _resultData['updateMstrItemActualSizeByMstrItemActualSizeId'] =
        l$updateMstrItemActualSizeByMstrItemActualSizeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrItemActualSizeByMstrItemActualSizeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemSizePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    final lOther$updateMstrItemActualSizeByMstrItemActualSizeId =
        other.updateMstrItemActualSizeByMstrItemActualSizeId;
    if (l$updateMstrItemActualSizeByMstrItemActualSizeId !=
        lOther$updateMstrItemActualSizeByMstrItemActualSizeId) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit
    on Mutation$ItemSizePageEdit {
  CopyWith$Mutation$ItemSizePageEdit<Mutation$ItemSizePageEdit> get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemSizePageEdit<TRes> {
  factory CopyWith$Mutation$ItemSizePageEdit(
    Mutation$ItemSizePageEdit instance,
    TRes Function(Mutation$ItemSizePageEdit) then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit;

  factory CopyWith$Mutation$ItemSizePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemSizePageEdit;

  TRes call({
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
    updateMstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit<TRes>
    implements CopyWith$Mutation$ItemSizePageEdit<TRes> {
  _CopyWithImpl$Mutation$ItemSizePageEdit(this._instance, this._then);

  final Mutation$ItemSizePageEdit _instance;

  final TRes Function(Mutation$ItemSizePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemActualSizeByMstrItemActualSizeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit(
      updateMstrItemActualSizeByMstrItemActualSizeId:
          updateMstrItemActualSizeByMstrItemActualSizeId == _undefined
          ? _instance.updateMstrItemActualSizeByMstrItemActualSizeId
          : (updateMstrItemActualSizeByMstrItemActualSizeId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId {
    final local$updateMstrItemActualSizeByMstrItemActualSizeId =
        _instance.updateMstrItemActualSizeByMstrItemActualSizeId;
    return local$updateMstrItemActualSizeByMstrItemActualSizeId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
            local$updateMstrItemActualSizeByMstrItemActualSizeId,
            (e) => call(updateMstrItemActualSizeByMstrItemActualSizeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit<TRes>
    implements CopyWith$Mutation$ItemSizePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
    updateMstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
        _res,
      );
}

const documentNodeMutationItemSizePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemSizePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemActualSizeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemSizeKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
              value: 'updateMstrItemActualSizeByMstrItemActualSizeId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemActualSizeId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrItemActualSizeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemActualSizePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemSizeKindId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemSizeKindId'),
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
                                                value: 'sharedTextValuesUsingSharedTextId',
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
                                                                value: 'sharedLanguageCodeId',
                                                              ),
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'jaLanguageCodeId',
                                                                        ),
                                                                  ),
                                                            ),
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'detailTextsJa',
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
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'enLanguageCodeId',
                                                                        ),
                                                                  ),
                                                            ),
                                                            ObjectFieldNode(
                                                              name: NameNode(
                                                                value:
                                                                    'textValue',
                                                              ),
                                                              value:
                                                                  VariableNode(
                                                                    name:
                                                                        NameNode(
                                                                          value: 'detailTextsEn',
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
                  name: NameNode(value: 'mstrItemActualSize'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrItemId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemSizeKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'mstrItemSizeKindByMstrItemSizeKindId',
                        ),
                        alias: NameNode(value: 'kinds'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrItemSizeKindId'),
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
                              name: NameNode(value: 'names'),
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      value: 'sharedLanguageCodeId',
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
                              name: NameNode(value: 'sharedUnitId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sharedUnitBySharedUnitId'),
                              alias: NameNode(value: 'unit'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedUnitId'),
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
                                            value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                              name: NameNode(
                                value: 'vItemSizeKindItemActualSizeCountByMstrItemSizeKindId',
                              ),
                              alias: NameNode(value: 'item_actual_size_count'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'mstrItemSizeKindId'),
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
                                value: 'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
                                            value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
Mutation$ItemSizePageEdit _parserFn$Mutation$ItemSizePageEdit(
  Map<String, dynamic> data,
) => Mutation$ItemSizePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemSizePageEdit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ItemSizePageEdit?,
);

class Options$Mutation$ItemSizePageEdit
    extends graphql.MutationOptions<Mutation$ItemSizePageEdit> {
  Options$Mutation$ItemSizePageEdit({
    String? operationName,
    required Variables$Mutation$ItemSizePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemSizePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemSizePageEdit>? update,
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
                     : _parserFn$Mutation$ItemSizePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemSizePageEdit,
         parserFn: _parserFn$Mutation$ItemSizePageEdit,
       );

  final OnMutationCompleted$Mutation$ItemSizePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemSizePageEdit
    extends graphql.WatchQueryOptions<Mutation$ItemSizePageEdit> {
  WatchOptions$Mutation$ItemSizePageEdit({
    String? operationName,
    required Variables$Mutation$ItemSizePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemSizePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemSizePageEdit,
       );
}

extension ClientExtension$Mutation$ItemSizePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemSizePageEdit>>
  mutate$ItemSizePageEdit(Options$Mutation$ItemSizePageEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemSizePageEdit>
  watchMutation$ItemSizePageEdit(
    WatchOptions$Mutation$ItemSizePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemSizePageEdit$HookResult {
  Mutation$ItemSizePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemSizePageEdit runMutation;

  final graphql.QueryResult<Mutation$ItemSizePageEdit> result;
}

Mutation$ItemSizePageEdit$HookResult useMutation$ItemSizePageEdit([
  WidgetOptions$Mutation$ItemSizePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemSizePageEdit(),
  );
  return Mutation$ItemSizePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemSizePageEdit>
useWatchMutation$ItemSizePageEdit(
  WatchOptions$Mutation$ItemSizePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemSizePageEdit
    extends graphql.MutationOptions<Mutation$ItemSizePageEdit> {
  WidgetOptions$Mutation$ItemSizePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemSizePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemSizePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemSizePageEdit>? update,
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
                     : _parserFn$Mutation$ItemSizePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemSizePageEdit,
         parserFn: _parserFn$Mutation$ItemSizePageEdit,
       );

  final OnMutationCompleted$Mutation$ItemSizePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemSizePageEdit =
    graphql.MultiSourceResult<Mutation$ItemSizePageEdit> Function(
      Variables$Mutation$ItemSizePageEdit, {
      Object? optimisticResult,
      Mutation$ItemSizePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemSizePageEdit = widgets.Widget Function(
  RunMutation$Mutation$ItemSizePageEdit,
  graphql.QueryResult<Mutation$ItemSizePageEdit>?,
);

class Mutation$ItemSizePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemSizePageEdit> {
  Mutation$ItemSizePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemSizePageEdit? options,
    required Builder$Mutation$ItemSizePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemSizePageEdit(),
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

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId({
    this.mstrItemActualSize,
    this.$__typename = 'UpdateMstrItemActualSizePayload',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemActualSize = json['mstrItemActualSize'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
      mstrItemActualSize: l$mstrItemActualSize == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.fromJson(
              (l$mstrItemActualSize as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
  mstrItemActualSize;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSize = mstrItemActualSize;
    _resultData['mstrItemActualSize'] = l$mstrItemActualSize?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemActualSize = mstrItemActualSize;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemActualSize, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSize = mstrItemActualSize;
    final lOther$mstrItemActualSize = other.mstrItemActualSize;
    if (l$mstrItemActualSize != lOther$mstrItemActualSize) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId
    on Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId;

  TRes call({
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
    mstrItemActualSize,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSize = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
      mstrItemActualSize: mstrItemActualSize == _undefined
          ? _instance.mstrItemActualSize
          : (mstrItemActualSize
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize {
    final local$mstrItemActualSize = _instance.mstrItemActualSize;
    return local$mstrItemActualSize == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
            local$mstrItemActualSize,
            (e) => call(mstrItemActualSize: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
    mstrItemActualSize,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize({
    required this.mstrItemId,
    required this.mstrItemSizeKindId,
    this.kinds,
    this.detailTexts,
    this.remarks,
    this.$__typename = 'MstrItemActualSize',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$kinds = json['kinds'];
    final l$detailTexts = json['detailTexts'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
      mstrItemId: (l$mstrItemId as String),
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      kinds: l$kinds == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds.fromJson(
              (l$kinds as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String mstrItemSizeKindId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds?
  kinds;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts?
  detailTexts;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$kinds = kinds;
    _resultData['kinds'] = l$kinds?.toJson();
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$kinds = kinds;
    final l$detailTexts = detailTexts;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemSizeKindId,
      l$kinds,
      l$detailTexts,
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$kinds = kinds;
    final lOther$kinds = other.kinds;
    if (l$kinds != lOther$kinds) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize;

  TRes call({
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds?
    kinds,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts?
    detailTexts,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
    TRes
  >
  get kinds;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
    TRes
  >
  get detailTexts;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? kinds = _undefined,
    Object? detailTexts = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      kinds: kinds == _undefined
          ? _instance.kinds
          : (kinds
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
    TRes
  >
  get kinds {
    final local$kinds = _instance.kinds;
    return local$kinds == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
            local$kinds,
            (e) => call(kinds: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds?
    kinds,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts?
    detailTexts,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
    TRes
  >
  get kinds =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds({
    required this.mstrItemSizeKindId,
    required this.code,
    required this.names,
    this.labels,
    required this.sharedUnitId,
    this.unit,
    this.symbol,
    this.remarks,
    this.item_actual_size_count,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$names = json['names'];
    final l$labels = json['labels'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$item_actual_size_count = json['item_actual_size_count'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      names: (l$names as String),
      labels: l$labels == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      item_actual_size_count: l$item_actual_size_count == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count.fromJson(
              (l$item_actual_size_count as Map<String, dynamic>),
            ),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final String names;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels?
  labels;

  final String sharedUnitId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit?
  unit;

  final String? symbol;

  final String? remarks;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count?
  item_actual_size_count;

  final String? updateAt;

  final bool? remove;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$names = names;
    _resultData['names'] = l$names;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$item_actual_size_count = item_actual_size_count;
    _resultData['item_actual_size_count'] = l$item_actual_size_count?.toJson();
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$names = names;
    final l$labels = labels;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$item_actual_size_count = item_actual_size_count;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$code,
      l$names,
      l$labels,
      l$sharedUnitId,
      l$unit,
      l$symbol,
      l$remarks,
      l$item_actual_size_count,
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$names = names;
    final lOther$names = other.names;
    if (l$names != lOther$names) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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
    final l$item_actual_size_count = item_actual_size_count;
    final lOther$item_actual_size_count = other.item_actual_size_count;
    if (l$item_actual_size_count != lOther$item_actual_size_count) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels?
    labels,
    String? sharedUnitId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit?
    unit,
    String? symbol,
    String? remarks,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count?
    item_actual_size_count,
    String? updateAt,
    bool? remove,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
    TRes
  >
  get unit;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? names = _undefined,
    Object? labels = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? item_actual_size_count = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      names: names == _undefined || names == null
          ? _instance.names
          : (names as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels?),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      item_actual_size_count: item_actual_size_count == _undefined
          ? _instance.item_actual_size_count
          : (item_actual_size_count
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count {
    final local$item_actual_size_count = _instance.item_actual_size_count;
    return local$item_actual_size_count == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
            local$item_actual_size_count,
            (e) => call(item_actual_size_count: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels?
    labels,
    String? sharedUnitId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit?
    unit,
    String? symbol,
    String? remarks,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count?
    item_actual_size_count,
    String? updateAt,
    bool? remove,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
    TRes
  >
  get unit =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels.fromJson(
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
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels,
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
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnitId = sharedUnitId;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedUnitId, l$labels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit;

  TRes call({
    String? sharedUnitId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels.fromJson(
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
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels,
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
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count({
    this.mstrItemSizeKindId,
    this.$__typename = 'VItemSizeKindItemActualSizeCount',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrItemSizeKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemSizeKindId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count;

  TRes call({String? mstrItemSizeKindId, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
      mstrItemSizeKindId: mstrItemSizeKindId == _undefined
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$item_actual_size_count(
    this._res,
  );

  TRes _res;

  call({String? mstrItemSizeKindId, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user({
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

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user.fromJson(
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
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name.fromJson(
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

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user,
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
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
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
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name?),
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

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name.fromJson(
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
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name,
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
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja
  ja;

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts;

  TRes call({
    String? sharedTextId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja?
    ja,
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja.stub(
        _res,
      );

  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en.stub(
        _res,
      );
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en;

  TRes call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
          Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes {
  Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
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
            is! Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes ||
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

extension UtilityExtension$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
    on
        Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes {
  CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
    instance,
    TRes Function(
      Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes;

  factory CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes
  _instance;

  final TRes Function(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemSizePageEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}
