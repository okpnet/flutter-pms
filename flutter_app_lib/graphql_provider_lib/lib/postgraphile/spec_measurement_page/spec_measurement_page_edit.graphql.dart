import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SpecMeasurementPageEdit {
  factory Variables$Mutation$SpecMeasurementPageEdit({
    required String mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Mutation$SpecMeasurementPageEdit._({
    r'mstrSpecMeasurementId': mstrSpecMeasurementId,
    if (measurementValue != null) r'measurementValue': measurementValue,
    if (sharedUnitId != null) r'sharedUnitId': sharedUnitId,
    if (remarks != null) r'remarks': remarks,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Mutation$SpecMeasurementPageEdit._(this._$data);

  factory Variables$Mutation$SpecMeasurementPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrSpecMeasurementId = data['mstrSpecMeasurementId'];
    result$data['mstrSpecMeasurementId'] = (l$mstrSpecMeasurementId as String);
    if (data.containsKey('measurementValue')) {
      final l$measurementValue = data['measurementValue'];
      result$data['measurementValue'] = (l$measurementValue as String?);
    }
    if (data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = data['sharedUnitId'];
      result$data['sharedUnitId'] = (l$sharedUnitId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Mutation$SpecMeasurementPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrSpecMeasurementId =>
      (_$data['mstrSpecMeasurementId'] as String);

  String? get measurementValue => (_$data['measurementValue'] as String?);

  String? get sharedUnitId => (_$data['sharedUnitId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    result$data['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    if (_$data.containsKey('measurementValue')) {
      final l$measurementValue = measurementValue;
      result$data['measurementValue'] = l$measurementValue;
    }
    if (_$data.containsKey('sharedUnitId')) {
      final l$sharedUnitId = sharedUnitId;
      result$data['sharedUnitId'] = l$sharedUnitId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SpecMeasurementPageEdit<
    Variables$Mutation$SpecMeasurementPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SpecMeasurementPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SpecMeasurementPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementId = other.mstrSpecMeasurementId;
    if (l$mstrSpecMeasurementId != lOther$mstrSpecMeasurementId) {
      return false;
    }
    final l$measurementValue = measurementValue;
    final lOther$measurementValue = other.measurementValue;
    if (_$data.containsKey('measurementValue') !=
        other._$data.containsKey('measurementValue')) {
      return false;
    }
    if (l$measurementValue != lOther$measurementValue) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (_$data.containsKey('sharedUnitId') !=
        other._$data.containsKey('sharedUnitId')) {
      return false;
    }
    if (l$sharedUnitId != lOther$sharedUnitId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      _$data.containsKey('measurementValue') ? l$measurementValue : const {},
      _$data.containsKey('sharedUnitId') ? l$sharedUnitId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SpecMeasurementPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$SpecMeasurementPageEdit(
    Variables$Mutation$SpecMeasurementPageEdit instance,
    TRes Function(Variables$Mutation$SpecMeasurementPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$SpecMeasurementPageEdit;

  factory CopyWith$Variables$Mutation$SpecMeasurementPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SpecMeasurementPageEdit;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Mutation$SpecMeasurementPageEdit<TRes>
    implements CopyWith$Variables$Mutation$SpecMeasurementPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$SpecMeasurementPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SpecMeasurementPageEdit _instance;

  final TRes Function(Variables$Mutation$SpecMeasurementPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Mutation$SpecMeasurementPageEdit._({
      ..._instance._$data,
      if (mstrSpecMeasurementId != _undefined && mstrSpecMeasurementId != null)
        'mstrSpecMeasurementId': (mstrSpecMeasurementId as String),
      if (measurementValue != _undefined)
        'measurementValue': (measurementValue as String?),
      if (sharedUnitId != _undefined) 'sharedUnitId': (sharedUnitId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SpecMeasurementPageEdit<TRes>
    implements CopyWith$Variables$Mutation$SpecMeasurementPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SpecMeasurementPageEdit(this._res);

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Mutation$SpecMeasurementPageEdit {
  Mutation$SpecMeasurementPageEdit({
    this.updateMstrSpecMeasurementByMstrSpecMeasurementId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SpecMeasurementPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        json['updateMstrSpecMeasurementByMstrSpecMeasurementId'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit(
      updateMstrSpecMeasurementByMstrSpecMeasurementId:
          l$updateMstrSpecMeasurementByMstrSpecMeasurementId == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
              (l$updateMstrSpecMeasurementByMstrSpecMeasurementId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
  updateMstrSpecMeasurementByMstrSpecMeasurementId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        updateMstrSpecMeasurementByMstrSpecMeasurementId;
    _resultData['updateMstrSpecMeasurementByMstrSpecMeasurementId'] =
        l$updateMstrSpecMeasurementByMstrSpecMeasurementId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        updateMstrSpecMeasurementByMstrSpecMeasurementId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrSpecMeasurementByMstrSpecMeasurementId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SpecMeasurementPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        updateMstrSpecMeasurementByMstrSpecMeasurementId;
    final lOther$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        other.updateMstrSpecMeasurementByMstrSpecMeasurementId;
    if (l$updateMstrSpecMeasurementByMstrSpecMeasurementId !=
        lOther$updateMstrSpecMeasurementByMstrSpecMeasurementId) {
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit
    on Mutation$SpecMeasurementPageEdit {
  CopyWith$Mutation$SpecMeasurementPageEdit<Mutation$SpecMeasurementPageEdit>
  get copyWith => CopyWith$Mutation$SpecMeasurementPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit<TRes> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit(
    Mutation$SpecMeasurementPageEdit instance,
    TRes Function(Mutation$SpecMeasurementPageEdit) then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit;

  factory CopyWith$Mutation$SpecMeasurementPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit;

  TRes call({
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
    updateMstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit<TRes>
    implements CopyWith$Mutation$SpecMeasurementPageEdit<TRes> {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit(this._instance, this._then);

  final Mutation$SpecMeasurementPageEdit _instance;

  final TRes Function(Mutation$SpecMeasurementPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrSpecMeasurementByMstrSpecMeasurementId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit(
      updateMstrSpecMeasurementByMstrSpecMeasurementId:
          updateMstrSpecMeasurementByMstrSpecMeasurementId == _undefined
          ? _instance.updateMstrSpecMeasurementByMstrSpecMeasurementId
          : (updateMstrSpecMeasurementByMstrSpecMeasurementId
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId {
    final local$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        _instance.updateMstrSpecMeasurementByMstrSpecMeasurementId;
    return local$updateMstrSpecMeasurementByMstrSpecMeasurementId == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
            local$updateMstrSpecMeasurementByMstrSpecMeasurementId,
            (e) => call(updateMstrSpecMeasurementByMstrSpecMeasurementId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit<TRes>
    implements CopyWith$Mutation$SpecMeasurementPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit(this._res);

  TRes _res;

  call({
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
    updateMstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
        _res,
      );
}

const documentNodeMutationSpecMeasurementPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SpecMeasurementPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrSpecMeasurementId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'measurementValue')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedUnitId')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(
              value: 'updateMstrSpecMeasurementByMstrSpecMeasurementId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrSpecMeasurementId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrSpecMeasurementId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrSpecMeasurementPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'measurementValue'),
                            value: VariableNode(
                              name: NameNode(value: 'measurementValue'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sharedUnitId'),
                            value: VariableNode(
                              name: NameNode(value: 'sharedUnitId'),
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
                  name: NameNode(value: 'mstrSpecMeasurement'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrSpecMeasurementId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'measurementValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
Mutation$SpecMeasurementPageEdit _parserFn$Mutation$SpecMeasurementPageEdit(
  Map<String, dynamic> data,
) => Mutation$SpecMeasurementPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$SpecMeasurementPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$SpecMeasurementPageEdit?,
    );

class Options$Mutation$SpecMeasurementPageEdit
    extends graphql.MutationOptions<Mutation$SpecMeasurementPageEdit> {
  Options$Mutation$SpecMeasurementPageEdit({
    String? operationName,
    required Variables$Mutation$SpecMeasurementPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SpecMeasurementPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SpecMeasurementPageEdit>? update,
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
                     : _parserFn$Mutation$SpecMeasurementPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSpecMeasurementPageEdit,
         parserFn: _parserFn$Mutation$SpecMeasurementPageEdit,
       );

  final OnMutationCompleted$Mutation$SpecMeasurementPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SpecMeasurementPageEdit
    extends graphql.WatchQueryOptions<Mutation$SpecMeasurementPageEdit> {
  WatchOptions$Mutation$SpecMeasurementPageEdit({
    String? operationName,
    required Variables$Mutation$SpecMeasurementPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationSpecMeasurementPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SpecMeasurementPageEdit,
       );
}

extension ClientExtension$Mutation$SpecMeasurementPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SpecMeasurementPageEdit>>
  mutate$SpecMeasurementPageEdit(
    Options$Mutation$SpecMeasurementPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$SpecMeasurementPageEdit>
  watchMutation$SpecMeasurementPageEdit(
    WatchOptions$Mutation$SpecMeasurementPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$SpecMeasurementPageEdit$HookResult {
  Mutation$SpecMeasurementPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SpecMeasurementPageEdit runMutation;

  final graphql.QueryResult<Mutation$SpecMeasurementPageEdit> result;
}

Mutation$SpecMeasurementPageEdit$HookResult
useMutation$SpecMeasurementPageEdit([
  WidgetOptions$Mutation$SpecMeasurementPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SpecMeasurementPageEdit(),
  );
  return Mutation$SpecMeasurementPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SpecMeasurementPageEdit>
useWatchMutation$SpecMeasurementPageEdit(
  WatchOptions$Mutation$SpecMeasurementPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SpecMeasurementPageEdit
    extends graphql.MutationOptions<Mutation$SpecMeasurementPageEdit> {
  WidgetOptions$Mutation$SpecMeasurementPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SpecMeasurementPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SpecMeasurementPageEdit>? update,
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
                     : _parserFn$Mutation$SpecMeasurementPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSpecMeasurementPageEdit,
         parserFn: _parserFn$Mutation$SpecMeasurementPageEdit,
       );

  final OnMutationCompleted$Mutation$SpecMeasurementPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SpecMeasurementPageEdit =
    graphql.MultiSourceResult<Mutation$SpecMeasurementPageEdit> Function(
      Variables$Mutation$SpecMeasurementPageEdit, {
      Object? optimisticResult,
      Mutation$SpecMeasurementPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$SpecMeasurementPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$SpecMeasurementPageEdit,
      graphql.QueryResult<Mutation$SpecMeasurementPageEdit>?,
    );

class Mutation$SpecMeasurementPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$SpecMeasurementPageEdit> {
  Mutation$SpecMeasurementPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SpecMeasurementPageEdit? options,
    required Builder$Mutation$SpecMeasurementPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SpecMeasurementPageEdit(),
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

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId({
    this.mstrSpecMeasurement,
    this.$__typename = 'UpdateMstrSpecMeasurementPayload',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurement = json['mstrSpecMeasurement'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurement: l$mstrSpecMeasurement == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.fromJson(
              (l$mstrSpecMeasurement as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
  mstrSpecMeasurement;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurement = mstrSpecMeasurement;
    _resultData['mstrSpecMeasurement'] = l$mstrSpecMeasurement?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurement = mstrSpecMeasurement;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrSpecMeasurement, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurement = mstrSpecMeasurement;
    final lOther$mstrSpecMeasurement = other.mstrSpecMeasurement;
    if (l$mstrSpecMeasurement != lOther$mstrSpecMeasurement) {
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId;

  TRes call({
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
    mstrSpecMeasurement,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurement = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurement: mstrSpecMeasurement == _undefined
          ? _instance.mstrSpecMeasurement
          : (mstrSpecMeasurement
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement {
    final local$mstrSpecMeasurement = _instance.mstrSpecMeasurement;
    return local$mstrSpecMeasurement == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
            local$mstrSpecMeasurement,
            (e) => call(mstrSpecMeasurement: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
    mstrSpecMeasurement,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement({
    required this.mstrSpecMeasurementId,
    required this.measurementValue,
    required this.sharedUnitId,
    this.unit,
    this.remarks,
    this.$__typename = 'MstrSpecMeasurement',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurementId = json['mstrSpecMeasurementId'];
    final l$measurementValue = json['measurementValue'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
      mstrSpecMeasurementId: (l$mstrSpecMeasurementId as String),
      measurementValue: (l$measurementValue as String),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrSpecMeasurementId;

  final String measurementValue;

  final String sharedUnitId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
  unit;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    _resultData['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    _resultData['measurementValue'] = l$measurementValue;
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      l$measurementValue,
      l$sharedUnitId,
      l$unit,
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementId = other.mstrSpecMeasurementId;
    if (l$mstrSpecMeasurementId != lOther$mstrSpecMeasurementId) {
      return false;
    }
    final l$measurementValue = measurementValue;
    final lOther$measurementValue = other.measurementValue;
    if (l$measurementValue != lOther$measurementValue) {
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
    unit,
    String? remarks,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
      mstrSpecMeasurementId:
          mstrSpecMeasurementId == _undefined || mstrSpecMeasurementId == null
          ? _instance.mstrSpecMeasurementId
          : (mstrSpecMeasurementId as String),
      measurementValue:
          measurementValue == _undefined || measurementValue == null
          ? _instance.measurementValue
          : (measurementValue as String),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    this._res,
  );

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
    unit,
    String? remarks,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit;

  TRes call({
    String? sharedUnitId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.fromJson(
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
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels,
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
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
