import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$EquipmentInspectionEdit {
  factory Variables$Mutation$EquipmentInspectionEdit({
    required String mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Input$IntervalInput? timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$EquipmentInspectionEdit._({
    r'mstrInspectionId': mstrInspectionId,
    if (code != null) r'code': code,
    if (inspectionKind != null) r'inspectionKind': inspectionKind,
    if (baseDate != null) r'baseDate': baseDate,
    if (timeInterval != null) r'timeInterval': timeInterval,
    if (externalInspection != null) r'externalInspection': externalInspection,
    if (inspectionFormulaId != null)
      r'inspectionFormulaId': inspectionFormulaId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$EquipmentInspectionEdit._(this._$data);

  factory Variables$Mutation$EquipmentInspectionEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionId = data['mstrInspectionId'];
    result$data['mstrInspectionId'] = (l$mstrInspectionId as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('inspectionKind')) {
      final l$inspectionKind = data['inspectionKind'];
      result$data['inspectionKind'] = (l$inspectionKind as String?);
    }
    if (data.containsKey('baseDate')) {
      final l$baseDate = data['baseDate'];
      result$data['baseDate'] = (l$baseDate as String?);
    }
    if (data.containsKey('timeInterval')) {
      final l$timeInterval = data['timeInterval'];
      result$data['timeInterval'] = l$timeInterval == null
          ? null
          : Input$IntervalInput.fromJson(
              (l$timeInterval as Map<String, dynamic>),
            );
    }
    if (data.containsKey('externalInspection')) {
      final l$externalInspection = data['externalInspection'];
      result$data['externalInspection'] = (l$externalInspection as String?);
    }
    if (data.containsKey('inspectionFormulaId')) {
      final l$inspectionFormulaId = data['inspectionFormulaId'];
      result$data['inspectionFormulaId'] = (l$inspectionFormulaId as String?);
    }
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
    return Variables$Mutation$EquipmentInspectionEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionId => (_$data['mstrInspectionId'] as String);

  String? get code => (_$data['code'] as String?);

  String? get inspectionKind => (_$data['inspectionKind'] as String?);

  String? get baseDate => (_$data['baseDate'] as String?);

  Input$IntervalInput? get timeInterval =>
      (_$data['timeInterval'] as Input$IntervalInput?);

  String? get externalInspection => (_$data['externalInspection'] as String?);

  String? get inspectionFormulaId => (_$data['inspectionFormulaId'] as String?);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionId = mstrInspectionId;
    result$data['mstrInspectionId'] = l$mstrInspectionId;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('inspectionKind')) {
      final l$inspectionKind = inspectionKind;
      result$data['inspectionKind'] = l$inspectionKind;
    }
    if (_$data.containsKey('baseDate')) {
      final l$baseDate = baseDate;
      result$data['baseDate'] = l$baseDate;
    }
    if (_$data.containsKey('timeInterval')) {
      final l$timeInterval = timeInterval;
      result$data['timeInterval'] = l$timeInterval?.toJson();
    }
    if (_$data.containsKey('externalInspection')) {
      final l$externalInspection = externalInspection;
      result$data['externalInspection'] = l$externalInspection;
    }
    if (_$data.containsKey('inspectionFormulaId')) {
      final l$inspectionFormulaId = inspectionFormulaId;
      result$data['inspectionFormulaId'] = l$inspectionFormulaId;
    }
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    if (_$data.containsKey('symbol')) {
      final l$symbol = symbol;
      result$data['symbol'] = l$symbol;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$EquipmentInspectionEdit<
    Variables$Mutation$EquipmentInspectionEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$EquipmentInspectionEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$EquipmentInspectionEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
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
    final l$inspectionKind = inspectionKind;
    final lOther$inspectionKind = other.inspectionKind;
    if (_$data.containsKey('inspectionKind') !=
        other._$data.containsKey('inspectionKind')) {
      return false;
    }
    if (l$inspectionKind != lOther$inspectionKind) {
      return false;
    }
    final l$baseDate = baseDate;
    final lOther$baseDate = other.baseDate;
    if (_$data.containsKey('baseDate') !=
        other._$data.containsKey('baseDate')) {
      return false;
    }
    if (l$baseDate != lOther$baseDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (_$data.containsKey('timeInterval') !=
        other._$data.containsKey('timeInterval')) {
      return false;
    }
    if (l$timeInterval != lOther$timeInterval) {
      return false;
    }
    final l$externalInspection = externalInspection;
    final lOther$externalInspection = other.externalInspection;
    if (_$data.containsKey('externalInspection') !=
        other._$data.containsKey('externalInspection')) {
      return false;
    }
    if (l$externalInspection != lOther$externalInspection) {
      return false;
    }
    final l$inspectionFormulaId = inspectionFormulaId;
    final lOther$inspectionFormulaId = other.inspectionFormulaId;
    if (_$data.containsKey('inspectionFormulaId') !=
        other._$data.containsKey('inspectionFormulaId')) {
      return false;
    }
    if (l$inspectionFormulaId != lOther$inspectionFormulaId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrInspectionId = mstrInspectionId;
    final l$code = code;
    final l$inspectionKind = inspectionKind;
    final l$baseDate = baseDate;
    final l$timeInterval = timeInterval;
    final l$externalInspection = externalInspection;
    final l$inspectionFormulaId = inspectionFormulaId;
    final l$mstrItemId = mstrItemId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$mstrInspectionId,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('inspectionKind') ? l$inspectionKind : const {},
      _$data.containsKey('baseDate') ? l$baseDate : const {},
      _$data.containsKey('timeInterval') ? l$timeInterval : const {},
      _$data.containsKey('externalInspection')
          ? l$externalInspection
          : const {},
      _$data.containsKey('inspectionFormulaId')
          ? l$inspectionFormulaId
          : const {},
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$EquipmentInspectionEdit<TRes> {
  factory CopyWith$Variables$Mutation$EquipmentInspectionEdit(
    Variables$Mutation$EquipmentInspectionEdit instance,
    TRes Function(Variables$Mutation$EquipmentInspectionEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$EquipmentInspectionEdit;

  factory CopyWith$Variables$Mutation$EquipmentInspectionEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionEdit;

  TRes call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Input$IntervalInput? timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$EquipmentInspectionEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentInspectionEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$EquipmentInspectionEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EquipmentInspectionEdit _instance;

  final TRes Function(Variables$Mutation$EquipmentInspectionEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionId = _undefined,
    Object? code = _undefined,
    Object? inspectionKind = _undefined,
    Object? baseDate = _undefined,
    Object? timeInterval = _undefined,
    Object? externalInspection = _undefined,
    Object? inspectionFormulaId = _undefined,
    Object? mstrItemId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$EquipmentInspectionEdit._({
      ..._instance._$data,
      if (mstrInspectionId != _undefined && mstrInspectionId != null)
        'mstrInspectionId': (mstrInspectionId as String),
      if (code != _undefined) 'code': (code as String?),
      if (inspectionKind != _undefined)
        'inspectionKind': (inspectionKind as String?),
      if (baseDate != _undefined) 'baseDate': (baseDate as String?),
      if (timeInterval != _undefined)
        'timeInterval': (timeInterval as Input$IntervalInput?),
      if (externalInspection != _undefined)
        'externalInspection': (externalInspection as String?),
      if (inspectionFormulaId != _undefined)
        'inspectionFormulaId': (inspectionFormulaId as String?),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionEdit<TRes>
    implements CopyWith$Variables$Mutation$EquipmentInspectionEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionEdit(this._res);

  TRes _res;

  call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Input$IntervalInput? timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$EquipmentInspectionEdit {
  Mutation$EquipmentInspectionEdit({
    this.updateMstrInspectionByMstrInspectionId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EquipmentInspectionEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrInspectionByMstrInspectionId =
        json['updateMstrInspectionByMstrInspectionId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionEdit(
      updateMstrInspectionByMstrInspectionId:
          l$updateMstrInspectionByMstrInspectionId == null
          ? null
          : Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId.fromJson(
              (l$updateMstrInspectionByMstrInspectionId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId?
  updateMstrInspectionByMstrInspectionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrInspectionByMstrInspectionId =
        updateMstrInspectionByMstrInspectionId;
    _resultData['updateMstrInspectionByMstrInspectionId'] =
        l$updateMstrInspectionByMstrInspectionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrInspectionByMstrInspectionId =
        updateMstrInspectionByMstrInspectionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrInspectionByMstrInspectionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$EquipmentInspectionEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrInspectionByMstrInspectionId =
        updateMstrInspectionByMstrInspectionId;
    final lOther$updateMstrInspectionByMstrInspectionId =
        other.updateMstrInspectionByMstrInspectionId;
    if (l$updateMstrInspectionByMstrInspectionId !=
        lOther$updateMstrInspectionByMstrInspectionId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionEdit
    on Mutation$EquipmentInspectionEdit {
  CopyWith$Mutation$EquipmentInspectionEdit<Mutation$EquipmentInspectionEdit>
  get copyWith => CopyWith$Mutation$EquipmentInspectionEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$EquipmentInspectionEdit<TRes> {
  factory CopyWith$Mutation$EquipmentInspectionEdit(
    Mutation$EquipmentInspectionEdit instance,
    TRes Function(Mutation$EquipmentInspectionEdit) then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionEdit;

  factory CopyWith$Mutation$EquipmentInspectionEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EquipmentInspectionEdit;

  TRes call({
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId?
    updateMstrInspectionByMstrInspectionId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
    TRes
  >
  get updateMstrInspectionByMstrInspectionId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionEdit<TRes> {
  _CopyWithImpl$Mutation$EquipmentInspectionEdit(this._instance, this._then);

  final Mutation$EquipmentInspectionEdit _instance;

  final TRes Function(Mutation$EquipmentInspectionEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrInspectionByMstrInspectionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionEdit(
      updateMstrInspectionByMstrInspectionId:
          updateMstrInspectionByMstrInspectionId == _undefined
          ? _instance.updateMstrInspectionByMstrInspectionId
          : (updateMstrInspectionByMstrInspectionId
                as Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
    TRes
  >
  get updateMstrInspectionByMstrInspectionId {
    final local$updateMstrInspectionByMstrInspectionId =
        _instance.updateMstrInspectionByMstrInspectionId;
    return local$updateMstrInspectionByMstrInspectionId == null
        ? CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
            local$updateMstrInspectionByMstrInspectionId,
            (e) => call(updateMstrInspectionByMstrInspectionId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionEdit<TRes> {
  _CopyWithStubImpl$Mutation$EquipmentInspectionEdit(this._res);

  TRes _res;

  call({
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId?
    updateMstrInspectionByMstrInspectionId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
    TRes
  >
  get updateMstrInspectionByMstrInspectionId =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId.stub(
        _res,
      );
}

const documentNodeMutationEquipmentInspectionEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'EquipmentInspectionEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrInspectionId')),
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
          variable: VariableNode(name: NameNode(value: 'inspectionKind')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'baseDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'timeInterval')),
          type: NamedTypeNode(
            name: NameNode(value: 'IntervalInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'externalInspection')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'inspectionFormulaId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrInspectionByMstrInspectionId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrInspectionId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'inspectionKind'),
                            value: VariableNode(
                              name: NameNode(value: 'inspectionKind'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'baseDate'),
                            value: VariableNode(
                              name: NameNode(value: 'baseDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'timeInterval'),
                            value: VariableNode(
                              name: NameNode(value: 'timeInterval'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'externalInspection'),
                            value: VariableNode(
                              name: NameNode(value: 'externalInspection'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'inspectionFormulaId'),
                            value: VariableNode(
                              name: NameNode(value: 'inspectionFormulaId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
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
                  name: NameNode(value: 'mstrInspection'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionId'),
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
                        name: NameNode(value: 'inspectionKind'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'baseDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'timeInterval'),
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
                        name: NameNode(value: 'externalInspection'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'inspectionFormulaId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemId'),
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
Mutation$EquipmentInspectionEdit _parserFn$Mutation$EquipmentInspectionEdit(
  Map<String, dynamic> data,
) => Mutation$EquipmentInspectionEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$EquipmentInspectionEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$EquipmentInspectionEdit?,
    );

class Options$Mutation$EquipmentInspectionEdit
    extends graphql.MutationOptions<Mutation$EquipmentInspectionEdit> {
  Options$Mutation$EquipmentInspectionEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionEdit>? update,
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
                     : _parserFn$Mutation$EquipmentInspectionEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$EquipmentInspectionEdit
    extends graphql.WatchQueryOptions<Mutation$EquipmentInspectionEdit> {
  WatchOptions$Mutation$EquipmentInspectionEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionEdit? typedOptimisticResult,
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
         document: documentNodeMutationEquipmentInspectionEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$EquipmentInspectionEdit,
       );
}

extension ClientExtension$Mutation$EquipmentInspectionEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EquipmentInspectionEdit>>
  mutate$EquipmentInspectionEdit(
    Options$Mutation$EquipmentInspectionEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$EquipmentInspectionEdit>
  watchMutation$EquipmentInspectionEdit(
    WatchOptions$Mutation$EquipmentInspectionEdit options,
  ) => this.watchMutation(options);
}

class Mutation$EquipmentInspectionEdit$HookResult {
  Mutation$EquipmentInspectionEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$EquipmentInspectionEdit runMutation;

  final graphql.QueryResult<Mutation$EquipmentInspectionEdit> result;
}

Mutation$EquipmentInspectionEdit$HookResult
useMutation$EquipmentInspectionEdit([
  WidgetOptions$Mutation$EquipmentInspectionEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$EquipmentInspectionEdit(),
  );
  return Mutation$EquipmentInspectionEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EquipmentInspectionEdit>
useWatchMutation$EquipmentInspectionEdit(
  WatchOptions$Mutation$EquipmentInspectionEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$EquipmentInspectionEdit
    extends graphql.MutationOptions<Mutation$EquipmentInspectionEdit> {
  WidgetOptions$Mutation$EquipmentInspectionEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionEdit>? update,
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
                     : _parserFn$Mutation$EquipmentInspectionEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$EquipmentInspectionEdit =
    graphql.MultiSourceResult<Mutation$EquipmentInspectionEdit> Function(
      Variables$Mutation$EquipmentInspectionEdit, {
      Object? optimisticResult,
      Mutation$EquipmentInspectionEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$EquipmentInspectionEdit =
    widgets.Widget Function(
      RunMutation$Mutation$EquipmentInspectionEdit,
      graphql.QueryResult<Mutation$EquipmentInspectionEdit>?,
    );

class Mutation$EquipmentInspectionEdit$Widget
    extends graphql_flutter.Mutation<Mutation$EquipmentInspectionEdit> {
  Mutation$EquipmentInspectionEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EquipmentInspectionEdit? options,
    required Builder$Mutation$EquipmentInspectionEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$EquipmentInspectionEdit(),
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

class Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId {
  Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId({
    this.mstrInspection,
    this.$__typename = 'UpdateMstrInspectionPayload',
  });

  factory Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspection = json['mstrInspection'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
      mstrInspection: l$mstrInspection == null
          ? null
          : Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.fromJson(
              (l$mstrInspection as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection?
  mstrInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspection = mstrInspection;
    _resultData['mstrInspection'] = l$mstrInspection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspection = mstrInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrInspection, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspection = mstrInspection;
    final lOther$mstrInspection = other.mstrInspection;
    if (l$mstrInspection != lOther$mstrInspection) {
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

extension UtilityExtension$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId
    on Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId {
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId;

  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId;

  TRes call({
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection?
    mstrInspection,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
    TRes
  >
  get mstrInspection;
}

class _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspection = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
      mstrInspection: mstrInspection == _undefined
          ? _instance.mstrInspection
          : (mstrInspection
                as Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
    TRes
  >
  get mstrInspection {
    final local$mstrInspection = _instance.mstrInspection;
    return local$mstrInspection == null
        ? CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
            local$mstrInspection,
            (e) => call(mstrInspection: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection?
    mstrInspection,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
    TRes
  >
  get mstrInspection =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection {
  Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection({
    required this.mstrInspectionId,
    required this.code,
    required this.inspectionKind,
    this.baseDate,
    this.timeInterval,
    this.externalInspection,
    this.inspectionFormulaId,
    required this.mstrItemId,
    this.remarks,
    this.symbol,
    this.$__typename = 'MstrInspection',
  });

  factory Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$code = json['code'];
    final l$inspectionKind = json['inspectionKind'];
    final l$baseDate = json['baseDate'];
    final l$timeInterval = json['timeInterval'];
    final l$externalInspection = json['externalInspection'];
    final l$inspectionFormulaId = json['inspectionFormulaId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
      mstrInspectionId: (l$mstrInspectionId as String),
      code: (l$code as String),
      inspectionKind: (l$inspectionKind as String),
      baseDate: (l$baseDate as String?),
      timeInterval: l$timeInterval == null
          ? null
          : Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval.fromJson(
              (l$timeInterval as Map<String, dynamic>),
            ),
      externalInspection: (l$externalInspection as String?),
      inspectionFormulaId: (l$inspectionFormulaId as String?),
      mstrItemId: (l$mstrItemId as String),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionId;

  final String code;

  final String inspectionKind;

  final String? baseDate;

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval?
  timeInterval;

  final String? externalInspection;

  final String? inspectionFormulaId;

  final String mstrItemId;

  final String? remarks;

  final String? symbol;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$inspectionKind = inspectionKind;
    _resultData['inspectionKind'] = l$inspectionKind;
    final l$baseDate = baseDate;
    _resultData['baseDate'] = l$baseDate;
    final l$timeInterval = timeInterval;
    _resultData['timeInterval'] = l$timeInterval?.toJson();
    final l$externalInspection = externalInspection;
    _resultData['externalInspection'] = l$externalInspection;
    final l$inspectionFormulaId = inspectionFormulaId;
    _resultData['inspectionFormulaId'] = l$inspectionFormulaId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionId = mstrInspectionId;
    final l$code = code;
    final l$inspectionKind = inspectionKind;
    final l$baseDate = baseDate;
    final l$timeInterval = timeInterval;
    final l$externalInspection = externalInspection;
    final l$inspectionFormulaId = inspectionFormulaId;
    final l$mstrItemId = mstrItemId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionId,
      l$code,
      l$inspectionKind,
      l$baseDate,
      l$timeInterval,
      l$externalInspection,
      l$inspectionFormulaId,
      l$mstrItemId,
      l$remarks,
      l$symbol,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$inspectionKind = inspectionKind;
    final lOther$inspectionKind = other.inspectionKind;
    if (l$inspectionKind != lOther$inspectionKind) {
      return false;
    }
    final l$baseDate = baseDate;
    final lOther$baseDate = other.baseDate;
    if (l$baseDate != lOther$baseDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (l$timeInterval != lOther$timeInterval) {
      return false;
    }
    final l$externalInspection = externalInspection;
    final lOther$externalInspection = other.externalInspection;
    if (l$externalInspection != lOther$externalInspection) {
      return false;
    }
    final l$inspectionFormulaId = inspectionFormulaId;
    final lOther$inspectionFormulaId = other.inspectionFormulaId;
    if (l$inspectionFormulaId != lOther$inspectionFormulaId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection
    on
        Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection {
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection
    instance,
    TRes Function(
      Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection;

  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection;

  TRes call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval?
    timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
    TRes
  >
  get timeInterval;
}

class _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionId = _undefined,
    Object? code = _undefined,
    Object? inspectionKind = _undefined,
    Object? baseDate = _undefined,
    Object? timeInterval = _undefined,
    Object? externalInspection = _undefined,
    Object? inspectionFormulaId = _undefined,
    Object? mstrItemId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      inspectionKind: inspectionKind == _undefined || inspectionKind == null
          ? _instance.inspectionKind
          : (inspectionKind as String),
      baseDate: baseDate == _undefined
          ? _instance.baseDate
          : (baseDate as String?),
      timeInterval: timeInterval == _undefined
          ? _instance.timeInterval
          : (timeInterval
                as Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval?),
      externalInspection: externalInspection == _undefined
          ? _instance.externalInspection
          : (externalInspection as String?),
      inspectionFormulaId: inspectionFormulaId == _undefined
          ? _instance.inspectionFormulaId
          : (inspectionFormulaId as String?),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
    TRes
  >
  get timeInterval {
    final local$timeInterval = _instance.timeInterval;
    return local$timeInterval == null
        ? CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
            local$timeInterval,
            (e) => call(timeInterval: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval?
    timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
    TRes
  >
  get timeInterval =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval {
  Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
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
            is! Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval ||
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

extension UtilityExtension$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval
    on
        Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval {
  CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval
    instance,
    TRes Function(
      Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval;

  factory CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval;

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

class _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval,
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
    Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
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

class _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionEdit$updateMstrInspectionByMstrInspectionId$mstrInspection$timeInterval(
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
