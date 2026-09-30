import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UnitPageRfe {
  factory Variables$Query$UnitPageRfe({
    required String sharedUnitId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$UnitPageRfe._({
    r'sharedUnitId': sharedUnitId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$UnitPageRfe._(this._$data);

  factory Variables$Query$UnitPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$sharedUnitId = data['sharedUnitId'];
    result$data['sharedUnitId'] = (l$sharedUnitId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$UnitPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedUnitId => (_$data['sharedUnitId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    result$data['sharedUnitId'] = l$sharedUnitId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$UnitPageRfe<Variables$Query$UnitPageRfe>
  get copyWith => CopyWith$Variables$Query$UnitPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UnitPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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
    final l$sharedUnitId = sharedUnitId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$sharedUnitId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$UnitPageRfe<TRes> {
  factory CopyWith$Variables$Query$UnitPageRfe(
    Variables$Query$UnitPageRfe instance,
    TRes Function(Variables$Query$UnitPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$UnitPageRfe;

  factory CopyWith$Variables$Query$UnitPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UnitPageRfe;

  TRes call({
    String? sharedUnitId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$UnitPageRfe<TRes>
    implements CopyWith$Variables$Query$UnitPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$UnitPageRfe(this._instance, this._then);

  final Variables$Query$UnitPageRfe _instance;

  final TRes Function(Variables$Query$UnitPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$UnitPageRfe._({
      ..._instance._$data,
      if (sharedUnitId != _undefined && sharedUnitId != null)
        'sharedUnitId': (sharedUnitId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$UnitPageRfe<TRes>
    implements CopyWith$Variables$Query$UnitPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$UnitPageRfe(this._res);

  TRes _res;

  call({
    String? sharedUnitId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$UnitPageRfe {
  Query$UnitPageRfe({
    this.sharedUnitBySharedUnitId,
    this.$__typename = 'Query',
  });

  factory Query$UnitPageRfe.fromJson(Map<String, dynamic> json) {
    final l$sharedUnitBySharedUnitId = json['sharedUnitBySharedUnitId'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe(
      sharedUnitBySharedUnitId: l$sharedUnitBySharedUnitId == null
          ? null
          : Query$UnitPageRfe$sharedUnitBySharedUnitId.fromJson(
              (l$sharedUnitBySharedUnitId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UnitPageRfe$sharedUnitBySharedUnitId? sharedUnitBySharedUnitId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    _resultData['sharedUnitBySharedUnitId'] = l$sharedUnitBySharedUnitId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedUnitBySharedUnitId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UnitPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    final lOther$sharedUnitBySharedUnitId = other.sharedUnitBySharedUnitId;
    if (l$sharedUnitBySharedUnitId != lOther$sharedUnitBySharedUnitId) {
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

extension UtilityExtension$Query$UnitPageRfe on Query$UnitPageRfe {
  CopyWith$Query$UnitPageRfe<Query$UnitPageRfe> get copyWith =>
      CopyWith$Query$UnitPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$UnitPageRfe<TRes> {
  factory CopyWith$Query$UnitPageRfe(
    Query$UnitPageRfe instance,
    TRes Function(Query$UnitPageRfe) then,
  ) = _CopyWithImpl$Query$UnitPageRfe;

  factory CopyWith$Query$UnitPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$UnitPageRfe;

  TRes call({
    Query$UnitPageRfe$sharedUnitBySharedUnitId? sharedUnitBySharedUnitId,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId;
}

class _CopyWithImpl$Query$UnitPageRfe<TRes>
    implements CopyWith$Query$UnitPageRfe<TRes> {
  _CopyWithImpl$Query$UnitPageRfe(this._instance, this._then);

  final Query$UnitPageRfe _instance;

  final TRes Function(Query$UnitPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitBySharedUnitId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe(
      sharedUnitBySharedUnitId: sharedUnitBySharedUnitId == _undefined
          ? _instance.sharedUnitBySharedUnitId
          : (sharedUnitBySharedUnitId
                as Query$UnitPageRfe$sharedUnitBySharedUnitId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId {
    final local$sharedUnitBySharedUnitId = _instance.sharedUnitBySharedUnitId;
    return local$sharedUnitBySharedUnitId == null
        ? CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId.stub(
            _then(_instance),
          )
        : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId(
            local$sharedUnitBySharedUnitId,
            (e) => call(sharedUnitBySharedUnitId: e),
          );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe<TRes>
    implements CopyWith$Query$UnitPageRfe<TRes> {
  _CopyWithStubImpl$Query$UnitPageRfe(this._res);

  TRes _res;

  call({
    Query$UnitPageRfe$sharedUnitBySharedUnitId? sharedUnitBySharedUnitId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId.stub(_res);
}

const documentNodeQueryUnitPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UnitPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedUnitId')),
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
            name: NameNode(value: 'sharedUnitBySharedUnitId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sharedUnitId'),
                value: VariableNode(name: NameNode(value: 'sharedUnitId')),
              ),
            ],
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
                  name: NameNode(value: 'description'),
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
Query$UnitPageRfe _parserFn$Query$UnitPageRfe(Map<String, dynamic> data) =>
    Query$UnitPageRfe.fromJson(data);
typedef OnQueryComplete$Query$UnitPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$UnitPageRfe?);

class Options$Query$UnitPageRfe
    extends graphql.QueryOptions<Query$UnitPageRfe> {
  Options$Query$UnitPageRfe({
    String? operationName,
    required Variables$Query$UnitPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UnitPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UnitPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$UnitPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryUnitPageRfe,
         parserFn: _parserFn$Query$UnitPageRfe,
       );

  final OnQueryComplete$Query$UnitPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$UnitPageRfe
    extends graphql.WatchQueryOptions<Query$UnitPageRfe> {
  WatchOptions$Query$UnitPageRfe({
    String? operationName,
    required Variables$Query$UnitPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UnitPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryUnitPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$UnitPageRfe,
       );
}

class FetchMoreOptions$Query$UnitPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UnitPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$UnitPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryUnitPageRfe,
       );
}

extension ClientExtension$Query$UnitPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UnitPageRfe>> query$UnitPageRfe(
    Options$Query$UnitPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$UnitPageRfe> watchQuery$UnitPageRfe(
    WatchOptions$Query$UnitPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$UnitPageRfe({
    required Query$UnitPageRfe data,
    required Variables$Query$UnitPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryUnitPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$UnitPageRfe? readQuery$UnitPageRfe({
    required Variables$Query$UnitPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUnitPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UnitPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UnitPageRfe> useQuery$UnitPageRfe(
  Options$Query$UnitPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$UnitPageRfe> useWatchQuery$UnitPageRfe(
  WatchOptions$Query$UnitPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$UnitPageRfe$Widget
    extends graphql_flutter.Query<Query$UnitPageRfe> {
  Query$UnitPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$UnitPageRfe options,
    required graphql_flutter.QueryBuilder<Query$UnitPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId {
  Query$UnitPageRfe$sharedUnitBySharedUnitId({
    required this.sharedUnitId,
    this.description,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$description = json['description'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId(
      sharedUnitId: (l$sharedUnitId as String),
      description: (l$description as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final String? description;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels? labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnitId = sharedUnitId;
    final l$description = description;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedUnitId,
      l$description,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$labels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UnitPageRfe$sharedUnitBySharedUnitId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId
    on Query$UnitPageRfe$sharedUnitBySharedUnitId {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<
    Query$UnitPageRfe$sharedUnitBySharedUnitId
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId(this, (i) => i);
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId(
    Query$UnitPageRfe$sharedUnitBySharedUnitId instance,
    TRes Function(Query$UnitPageRfe$sharedUnitBySharedUnitId) then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId.stub(TRes res) =
      _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId;

  TRes call({
    String? sharedUnitId,
    String? description,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes> get labels;
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes>
    implements CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes> {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId _instance;

  final TRes Function(Query$UnitPageRfe$sharedUnitBySharedUnitId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? description = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
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
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes>
    implements CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId<TRes> {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId(this._res);

  TRes _res;

  call({
    String? sharedUnitId,
    String? description,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes> get labels =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels.stub(_res);
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels.fromJson(
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
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels
    on Query$UnitPageRfe$sharedUnitBySharedUnitId$labels {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels
  >
  get copyWith => CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels instance,
    TRes Function(Query$UnitPageRfe$sharedUnitBySharedUnitId$labels) then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes> {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels _instance;

  final TRes Function(Query$UnitPageRfe$sharedUnitBySharedUnitId$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels<TRes> {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$UnitPageRfe$sharedUnitBySharedUnitId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
