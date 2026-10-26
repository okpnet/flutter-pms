import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TaskPageRfe {
  factory Variables$Query$TaskPageRfe({
    required String mstrTaskId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$TaskPageRfe._({
    r'mstrTaskId': mstrTaskId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$TaskPageRfe._(this._$data);

  factory Variables$Query$TaskPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskId = data['mstrTaskId'];
    result$data['mstrTaskId'] = (l$mstrTaskId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$TaskPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskId => (_$data['mstrTaskId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    result$data['mstrTaskId'] = l$mstrTaskId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$TaskPageRfe<Variables$Query$TaskPageRfe>
  get copyWith => CopyWith$Variables$Query$TaskPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TaskPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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
    final l$mstrTaskId = mstrTaskId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrTaskId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$TaskPageRfe<TRes> {
  factory CopyWith$Variables$Query$TaskPageRfe(
    Variables$Query$TaskPageRfe instance,
    TRes Function(Variables$Query$TaskPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$TaskPageRfe;

  factory CopyWith$Variables$Query$TaskPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TaskPageRfe;

  TRes call({
    String? mstrTaskId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$TaskPageRfe<TRes>
    implements CopyWith$Variables$Query$TaskPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$TaskPageRfe(this._instance, this._then);

  final Variables$Query$TaskPageRfe _instance;

  final TRes Function(Variables$Query$TaskPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$TaskPageRfe._({
      ..._instance._$data,
      if (mstrTaskId != _undefined && mstrTaskId != null)
        'mstrTaskId': (mstrTaskId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TaskPageRfe<TRes>
    implements CopyWith$Variables$Query$TaskPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$TaskPageRfe(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$TaskPageRfe {
  Query$TaskPageRfe({this.mstrTaskByMstrTaskId, this.$__typename = 'Query'});

  factory Query$TaskPageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrTaskByMstrTaskId = json['mstrTaskByMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe(
      mstrTaskByMstrTaskId: l$mstrTaskByMstrTaskId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId.fromJson(
              (l$mstrTaskByMstrTaskId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskPageRfe$mstrTaskByMstrTaskId? mstrTaskByMstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskByMstrTaskId = mstrTaskByMstrTaskId;
    _resultData['mstrTaskByMstrTaskId'] = l$mstrTaskByMstrTaskId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskByMstrTaskId = mstrTaskByMstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskByMstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskByMstrTaskId = mstrTaskByMstrTaskId;
    final lOther$mstrTaskByMstrTaskId = other.mstrTaskByMstrTaskId;
    if (l$mstrTaskByMstrTaskId != lOther$mstrTaskByMstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRfe on Query$TaskPageRfe {
  CopyWith$Query$TaskPageRfe<Query$TaskPageRfe> get copyWith =>
      CopyWith$Query$TaskPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRfe<TRes> {
  factory CopyWith$Query$TaskPageRfe(
    Query$TaskPageRfe instance,
    TRes Function(Query$TaskPageRfe) then,
  ) = _CopyWithImpl$Query$TaskPageRfe;

  factory CopyWith$Query$TaskPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRfe;

  TRes call({
    Query$TaskPageRfe$mstrTaskByMstrTaskId? mstrTaskByMstrTaskId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes>
  get mstrTaskByMstrTaskId;
}

class _CopyWithImpl$Query$TaskPageRfe<TRes>
    implements CopyWith$Query$TaskPageRfe<TRes> {
  _CopyWithImpl$Query$TaskPageRfe(this._instance, this._then);

  final Query$TaskPageRfe _instance;

  final TRes Function(Query$TaskPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskByMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe(
      mstrTaskByMstrTaskId: mstrTaskByMstrTaskId == _undefined
          ? _instance.mstrTaskByMstrTaskId
          : (mstrTaskByMstrTaskId as Query$TaskPageRfe$mstrTaskByMstrTaskId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes>
  get mstrTaskByMstrTaskId {
    final local$mstrTaskByMstrTaskId = _instance.mstrTaskByMstrTaskId;
    return local$mstrTaskByMstrTaskId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId.stub(_then(_instance))
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId(
            local$mstrTaskByMstrTaskId,
            (e) => call(mstrTaskByMstrTaskId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe<TRes>
    implements CopyWith$Query$TaskPageRfe<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe(this._res);

  TRes _res;

  call({
    Query$TaskPageRfe$mstrTaskByMstrTaskId? mstrTaskByMstrTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes>
  get mstrTaskByMstrTaskId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId.stub(_res);
}

const documentNodeQueryTaskPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TaskPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskId')),
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
            name: NameNode(value: 'mstrTaskByMstrTaskId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrTaskId'),
                value: VariableNode(name: NameNode(value: 'mstrTaskId')),
              ),
            ],
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                              name: NameNode(value: 'sharedAppellationByNames'),
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                          value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                        name: NameNode(value: 'sharedTextValuesBySharedTextId'),
                        alias: NameNode(value: 'ja'),
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'condition'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                  value: VariableNode(
                                    name: NameNode(value: 'jaLanguageCodeId'),
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
                        name: NameNode(value: 'sharedTextValuesBySharedTextId'),
                        alias: NameNode(value: 'en'),
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'condition'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'sharedLanguageCodeId'),
                                  value: VariableNode(
                                    name: NameNode(value: 'enLanguageCodeId'),
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
                  name: NameNode(value: 'updateAt'),
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
Query$TaskPageRfe _parserFn$Query$TaskPageRfe(Map<String, dynamic> data) =>
    Query$TaskPageRfe.fromJson(data);
typedef OnQueryComplete$Query$TaskPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TaskPageRfe?,
);

class Options$Query$TaskPageRfe
    extends graphql.QueryOptions<Query$TaskPageRfe> {
  Options$Query$TaskPageRfe({
    String? operationName,
    required Variables$Query$TaskPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TaskPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$TaskPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryTaskPageRfe,
         parserFn: _parserFn$Query$TaskPageRfe,
       );

  final OnQueryComplete$Query$TaskPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TaskPageRfe
    extends graphql.WatchQueryOptions<Query$TaskPageRfe> {
  WatchOptions$Query$TaskPageRfe({
    String? operationName,
    required Variables$Query$TaskPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryTaskPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TaskPageRfe,
       );
}

class FetchMoreOptions$Query$TaskPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TaskPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TaskPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTaskPageRfe,
       );
}

extension ClientExtension$Query$TaskPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TaskPageRfe>> query$TaskPageRfe(
    Options$Query$TaskPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TaskPageRfe> watchQuery$TaskPageRfe(
    WatchOptions$Query$TaskPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$TaskPageRfe({
    required Query$TaskPageRfe data,
    required Variables$Query$TaskPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTaskPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TaskPageRfe? readQuery$TaskPageRfe({
    required Variables$Query$TaskPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTaskPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TaskPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TaskPageRfe> useQuery$TaskPageRfe(
  Options$Query$TaskPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TaskPageRfe> useWatchQuery$TaskPageRfe(
  WatchOptions$Query$TaskPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$TaskPageRfe$Widget
    extends graphql_flutter.Query<Query$TaskPageRfe> {
  Query$TaskPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$TaskPageRfe options,
    required graphql_flutter.QueryBuilder<Query$TaskPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId({
    required this.mstrTaskId,
    this.mstrTaskGroupId,
    this.groups,
    required this.code,
    this.labels,
    this.detailTexts,
    this.$class,
    this.defaultTime,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrTask',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId.fromJson(
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
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId(
      mstrTaskId: (l$mstrTaskId as String),
      mstrTaskGroupId: (l$mstrTaskGroupId as String?),
      groups: l$groups == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups.fromJson(
              (l$groups as Map<String, dynamic>),
            ),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final String? mstrTaskGroupId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups? groups;

  final String code;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels? labels;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts? detailTexts;

  final int? $class;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime? defaultTime;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

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
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
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
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
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
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$updateAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId ||
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
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId
    on Query$TaskPageRfe$mstrTaskByMstrTaskId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId;

  TRes call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups? groups,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels? labels,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts? detailTexts,
    int? $class,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime? defaultTime,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> get groups;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> get labels;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes>
  get detailTexts;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes>
  get defaultTime;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId) _then;

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
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      mstrTaskGroupId: mstrTaskGroupId == _undefined
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes>
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes>
  get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    String? mstrTaskGroupId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups? groups,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels? labels,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts? detailTexts,
    int? $class,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime? defaultTime,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> get groups =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups.stub(_res);

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> get labels =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels.stub(_res);

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes>
  get detailTexts =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts.stub(_res);

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes>
  get defaultTime =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime.stub(_res);
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups({
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

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups.fromJson(
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
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      details: (l$details as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels? labels;

  final String? details;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user? update_user;

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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$groups {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels? labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes>
  get labels;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups) _then;

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
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels?),
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
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups(this._res);

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels? labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes>
  get labels =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels.stub(_res);

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<TRes>
  get update_user =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels.fromJson(
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
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels
  >
  get copyWith => CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user({
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

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user.fromJson(
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
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name.fromJson(
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

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name? name;

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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user)
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<TRes>
  get name;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user)
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
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
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
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name?),
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

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<TRes>
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<TRes>
  get name =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name.fromJson(
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
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name,
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
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels.fromJson(
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
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$labels {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$labels) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes>
    implements CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels(this._res);

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts({
    required this.sharedTextId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedText',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      ja: Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja ja;

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en en;

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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts
  >
  get copyWith => CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja? ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en? en,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes> get ja;
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes> get en;
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja as Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en as Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes> get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes> get en {
    final local$en = _instance.en;
    return CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja? ja,
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en? en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes> get ja =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja.stub(_res);

  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes> get en =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en.stub(_res);
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?>
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja;

  TRes call({
    List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja(
    this._res,
  );

  TRes _res;

  call({
    List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes)
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?>
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en;

  TRes call({
    List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
          Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en(
    this._res,
  );

  TRes _res;

  call({
    List<Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes({
    this.textValue,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$textValue = json['textValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes)
    then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes;

  TRes call({String? textValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes _instance;

  final TRes Function(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
      textValue: textValue == _undefined
          ? _instance.textValue
          : (textValue as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$detailTexts$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? textValue, String? $__typename}) => _res;
}

class Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime {
  Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
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
    if (other is! Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime ||
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

extension UtilityExtension$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime
    on Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime {
  CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<
    Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime
  >
  get copyWith => CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<
  TRes
> {
  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
    Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime instance,
    TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime) then,
  ) = _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime;

  factory CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime;

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

class _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes> {
  _CopyWithImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
    this._instance,
    this._then,
  );

  final Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime _instance;

  final TRes Function(Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime) _then;

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
    Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
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

class _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes>
    implements
        CopyWith$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime<TRes> {
  _CopyWithStubImpl$Query$TaskPageRfe$mstrTaskByMstrTaskId$defaultTime(
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
