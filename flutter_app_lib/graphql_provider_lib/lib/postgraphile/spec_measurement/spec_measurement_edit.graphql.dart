import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SpecMeasurementEdit {
  factory Variables$Mutation$SpecMeasurementEdit({
    required String mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    required String languageCodeId,
  }) => Variables$Mutation$SpecMeasurementEdit._({
    r'mstrSpecMeasurementId': mstrSpecMeasurementId,
    if (measurementValue != null) r'measurementValue': measurementValue,
    if (sharedUnitId != null) r'sharedUnitId': sharedUnitId,
    if (remarks != null) r'remarks': remarks,
    r'languageCodeId': languageCodeId,
  });

  Variables$Mutation$SpecMeasurementEdit._(this._$data);

  factory Variables$Mutation$SpecMeasurementEdit.fromJson(
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
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    return Variables$Mutation$SpecMeasurementEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrSpecMeasurementId =>
      (_$data['mstrSpecMeasurementId'] as String);

  String? get measurementValue => (_$data['measurementValue'] as String?);

  String? get sharedUnitId => (_$data['sharedUnitId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get languageCodeId => (_$data['languageCodeId'] as String);

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
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SpecMeasurementEdit<
    Variables$Mutation$SpecMeasurementEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SpecMeasurementEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SpecMeasurementEdit ||
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
    final l$languageCodeId = languageCodeId;
    final lOther$languageCodeId = other.languageCodeId;
    if (l$languageCodeId != lOther$languageCodeId) {
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
    final l$languageCodeId = languageCodeId;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      _$data.containsKey('measurementValue') ? l$measurementValue : const {},
      _$data.containsKey('sharedUnitId') ? l$sharedUnitId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$languageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SpecMeasurementEdit<TRes> {
  factory CopyWith$Variables$Mutation$SpecMeasurementEdit(
    Variables$Mutation$SpecMeasurementEdit instance,
    TRes Function(Variables$Mutation$SpecMeasurementEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$SpecMeasurementEdit;

  factory CopyWith$Variables$Mutation$SpecMeasurementEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SpecMeasurementEdit;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? languageCodeId,
  });
}

class _CopyWithImpl$Variables$Mutation$SpecMeasurementEdit<TRes>
    implements CopyWith$Variables$Mutation$SpecMeasurementEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$SpecMeasurementEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SpecMeasurementEdit _instance;

  final TRes Function(Variables$Mutation$SpecMeasurementEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? languageCodeId = _undefined,
  }) => _then(
    Variables$Mutation$SpecMeasurementEdit._({
      ..._instance._$data,
      if (mstrSpecMeasurementId != _undefined && mstrSpecMeasurementId != null)
        'mstrSpecMeasurementId': (mstrSpecMeasurementId as String),
      if (measurementValue != _undefined)
        'measurementValue': (measurementValue as String?),
      if (sharedUnitId != _undefined) 'sharedUnitId': (sharedUnitId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SpecMeasurementEdit<TRes>
    implements CopyWith$Variables$Mutation$SpecMeasurementEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SpecMeasurementEdit(this._res);

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    String? languageCodeId,
  }) => _res;
}

class Mutation$SpecMeasurementEdit {
  Mutation$SpecMeasurementEdit({
    this.updateMstrSpecMeasurementByMstrSpecMeasurementId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SpecMeasurementEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        json['updateMstrSpecMeasurementByMstrSpecMeasurementId'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit(
      updateMstrSpecMeasurementByMstrSpecMeasurementId:
          l$updateMstrSpecMeasurementByMstrSpecMeasurementId == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
              (l$updateMstrSpecMeasurementByMstrSpecMeasurementId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
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
    if (other is! Mutation$SpecMeasurementEdit ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit
    on Mutation$SpecMeasurementEdit {
  CopyWith$Mutation$SpecMeasurementEdit<Mutation$SpecMeasurementEdit>
  get copyWith => CopyWith$Mutation$SpecMeasurementEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$SpecMeasurementEdit<TRes> {
  factory CopyWith$Mutation$SpecMeasurementEdit(
    Mutation$SpecMeasurementEdit instance,
    TRes Function(Mutation$SpecMeasurementEdit) then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit;

  factory CopyWith$Mutation$SpecMeasurementEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SpecMeasurementEdit;

  TRes call({
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
    updateMstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit<TRes>
    implements CopyWith$Mutation$SpecMeasurementEdit<TRes> {
  _CopyWithImpl$Mutation$SpecMeasurementEdit(this._instance, this._then);

  final Mutation$SpecMeasurementEdit _instance;

  final TRes Function(Mutation$SpecMeasurementEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrSpecMeasurementByMstrSpecMeasurementId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit(
      updateMstrSpecMeasurementByMstrSpecMeasurementId:
          updateMstrSpecMeasurementByMstrSpecMeasurementId == _undefined
          ? _instance.updateMstrSpecMeasurementByMstrSpecMeasurementId
          : (updateMstrSpecMeasurementByMstrSpecMeasurementId
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId {
    final local$updateMstrSpecMeasurementByMstrSpecMeasurementId =
        _instance.updateMstrSpecMeasurementByMstrSpecMeasurementId;
    return local$updateMstrSpecMeasurementByMstrSpecMeasurementId == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
            local$updateMstrSpecMeasurementByMstrSpecMeasurementId,
            (e) => call(updateMstrSpecMeasurementByMstrSpecMeasurementId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit<TRes>
    implements CopyWith$Mutation$SpecMeasurementEdit<TRes> {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit(this._res);

  TRes _res;

  call({
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId?
    updateMstrSpecMeasurementByMstrSpecMeasurementId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    TRes
  >
  get updateMstrSpecMeasurementByMstrSpecMeasurementId =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
        _res,
      );
}

const documentNodeMutationSpecMeasurementEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SpecMeasurementEdit'),
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
          variable: VariableNode(name: NameNode(value: 'languageCodeId')),
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
                        name: NameNode(value: 'remarks'),
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
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
Mutation$SpecMeasurementEdit _parserFn$Mutation$SpecMeasurementEdit(
  Map<String, dynamic> data,
) => Mutation$SpecMeasurementEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$SpecMeasurementEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$SpecMeasurementEdit?,
    );

class Options$Mutation$SpecMeasurementEdit
    extends graphql.MutationOptions<Mutation$SpecMeasurementEdit> {
  Options$Mutation$SpecMeasurementEdit({
    String? operationName,
    required Variables$Mutation$SpecMeasurementEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SpecMeasurementEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SpecMeasurementEdit>? update,
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
                     : _parserFn$Mutation$SpecMeasurementEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSpecMeasurementEdit,
         parserFn: _parserFn$Mutation$SpecMeasurementEdit,
       );

  final OnMutationCompleted$Mutation$SpecMeasurementEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SpecMeasurementEdit
    extends graphql.WatchQueryOptions<Mutation$SpecMeasurementEdit> {
  WatchOptions$Mutation$SpecMeasurementEdit({
    String? operationName,
    required Variables$Mutation$SpecMeasurementEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementEdit? typedOptimisticResult,
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
         document: documentNodeMutationSpecMeasurementEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SpecMeasurementEdit,
       );
}

extension ClientExtension$Mutation$SpecMeasurementEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SpecMeasurementEdit>>
  mutate$SpecMeasurementEdit(
    Options$Mutation$SpecMeasurementEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$SpecMeasurementEdit>
  watchMutation$SpecMeasurementEdit(
    WatchOptions$Mutation$SpecMeasurementEdit options,
  ) => this.watchMutation(options);
}

class Mutation$SpecMeasurementEdit$HookResult {
  Mutation$SpecMeasurementEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SpecMeasurementEdit runMutation;

  final graphql.QueryResult<Mutation$SpecMeasurementEdit> result;
}

Mutation$SpecMeasurementEdit$HookResult useMutation$SpecMeasurementEdit([
  WidgetOptions$Mutation$SpecMeasurementEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SpecMeasurementEdit(),
  );
  return Mutation$SpecMeasurementEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SpecMeasurementEdit>
useWatchMutation$SpecMeasurementEdit(
  WatchOptions$Mutation$SpecMeasurementEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SpecMeasurementEdit
    extends graphql.MutationOptions<Mutation$SpecMeasurementEdit> {
  WidgetOptions$Mutation$SpecMeasurementEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SpecMeasurementEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SpecMeasurementEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$SpecMeasurementEdit>? update,
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
                     : _parserFn$Mutation$SpecMeasurementEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSpecMeasurementEdit,
         parserFn: _parserFn$Mutation$SpecMeasurementEdit,
       );

  final OnMutationCompleted$Mutation$SpecMeasurementEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SpecMeasurementEdit =
    graphql.MultiSourceResult<Mutation$SpecMeasurementEdit> Function(
      Variables$Mutation$SpecMeasurementEdit, {
      Object? optimisticResult,
      Mutation$SpecMeasurementEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$SpecMeasurementEdit =
    widgets.Widget Function(
      RunMutation$Mutation$SpecMeasurementEdit,
      graphql.QueryResult<Mutation$SpecMeasurementEdit>?,
    );

class Mutation$SpecMeasurementEdit$Widget
    extends graphql_flutter.Mutation<Mutation$SpecMeasurementEdit> {
  Mutation$SpecMeasurementEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SpecMeasurementEdit? options,
    required Builder$Mutation$SpecMeasurementEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SpecMeasurementEdit(),
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

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId({
    this.mstrSpecMeasurement,
    this.$__typename = 'UpdateMstrSpecMeasurementPayload',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurement = json['mstrSpecMeasurement'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurement: l$mstrSpecMeasurement == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.fromJson(
              (l$mstrSpecMeasurement as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
    on Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId;

  TRes call({
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
    mstrSpecMeasurement,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurement = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
      mstrSpecMeasurement: mstrSpecMeasurement == _undefined
          ? _instance.mstrSpecMeasurement
          : (mstrSpecMeasurement
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement {
    final local$mstrSpecMeasurement = _instance.mstrSpecMeasurement;
    return local$mstrSpecMeasurement == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
            local$mstrSpecMeasurement,
            (e) => call(mstrSpecMeasurement: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement?
    mstrSpecMeasurement,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    TRes
  >
  get mstrSpecMeasurement =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement({
    required this.mstrSpecMeasurementId,
    required this.measurementValue,
    required this.sharedUnitId,
    this.remarks,
    this.unit,
    this.$__typename = 'MstrSpecMeasurement',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurementId = json['mstrSpecMeasurementId'];
    final l$measurementValue = json['measurementValue'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$remarks = json['remarks'];
    final l$unit = json['unit'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
      mstrSpecMeasurementId: (l$mstrSpecMeasurementId as String),
      measurementValue: (l$measurementValue as String),
      sharedUnitId: (l$sharedUnitId as String),
      remarks: (l$remarks as String?),
      unit: l$unit == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrSpecMeasurementId;

  final String measurementValue;

  final String sharedUnitId;

  final String? remarks;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
  unit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    _resultData['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    _resultData['measurementValue'] = l$measurementValue;
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    final l$unit = unit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      l$measurementValue,
      l$sharedUnitId,
      l$remarks,
      l$unit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement ||
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
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
    unit,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? unit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
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
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement(
    this._res,
  );

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? sharedUnitId,
    String? remarks,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit?
    unit,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    TRes
  >
  get unit =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit;

  TRes call({
    String? sharedUnitId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.fromJson(
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
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels,
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
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SpecMeasurementEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
