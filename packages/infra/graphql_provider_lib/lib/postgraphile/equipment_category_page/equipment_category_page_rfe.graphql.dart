import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$EquipmentCategoryPageRfe {
  factory Variables$Query$EquipmentCategoryPageRfe({
    required String mstrEquipmentKindId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$EquipmentCategoryPageRfe._({
    r'mstrEquipmentKindId': mstrEquipmentKindId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$EquipmentCategoryPageRfe._(this._$data);

  factory Variables$Query$EquipmentCategoryPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentKindId = data['mstrEquipmentKindId'];
    result$data['mstrEquipmentKindId'] = (l$mstrEquipmentKindId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$EquipmentCategoryPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrEquipmentKindId => (_$data['mstrEquipmentKindId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    result$data['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$EquipmentCategoryPageRfe<
    Variables$Query$EquipmentCategoryPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentCategoryPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EquipmentCategoryPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
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
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrEquipmentKindId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$EquipmentCategoryPageRfe<TRes> {
  factory CopyWith$Variables$Query$EquipmentCategoryPageRfe(
    Variables$Query$EquipmentCategoryPageRfe instance,
    TRes Function(Variables$Query$EquipmentCategoryPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$EquipmentCategoryPageRfe;

  factory CopyWith$Variables$Query$EquipmentCategoryPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$EquipmentCategoryPageRfe;

  TRes call({
    String? mstrEquipmentKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$EquipmentCategoryPageRfe<TRes>
    implements CopyWith$Variables$Query$EquipmentCategoryPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$EquipmentCategoryPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentCategoryPageRfe _instance;

  final TRes Function(Variables$Query$EquipmentCategoryPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$EquipmentCategoryPageRfe._({
      ..._instance._$data,
      if (mstrEquipmentKindId != _undefined && mstrEquipmentKindId != null)
        'mstrEquipmentKindId': (mstrEquipmentKindId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentCategoryPageRfe<TRes>
    implements CopyWith$Variables$Query$EquipmentCategoryPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$EquipmentCategoryPageRfe(this._res);

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$EquipmentCategoryPageRfe {
  Query$EquipmentCategoryPageRfe({
    this.mstrEquipmentKindByMstrEquipmentKindId,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentCategoryPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrEquipmentKindByMstrEquipmentKindId =
        json['mstrEquipmentKindByMstrEquipmentKindId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe(
      mstrEquipmentKindByMstrEquipmentKindId:
          l$mstrEquipmentKindByMstrEquipmentKindId == null
          ? null
          : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId.fromJson(
              (l$mstrEquipmentKindByMstrEquipmentKindId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId?
  mstrEquipmentKindByMstrEquipmentKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentKindByMstrEquipmentKindId =
        mstrEquipmentKindByMstrEquipmentKindId;
    _resultData['mstrEquipmentKindByMstrEquipmentKindId'] =
        l$mstrEquipmentKindByMstrEquipmentKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentKindByMstrEquipmentKindId =
        mstrEquipmentKindByMstrEquipmentKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentKindByMstrEquipmentKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EquipmentCategoryPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindByMstrEquipmentKindId =
        mstrEquipmentKindByMstrEquipmentKindId;
    final lOther$mstrEquipmentKindByMstrEquipmentKindId =
        other.mstrEquipmentKindByMstrEquipmentKindId;
    if (l$mstrEquipmentKindByMstrEquipmentKindId !=
        lOther$mstrEquipmentKindByMstrEquipmentKindId) {
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe
    on Query$EquipmentCategoryPageRfe {
  CopyWith$Query$EquipmentCategoryPageRfe<Query$EquipmentCategoryPageRfe>
  get copyWith => CopyWith$Query$EquipmentCategoryPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe<TRes> {
  factory CopyWith$Query$EquipmentCategoryPageRfe(
    Query$EquipmentCategoryPageRfe instance,
    TRes Function(Query$EquipmentCategoryPageRfe) then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe;

  factory CopyWith$Query$EquipmentCategoryPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$EquipmentCategoryPageRfe;

  TRes call({
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId?
    mstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentKindId;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe<TRes>
    implements CopyWith$Query$EquipmentCategoryPageRfe<TRes> {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe(this._instance, this._then);

  final Query$EquipmentCategoryPageRfe _instance;

  final TRes Function(Query$EquipmentCategoryPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindByMstrEquipmentKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe(
      mstrEquipmentKindByMstrEquipmentKindId:
          mstrEquipmentKindByMstrEquipmentKindId == _undefined
          ? _instance.mstrEquipmentKindByMstrEquipmentKindId
          : (mstrEquipmentKindByMstrEquipmentKindId
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentKindId {
    final local$mstrEquipmentKindByMstrEquipmentKindId =
        _instance.mstrEquipmentKindByMstrEquipmentKindId;
    return local$mstrEquipmentKindByMstrEquipmentKindId == null
        ? CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
            local$mstrEquipmentKindByMstrEquipmentKindId,
            (e) => call(mstrEquipmentKindByMstrEquipmentKindId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe<TRes>
    implements CopyWith$Query$EquipmentCategoryPageRfe<TRes> {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe(this._res);

  TRes _res;

  call({
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId?
    mstrEquipmentKindByMstrEquipmentKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentKindId =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId.stub(
        _res,
      );
}

const documentNodeQueryEquipmentCategoryPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EquipmentCategoryPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrEquipmentKindId')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrEquipmentKindByMstrEquipmentKindId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrEquipmentKindId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrEquipmentKindId'),
                ),
              ),
            ],
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
                          value: 'sharedDictionaryBySharedDictionaryNameId',
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
                          value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                  name: NameNode(value: 'updateAt'),
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
                  name: NameNode(value: 'updateUserId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateUserHistoryId'),
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
Query$EquipmentCategoryPageRfe _parserFn$Query$EquipmentCategoryPageRfe(
  Map<String, dynamic> data,
) => Query$EquipmentCategoryPageRfe.fromJson(data);
typedef OnQueryComplete$Query$EquipmentCategoryPageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentCategoryPageRfe?,
    );

class Options$Query$EquipmentCategoryPageRfe
    extends graphql.QueryOptions<Query$EquipmentCategoryPageRfe> {
  Options$Query$EquipmentCategoryPageRfe({
    String? operationName,
    required Variables$Query$EquipmentCategoryPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentCategoryPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentCategoryPageRfe? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null
                     ? null
                     : _parserFn$Query$EquipmentCategoryPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryEquipmentCategoryPageRfe,
         parserFn: _parserFn$Query$EquipmentCategoryPageRfe,
       );

  final OnQueryComplete$Query$EquipmentCategoryPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentCategoryPageRfe
    extends graphql.WatchQueryOptions<Query$EquipmentCategoryPageRfe> {
  WatchOptions$Query$EquipmentCategoryPageRfe({
    String? operationName,
    required Variables$Query$EquipmentCategoryPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentCategoryPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryEquipmentCategoryPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$EquipmentCategoryPageRfe,
       );
}

class FetchMoreOptions$Query$EquipmentCategoryPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentCategoryPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentCategoryPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryEquipmentCategoryPageRfe,
       );
}

extension ClientExtension$Query$EquipmentCategoryPageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$EquipmentCategoryPageRfe>>
  query$EquipmentCategoryPageRfe(
    Options$Query$EquipmentCategoryPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$EquipmentCategoryPageRfe>
  watchQuery$EquipmentCategoryPageRfe(
    WatchOptions$Query$EquipmentCategoryPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentCategoryPageRfe({
    required Query$EquipmentCategoryPageRfe data,
    required Variables$Query$EquipmentCategoryPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryEquipmentCategoryPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentCategoryPageRfe? readQuery$EquipmentCategoryPageRfe({
    required Variables$Query$EquipmentCategoryPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryEquipmentCategoryPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentCategoryPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$EquipmentCategoryPageRfe>
useQuery$EquipmentCategoryPageRfe(
  Options$Query$EquipmentCategoryPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$EquipmentCategoryPageRfe>
useWatchQuery$EquipmentCategoryPageRfe(
  WatchOptions$Query$EquipmentCategoryPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentCategoryPageRfe$Widget
    extends graphql_flutter.Query<Query$EquipmentCategoryPageRfe> {
  Query$EquipmentCategoryPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentCategoryPageRfe options,
    required graphql_flutter.QueryBuilder<Query$EquipmentCategoryPageRfe>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId({
    required this.mstrEquipmentKindId,
    required this.kindCode,
    this.labels,
    this.startAt,
    this.stopAt,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.$__typename = 'MstrEquipmentKind',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKindId = json['mstrEquipmentKindId'];
    final l$kindCode = json['kindCode'];
    final l$labels = json['labels'];
    final l$startAt = json['startAt'];
    final l$stopAt = json['stopAt'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
      mstrEquipmentKindId: (l$mstrEquipmentKindId as String),
      kindCode: (l$kindCode as String),
      labels: l$labels == null
          ? null
          : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentKindId;

  final String kindCode;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels?
  labels;

  final String? startAt;

  final String? stopAt;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

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
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
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
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentKindId,
      l$kindCode,
      l$labels,
      l$startAt,
      l$stopAt,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId ||
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
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
      return false;
    }
    final l$updateUserId = updateUserId;
    final lOther$updateUserId = other.updateUserId;
    if (l$updateUserId != lOther$updateUserId) {
      return false;
    }
    final l$updateUserHistoryId = updateUserHistoryId;
    final lOther$updateUserHistoryId = other.updateUserHistoryId;
    if (l$updateUserHistoryId != lOther$updateUserHistoryId) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId
    on Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId;

  TRes call({
    String? mstrEquipmentKindId,
    String? kindCode,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels?
    labels,
    String? startAt,
    String? stopAt,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId,
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
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
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
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels?),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      stopAt: stopAt == _undefined ? _instance.stopAt : (stopAt as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    String? kindCode,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels?
    labels,
    String? startAt,
    String? stopAt,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels.stub(
        _res,
      );
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels.fromJson(
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
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels
    on Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels,
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
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentCategoryPageRfe$mstrEquipmentKindByMstrEquipmentKindId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
